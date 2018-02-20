using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EncryptionLib;
using System.IO;
using System.Xml;

public partial class Test : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        HttpCookie myCookie = Request.Cookies["testCookie"];
        if ((myCookie == null) || (myCookie["username"] == "") || (myCookie["email"] == ""))
        {
            cookieMsg.InnerText = "Hi, Please fill the details and click on submit!!!";
        }
        else
        {
            cookieMsg.InnerText = "Hi " + myCookie["username"] + "your email id is " + myCookie["email"];
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        hashed.InnerHtml = Class1.getHash(TextBox1.Text);
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        match.InnerText = Class1.matchPassword(TextBox2.Text, TextBox3.Text).ToString();
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        xmlContent.InnerText = insertXml(TextBox4.Text, TextBox5.Text);
    }
    public String insertXml(String username,String password)
    {
        string fLocation = Path.Combine(Request.PhysicalApplicationPath, @"App_Data\test.xml");
        XmlDocument reader = new XmlDocument();
        //FS = new FileStream(fLocation, FileMode.Open);
        reader.Load(fLocation);
        XmlElement logindetails = reader.CreateElement("logindetails");
        XmlElement usernameXml = reader.CreateElement("username");
        XmlElement passwordXml = reader.CreateElement("password");
        usernameXml.InnerText = username;
        passwordXml.InnerText = password;
        logindetails.AppendChild(usernameXml);
        logindetails.AppendChild(passwordXml);
        reader.DocumentElement.AppendChild(logindetails);
        reader.Save(fLocation);
        return (reader.InnerXml).ToString();
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        HttpCookie myCookie = new HttpCookie("testCookie");
        myCookie["username"] = TextBox6.Text;
        myCookie["email"] = TextBox7.Text;
        cookieMsg.InnerText = "Hi user, please close the browser by following the above steps";
        Response.Cookies.Add(myCookie);
        myCookie.Expires = DateTime.Now.AddMonths(6);
    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        throw new Exception("Global.asax error exception");
    }
}