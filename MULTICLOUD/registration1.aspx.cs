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
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["devi"].ToString());
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        var a = FileUpload1.PostedFile.FileName;
        FileUpload1.PostedFile.SaveAs(Server.MapPath("~") + "\\userfig\\" + a);
        con.Open();
        cmd = new SqlCommand("insert into user1_reg(gnme,snme,dob,gndr,nta,addr,eid,lid,pwd,cpwd,pto,hqns,hans,userkey)values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + RadioButtonList1.SelectedItem.ToString() + "','" + DropDownList1.SelectedItem.ToString() + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox10.Text + "','" + FileUpload1.PostedFile.FileName + "','" + DropDownList2.SelectedItem.ToString() + "','" + TextBox9.Text + "',0)");
        cmd.Connection = con;
        int x=cmd.ExecuteNonQuery();
        if (x > 0)
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