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
    int key;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["devi"].ToString());
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        cmd = new SqlCommand("select * from user1_reg where lid='"+TextBox1.Text+"'and pwd='"+TextBox2.Text+"'");
        cmd.Connection = con;
        dr = cmd.ExecuteReader();
        if (dr.Read())
        {
           
                Session["usr"] = TextBox1.Text;
                Response.Redirect("userhome.aspx");
            
        }
        else
        {
            Label1.Text="***No Data Found";
        }
        con.Close();
    }
}