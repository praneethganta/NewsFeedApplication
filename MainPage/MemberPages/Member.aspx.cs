using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.IO;
using System.Web.Security;

public partial class MemberPages_Member : System.Web.UI.Page
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
        String paragraph = "";
        WebRequest request = WebRequest.Create("http://webstrar4.fulton.asu.edu/page0/Service1.svc/getBusiness?magType=" + DropDownList5.SelectedValue + "&countType=" + DropDownList4.SelectedValue);
        request.Method = "GET";
        WebResponse response = request.GetResponse();
        Stream dataStream = response.GetResponseStream();
        StreamReader reader = new StreamReader(dataStream);
        string responseFromServer = reader.ReadToEnd();
        if (!responseFromServer.Equals("No Results found!!"))
        {
            string[] stringSeparators1 = new string[] { ";;" };
            string[] stringSeparators2 = new string[] { "&$" };
            String[] linkingVectors = responseFromServer.Split(stringSeparators1, StringSplitOptions.None);
            for (int i = 0; i < linkingVectors.Length; i++)
            {
                String[] details = linkingVectors[i].Split(stringSeparators2, StringSplitOptions.None);
                paragraph += "<a href=" + details[1] + ">" + details[0] + "</a> <br> Publisher: " + details[2]
                    + "<br>Hostname: " + details[3] + "<br>";
            }
        }
        else
        {
            paragraph = responseFromServer;
        }
        links.InnerHtml = paragraph;
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        WebRequest request = WebRequest.Create("http://webstrar4.fulton.asu.edu/Service1.svc/movieDetails?title=" + TextBox5.Text + "&year=" + TextBox6.Text + "&plotType=" + TextBox7.Text);
        request.Method = "GET";
        WebResponse response = request.GetResponse();
        Stream dataStream = response.GetResponseStream();
        // Open the stream using a StreamReader for easy access.
        StreamReader reader = new StreamReader(dataStream);
        // Read the content.
        string responseFromServer = reader.ReadToEnd();
        if (responseFromServer.Contains("Error"))
        {
            TextBox8.Text = responseFromServer;
        }
        else
        {
            String[] details = responseFromServer.Split(';');
            TextBox8.Text = "Title: " + details[0] + "\nRelease Date: " + details[2] +
                "\nGenre: " + details[1] + "\nRating: " + details[3];
        }
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        HttpCookie myCookies = Request.Cookies["loginCookie"];
        myCookies["username"] = "";
        Session["role"] = null;
        FormsAuthentication.SignOut();
        Response.Redirect("~/Default.aspx");
    }
}