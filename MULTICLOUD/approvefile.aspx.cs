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
        
        if (Request.QueryString["t"]!=null)
        {
            int t = Convert.ToInt32(Request.QueryString["t"].ToString());
            int did = Convert.ToInt32(Request.QueryString["did"].ToString());
            Random rnd = new Random();
            int secretkey = rnd.Next(111111, 999999);
            Response.Write(secretkey);
            con.Open();
            cmd = new SqlCommand("update cloud_data set vappr='Yes',vid="+secretkey+" where id=" + did, con);
            int up = cmd.ExecuteNonQuery();
            if (up > 0)
            {
                Response.Redirect("approvefile.aspx");
            }        
            con.Close();
        }
    }
}