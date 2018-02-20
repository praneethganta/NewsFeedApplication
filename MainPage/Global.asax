<%@ Application Description="This displays the application entering and exit time to the user" Language="C#" %>
<%@ Import Namespace="System.Diagnostics" %>

<script Language="C#" runat="server">

    void Application_Start(object sender, EventArgs e)
    {
        // System.Diagnostics.Trace.Listeners.Clear();
       /* Debug.Write("Hi");
        Debug.Fail("Welcome!!! Application entry time:"+ DateTime.Now.ToString()+",This dialog is generated"+
           " by Global.asax file. PLease press ignore or retry button to go to the home page.\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n");
        // Response.Write("Page viewed");
        // Response.End();
        Page page = new Page();
        if (page is Page)
        {
            page.ClientScript.RegisterStartupScript(this.GetType(), "Alert","alert('error');",true);
        }*/
    }

    void Application_End(object sender, EventArgs e)
    {
        Response.Write("<hr />This page was last accessed at" + DateTime.Now.ToString());
    }
    void Application_Error(object sender, EventArgs e)
    {
        // Code that runs when an unhandled error occurs
        Server.ClearError();

        // Possible that a partially rendered page has already been written to response buffer before encountering error, so clear it.
        Response.Clear();

        // Finally redirect, transfer, or render a error view
        Response.Redirect("~/Error.aspx");


    }

</script>
