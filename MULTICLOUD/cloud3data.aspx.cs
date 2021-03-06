﻿using System;
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
    Cryptography cr = new Cryptography();
    protected void Page_Load(object sender, EventArgs e)
    {        
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["devi"].ToString());
        
        if (Request.QueryString["did"] != null)
        {
            int did = Convert.ToInt32(Request.QueryString["did"].ToString());
            Label2.Text = did.ToString();
            con.Open();
            cmd = new SqlCommand("select * from cloud_data where id=" + did);
            cmd.Connection = con;
            dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                Label1.Text = dr[2].ToString();
                TextBox1.Text = dr[7].ToString();
            }
            con.Close();
            
        }
    }

    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {
        string dd = cr.Decrypt(TextBox1.Text, "iddpdp");
        TextBox1.Text = dd;
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        con.Open();
        int data_id = Convert.ToInt32(Label2.Text);
        cmd = new SqlCommand("update cloud_data set s3appr='Yes' where id="+data_id,con);
        int up = cmd.ExecuteNonQuery();
        if (up > 0)
        {
            Response.Redirect("cloud3.aspx");
        }        
        con.Close();
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        con.Open();
        int data_id = Convert.ToInt32(Label2.Text);
        cmd = new SqlCommand("update cloud_data set s3appr='Rejected' where id=" + data_id, con);
        int up = cmd.ExecuteNonQuery();
        if (up > 0)
        {
            Response.Redirect("cloud3.aspx");
        }
        con.Close();
    }
}