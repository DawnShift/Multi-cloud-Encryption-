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
        else
        {
            Response.Write("no data found");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        TextBox2.Text = TextBox1.Text;
        var FileName = FileUpload1.PostedFile.FileName;
        FileUpload1.PostedFile.SaveAs(Server.MapPath("~") + "\\temp_file\\" + FileName);
        FileStream fr = new FileStream(Server.MapPath("~") + "\\temp_file\\" + FileName,FileMode.Open);
        StreamReader sr = new StreamReader(fr);
        TextBox7.Text = sr.ReadToEnd();
        sr.Close();
        fr.Close();
        Panel1.Visible = false;
        Panel2.Visible = true;
                 

    }
    protected void CheckBox2_CheckedChanged(object sender, EventArgs e)
    {
        string ed=cr.Encrypt(TextBox3.Text,"iddpdp");
        TextBox3.Text=ed;
        CheckBox2.Visible = false;
        CheckBox6.Visible = true;
    }
protected void  CheckBox3_CheckedChanged(object sender, EventArgs e)
{
    string ed=cr.Encrypt(TextBox4.Text,"iddpdp");
    TextBox4.Text = ed; 
    CheckBox3.Visible = false;
    CheckBox7.Visible = true;
}
protected void  CheckBox4_CheckedChanged(object sender, EventArgs e)
{
    string ed=cr.Encrypt(TextBox5.Text,"iddpdp");
        TextBox5.Text=ed;
        CheckBox4.Visible = false;
        CheckBox8.Visible = true;
}
protected void  CheckBox5_CheckedChanged(object sender, EventArgs e)
{
    string ed=cr.Encrypt(TextBox6.Text,"iddpdp");
        TextBox6.Text=ed;
        CheckBox5.Visible = false;
        CheckBox9.Visible = true;
}
protected void CheckBox6_CheckedChanged(object sender, EventArgs e)
{
    string dd = cr.Decrypt(TextBox3.Text, "iddpdp");
    TextBox3.Text = dd;
    CheckBox6.Visible = false;
    CheckBox2.Visible = true;
    }
protected void CheckBox7_CheckedChanged(object sender, EventArgs e)
{
    string dd = cr.Decrypt(TextBox4.Text,"iddpdp");
    TextBox4.Text = dd;
    CheckBox7.Visible = false;
    CheckBox3.Visible = true;
}
protected void CheckBox8_CheckedChanged(object sender, EventArgs e)
{
    string dd = cr.Decrypt(TextBox5.Text,"iddpdp");
    TextBox5.Text = dd;
    CheckBox8.Visible = false;
    CheckBox4.Visible = true;
}
protected void CheckBox9_CheckedChanged(object sender, EventArgs e)
{
    string dd = cr.Decrypt(TextBox6.Text,"iddpdp");
    TextBox6.Text = dd;
    CheckBox9.Visible = false;
    CheckBox5.Visible = true;
}
protected void Button2_Click(object sender, EventArgs e)
{
    con = new SqlConnection(ConfigurationManager.ConnectionStrings["devi"].ToString());
    con.Open();
    cmd = new SqlCommand("insert into cloud_data(uid,title,s1,s1appr,s2,s2appr,s3,s3appr,s4,s4appr,vappr,vid)values('" +Session["usr"].ToString()+ "','"+TextBox1.Text+"','" + TextBox3.Text + "','No','" +TextBox4.Text+"','No','"+TextBox5.Text+"','No','"+TextBox6.Text+"','No','No','No')");
    cmd.Connection = con;
    int y = cmd.ExecuteNonQuery();
    if (y > 0)
    {
        Response.Write("Success");
    }
    else
    {
        Response.Write("fail");
    }
    con.Close();
}
}