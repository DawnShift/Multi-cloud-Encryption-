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

    int temp;
    int uid;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["devi"].ToString());
       
        
        
        if (Request.QueryString["t"] != null)
        {
            temp = Convert.ToInt16(Request.QueryString["t"].ToString());
            uid = Convert.ToInt16(Request.QueryString["id"].ToString());
            
            if (temp == 1)
            {
                con.Open();
                cmd = new SqlCommand("update user1_reg set userkey='1' where id='"+uid+"'",con);
                cmd.ExecuteNonQuery();
                con.Close();
            }
            if (temp == 2)
            {
                con.Open();
                cmd = new SqlCommand("update user1_reg set userkey='2' where id='" + uid + "'", con);
                cmd.ExecuteNonQuery();
                con.Close();
            }
        }
        
        
    }
   
}