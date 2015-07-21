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
        }
        con.Close();
        con.Open();
        cmd = new SqlCommand("select * from cloud_data where uid='"+Session["usr"].ToString()+"' order by id desc");
        cmd.Connection = con;
        dr = cmd.ExecuteReader();
        int i = 1;
        
            Label2.Text = "<table><tr><th>No</th><th width=250>File Title</th><th>More</th></tr>";

            while (dr.Read())
            {
                Label2.Text += "<tr><td>" + i + "</td><td><b>" + dr[2].ToString() + "</b></td><td><a href=user_viewfile.aspx?fid=" + dr[0].ToString() + ">View File</a></td></tr>";
                i++;
            }
            Label2.Text += "</table>";
        
        con.Close();
    }
}