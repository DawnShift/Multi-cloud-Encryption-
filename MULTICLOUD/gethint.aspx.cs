using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;


public partial class gethint : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["devi"].ToString());
        
        if (Request.QueryString["q"] != null)
        {
            string fn = Request.QueryString["q"].ToString();
            
            con.Open();

            cmd = new SqlCommand("select * from cloud_data where title like '%" + fn + "%' and s1appr='Yes' and s2appr='Yes' and s3appr='Yes' and s4appr='Yes'");
            cmd.Connection = con;
            dr = cmd.ExecuteReader();
            int i = 1;

            Response.Write("<table><tr><th>No</th><th width=250>File Title</th><th>Uploaded By</th><th>More</th></tr>");
            while (dr.Read())
            {

                Response.Write("<tr><td>" + i + "</td><td><b>" + dr[2].ToString() + "</b></td><td>" + dr[1].ToString() + "</td><td><a href=user_viewfile.aspx?fid=" + dr[0].ToString() + ">View File</a></td></tr>");
                i++;
            }
            Response.Write("</table>");


            con.Close();
        }
    }
}