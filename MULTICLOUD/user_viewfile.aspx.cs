using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;


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
        }
        con.Close();
        con.Open();
        string fid = Request.QueryString["fid"].ToString();
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
        }
        con.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
                 

    }

protected void CheckBox6_CheckedChanged(object sender, EventArgs e)
{
    string dd = cr.Decrypt(TextBox3.Text, "iddpdp");
    TextBox3.Text = dd;
    CheckBox6.Visible = false;
    
    }
protected void CheckBox7_CheckedChanged(object sender, EventArgs e)
{
    string dd = cr.Decrypt(TextBox4.Text,"iddpdp");
    TextBox4.Text = dd;
    CheckBox7.Visible = false;
    
}
protected void CheckBox8_CheckedChanged(object sender, EventArgs e)
{
    string dd = cr.Decrypt(TextBox5.Text,"iddpdp");
    TextBox5.Text = dd;
    CheckBox8.Visible = false;
    
}
protected void CheckBox9_CheckedChanged(object sender, EventArgs e)
{
    string dd = cr.Decrypt(TextBox6.Text,"iddpdp");
    TextBox6.Text = dd;
    CheckBox9.Visible = false;
    
}
protected void Button2_Click(object sender, EventArgs e)
{
    string a = TextBox3.Text;
    string b = TextBox4.Text;
    string c = TextBox5.Text;
    string d = TextBox6.Text;
    string tot = a + "" + b + "" + c + "" + d;
    TextBox7.Text = tot;
    
}
protected void CheckBox10_CheckedChanged(object sender, EventArgs e)
{
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
}