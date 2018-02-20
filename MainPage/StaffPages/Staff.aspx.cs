using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class StaffPages_Staff : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        HttpCookie myCookies = Request.Cookies["loginCookie"];
        if ((myCookies == null) || (myCookies["username"] == ""))
        {
            username.InnerText = "Welcome, new user";
        }
        else
        {
           username.InnerText = "Welcome " + myCookies["username"] + ",";
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        String[] forecastArray;
        TextBox2.Text = "";
        ServiceReference1.Service1Client weatherClient = new ServiceReference1.Service1Client();
        forecastArray = weatherClient.getForeCastService(TextBox1.Text);
        if (forecastArray != null)
        {
            TextBox2.Text = string.Join("\n", forecastArray);
        }
        else
        {
            TextBox2.Text = "Invalid Input or no Forecast Available";
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        ServiceReference2.Service1Client weatherClient = new ServiceReference2.Service1Client();
        TextBox4.Text = weatherClient.removeStopWordsService(TextBox3.Text);
    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }

    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        HttpCookie myCookies = Request.Cookies["loginCookie"];
        myCookies["username"] = "";
        Session["role"] = null;
        FormsAuthentication.SignOut();
        Server.Transfer("~/Default.aspx");
    }
}