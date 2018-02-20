using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using EncryptionLib;
using System.Xml;
using System.IO;

public partial class Login : System.Web.UI.Page
{
    private XmlNodeList userDetails;

    protected void Page_Load(object sender, EventArgs e)
    {
        String roleUrl = Request.QueryString["ReturnUrl"];
        if(roleUrl != null)
        {
            if (roleUrl.Contains("Member"))
            {
                header.InnerHtml = "Welcome Member. Please login with member credentials. In order to register please <a href=\"http://localhost:51859/SignUp.aspx\">click here</a>";
            }
            else
            {
                header.InnerText = "Welcome Staff. Please login with your staff credentials";
            }
        }
        else
        {
            Response.Redirect("~/Default.aspx");
        }
        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        HttpCookie myCookie = new HttpCookie("loginCookie");
        if (myAuthenticate(TextBox1.Text,TextBox2.Text))
        {
            myCookie["username"] = TextBox1.Text;
            Response.Cookies.Add(myCookie);
            myCookie.Expires = DateTime.Now.AddMonths(6);
            FormsAuthentication.SetAuthCookie(TextBox1.Text, CheckBox1.Checked);
            FormsAuthentication.RedirectFromLoginPage(TextBox1.Text, CheckBox1.Checked);
        }
            
        else
            error.InnerText = "Invalid username or password!!!";
    }
    public Boolean myAuthenticate(String username, String Password)
    {
        String fLocation = "";
        String roleUrl = Request.QueryString["ReturnUrl"];
        if(roleUrl.Contains("Staff"))
        {
                Session.Remove("role");
                Session["role"] = "staff";
            fLocation = Path.Combine(Request.PhysicalApplicationPath, @"App_Data\StaffDetails.xml");
        }
        else
        {
                Session.Remove("role");
                Session["role"] = "member";
            fLocation = Path.Combine(Request.PhysicalApplicationPath, @"App_Data\MemberDetails.xml");
        }
        FileStream FS = null;
        if (File.Exists(fLocation))
        {
            try
            {
                FS = new FileStream(fLocation, FileMode.Open);
                XmlDocument xd = new XmlDocument();
                xd.Load(FS);
                XmlNodeList userdetails = xd.GetElementsByTagName("logindetails");
                foreach (XmlNode user in userdetails)
                {
                    if (user.HasChildNodes)
                    {
                        XmlNodeList users = user.ChildNodes;
                        String usernameStored = users.Item(0).InnerText.Replace("\r\n", "");
                        String PasswordStored = users.Item(1).InnerText.Replace("\r\n", "");
                        if (username.Equals(usernameStored.Trim()))
                        {
                            if (Class1.matchPassword(Password, PasswordStored.Trim()))
                            {
                                FS.Close();
                                return true;
                            }
                        }
                    }
                }
            }
            finally
            {
                FS.Close();
            }
           
        }
        return false;
}

protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {

    }
}