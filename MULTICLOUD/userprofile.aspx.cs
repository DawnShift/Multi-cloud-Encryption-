using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;


public partial class index : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    SqlDataReader dr;
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
            Label2.Text = "<h2>"+dr[1].ToString() + "'s Profile</h2>";
            Label3.Text = dr[8].ToString();
            Label4.Text = dr[6].ToString();
            Label5.Text = dr[10].ToString();
            Label6.Text = dr[7].ToString();
            Label7.Text = dr[3].ToString();
        }        
        con.Close();
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Panel1.Visible = false;
        Panel2.Visible = true;
        con.Open();
        cmd = new SqlCommand("select * from user1_reg where lid='" + Session["usr"].ToString() + "'");
        cmd.Connection = con;
        dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            TextBox1.Text = dr[8].ToString();
            TextBox2.Text = dr[6].ToString();
            TextBox3.Text = dr[10].ToString();
            TextBox4.Text = dr[7].ToString();

        }
        con.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        cmd = new SqlCommand("update user1_reg set addr='"+TextBox2.Text+"',cpwd='"+TextBox3.Text+"',eid='"+TextBox4.Text+"'where lid='"+TextBox1.Text+"'");
        cmd.Connection = con;
        cmd.ExecuteNonQuery();
        con.Close();
    }
}