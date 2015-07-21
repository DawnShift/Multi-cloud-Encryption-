using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;
using System.Net;
using System.Net.Mail;

public partial class index : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    SqlDataReader dr;
    Cryptography cr=new Cryptography();
    string f_key,to_user,to_email,to_title;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["devi"].ToString());
        con.Open();
        cmd = new SqlCommand("select * from user1_reg where lid='" + Session["usr"].ToString() + "'");
        cmd.Connection = con;
        dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            Label1.Text = "<img src='userfig/"+dr[11].ToString()+"' width='100' height='150' /><br />Welcome " + dr[1].ToString();
        }
        else
        {
            Response.Write("no data found");
        }
        con.Close();

        
        if (Request.QueryString["t"] != null)
        {
            string t = Request.QueryString["t"].ToString();
            string id = Request.QueryString["id"].ToString();
            string fid = Request.QueryString["fid"].ToString();
            if (t == "1")
            {
                con.Open();
                cmd = new SqlCommand("select vid from cloud_data where id='"+fid+"'",con);
                dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    f_key = dr[0].ToString();
                }
                con.Close();
                con.Open();
                cmd = new SqlCommand("select * from usr_req where id='"+id+"'",con);
                dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    to_user = dr[2].ToString();
                    to_email = dr[1].ToString();
                    to_title = dr[5].ToString();
                    // Send Email

                    MailMessage msg = new MailMessage();
                    msg.From = new MailAddress("jitsproject@gmail.com", "Cloud");
                    msg.To.Add(to_email);
                    msg.Subject = "Owner Key";
                    msg.Body = "Hi "+to_user+", The owner key for the requested message<b> "+to_title+"</b> is<b><font color='green'> " + f_key + "</font></b> <b>";

                    msg.IsBodyHtml = true;
                    SmtpClient sc = new SmtpClient();
                    sc.Host = "smtp.gmail.com";
                    sc.Port = 587;
                    sc.Credentials = new NetworkCredential("jitsproject@gmail.com", "asd123...");
                    sc.EnableSsl = true;
                    sc.Send(msg);

                }
                con.Close();
                con.Open();
                cmd = new SqlCommand("update usr_req set req_st=1 where id='"+id+"'",con);
                int up = cmd.ExecuteNonQuery();
                con.Close();
            }
            if (t == "2")
            {
                con.Open();
                cmd = new SqlCommand("update  usr_req set req_st=2 where id='" + id + "'", con);
                cmd.ExecuteNonQuery();
                con.Close();
            }
        }
        

        con.Open();
        cmd = new SqlCommand("select * from usr_req where req_to='"+Session["usr"]+"' and req_st='0'",con);
        dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            Label2.Text = "<table><tr><td>No</td><td>Request From</td><from Email</td><td>Reqiest For</td><td>More</td></tr>";
            int i = 1;
            while (dr.Read())
            {
                Label2.Text += "<tr><td>" + i + "</td><td>" + dr[2] + "</td><td>" + dr[5] + "</td><td><a href='usr_req.aspx?id=" + dr[0] + "&fid=" + dr[4] + "&t=1'>Approve</a> |<a href='usr_req.aspx?id=" + dr[0] + "&fid=" + dr[4] + "&t=2'> Deny</a></td></tr>";
                i++;
            }
            Label2.Text += "</table>";
        }
        else
        {
            Label2.Text = "No User Request";
        }
        con.Close();
    }
   
}