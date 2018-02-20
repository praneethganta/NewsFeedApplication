using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
      
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx?ReturnURL=StaffPages/Staff.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login.aspx?ReturnURL=MemberPages/Member.aspx");
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("SignUp.aspx");
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
            if (Session["role"] != null)
            {
                String sessionValue = Session["role"].ToString();
                if (sessionValue.Equals("staff"))
                {
                    Response.Redirect("StaffPages/Staff.aspx");

                }
                else
                {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "redirect","alert('Already logged in as member please logout and Sign in again!!'); window.location='" +
Request.ApplicationPath + "MemberPages/Member.aspx';", true);
                //  Response.Write("Already Logged in as a Member");
                // string script = "<script type=\"text/javascript\">alert('abc');</script>";
                //ClientScript.RegisterClientScriptBlock(this.GetType(), "Alert", script);
                //Response.Redirect("MemberPages/Member.aspx");
            }
            }
            else
            {
                Response.Redirect("StaffPages/Staff.aspx");
            }
        
    }


    protected void Button5_Click(object sender, EventArgs e)
    {
            if (Session["role"] != null)
            {
                String sessionValue = Session["role"].ToString();
                if (sessionValue.Equals("member"))
                {
                Response.Redirect("MemberPages/Member.aspx");
                }
                else
                {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect", "alert('Already logged in as Staff please logout and Sign in again!!'); window.location='" +
 Request.ApplicationPath + "StaffPages/Staff.aspx';", true);
            }
            }
            else
            {
                Response.Redirect("MemberPages/Member.aspx");
            }
       
    }
}