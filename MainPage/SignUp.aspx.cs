using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using EncryptionLib;
public partial class SignUp : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if(TextBox3.Text.Equals(TextBox4.Text))
        {
            updateXml(TextBox1.Text, TextBox3.Text);
            Response.Redirect("Login.aspx?ReturnURL=MemberPages/Member.aspx");
        }
        else
        {
            error.InnerText = "Password and confirm password doesn't match";
        }
        
    }
    public void updateXml(String username, String password)
    {
        try
        {
            string fLocation = Path.Combine(Request.PhysicalApplicationPath, @"App_Data\MemberDetails.xml");
            XmlDocument reader = new XmlDocument();
            //FS = new FileStream(fLocation, FileMode.Open);
            reader.Load(fLocation);
            XmlElement logindetails = reader.CreateElement("logindetails");
            XmlElement usernameXml = reader.CreateElement("username");
            XmlElement passwordXml = reader.CreateElement("password");
            usernameXml.InnerText = username;
            passwordXml.InnerText = Class1.getHash(password);
            logindetails.AppendChild(usernameXml);
            logindetails.AppendChild(passwordXml);
            reader.DocumentElement.AppendChild(logindetails);
            reader.Save(fLocation);
        }
        finally
        {
        }  
        
    }
}