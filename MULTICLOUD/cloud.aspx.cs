using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string x = TextBox1.Text;
        string y = TextBox2.Text;
        string z = DropDownList1.Text;
        if (x == "cloud" && y == "cloud" && z == "cloud1")
        {
            Response.Redirect("cloud1.aspx");
        }
        else if (x == "cloud" && y == "cloud" && z == "cloud2")
        {
            Response.Redirect("cloud2.aspx");
        }
        else if (x == "cloud" && y == "cloud" && z == "cloud3")
        {
            Response.Redirect("cloud3.aspx");
        }
        else if (x == "cloud" && y == "cloud" && z == "cloud4")
        {
            Response.Redirect("cloud4.aspx");
        }

    }
}