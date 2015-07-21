using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
using System.Net;
using System.Net.Mail;


public partial class index : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    SqlDataReader dr;
    Cryptography cr=new Cryptography();
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
            Label9.Text = dr[7].ToString();
            Label12.Text=dr[1].ToString();
        }
        con.Close();
        con.Open();
        string fid = Request.QueryString["fid"].ToString();
        Label5.Text = fid.ToString();
        cmd = new SqlCommand("select * from cloud_data where id='"+fid+"'");
        cmd.Connection = con;
        dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            Label3.Text = dr[2].ToString();
            TextBox3.Text = dr[3].ToString();
            TextBox4.Text = dr[5].ToString();
            TextBox5.Text = dr[7].ToString();
            TextBox6.Text = dr[9].ToString();
            Label6.Text = dr[11].ToString();
            Label8.Text = dr[12].ToString();
            Label11.Text = dr[1].ToString();
        }
        con.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
                 

    }


protected void Button2_Click(object sender, EventArgs e)
{
    if (Label6.Text == "No")
    {
        Label7.Text = "<font color='red'>This file is Not yet Verified...</font>";
    }
    else
    {
        TextBox7.Visible = true;
        CheckBox10.Visible = true;
        string a = TextBox3.Text;
        string b = TextBox4.Text;
        string c = TextBox5.Text;
        string d = TextBox6.Text;
        string tot = a + "" + b + "" + c + "" + d;
        TextBox7.Text = tot;
    }
    
}
protected void CheckBox10_CheckedChanged(object sender, EventArgs e)
{
    if (CheckBox10.Checked)
    {
        Label4.Visible = true;
        TextBox9.Visible = true;
        Button3.Visible = true;
    }
    else
    {
        Label4.Visible = false;
        TextBox9.Visible = false;
        Button3.Visible = false;
        
    }
    Label8.Visible = true;
    // Mail Sending
/*
    MailMessage msg = new MailMessage();
    msg.From = new MailAddress("jitsproject@gmail.com", "Cloud");
    msg.To.Add(Label9.Text);
    msg.Subject = "Owner Key";
    msg.Body = "The owner key for the message is "+Label8.Text+" <b>";

    msg.IsBodyHtml = true;
    SmtpClient sc = new SmtpClient();
    sc.Host = "smtp.gmail.com";
    sc.Port = 587;
    sc.Credentials = new NetworkCredential("jitsproject@gmail.com", "asd123...");
    sc.EnableSsl = true;
    sc.Send(msg);
*/
    
}
protected void Button3_Click(object sender, EventArgs e)
{
    int sk = Convert.ToInt32(TextBox9.Text);
    int rk = Convert.ToInt32(Label8.Text);
    int fid = Convert.ToInt32(Label5.Text);
            if (rk == sk)
        {
            TextBox8.Visible = true;
            string x = TextBox3.Text;
            string x1 = cr.Decrypt(x, "iddpdp");
            string y = TextBox4.Text;
            string y1 = cr.Decrypt(y, "iddpdp");
            string z = TextBox5.Text;
            string z1 = cr.Decrypt(z, "iddpdp");
            string w = TextBox6.Text;
            string w1 = cr.Decrypt(w, "iddpdp");
            TextBox8.Text = x1 + "" + y1 + "" + z1 + "" + w1;
        }
        else
        {
            Response.Write("Key Error");
        }
   

}

protected void Button5_Click1(object sender, EventArgs e)
{
    con.Open();
    cmd = new SqlCommand("insert into file_req(usr,title,emid,rname)values('" + Label11.Text + "','" + Label3.Text + "','" + Label9.Text + "','"+Label12.Text+"')");
    cmd.Connection = con;
    cmd.ExecuteNonQuery();
    con.Close();
}
}