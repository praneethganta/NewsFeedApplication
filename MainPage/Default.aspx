<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" MaintainScrollPositionOnPostback ="true" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" style="background-color: #cce0ff;">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            width: 37%;
        }
        .auto-style3 {
            width: 97px;
        }
        .auto-style4 {
            width: 88px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <h2 class="auto-style1"> Feed Application</h2></div>
        <table class="auto-style2">
            <tr>
                <td class="auto-style3">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Staff Login" />
                </td>
                <td class="auto-style4">
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Member Login" />
                </td>
                <td>
                    <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Member Signup" Width="194px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Staff Page" />
                </td>
                <td class="auto-style4">
                    <asp:Button ID="Button5" runat="server" Text="Member Page" OnClick="Button5_Click" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
        <br />
        <br /><br /><br />
        <table class="auto-style1" border="1">
            <tr>
                <td><b>Provider</b></td>
                <td><b>Service name, with input and output</b></td>
                <td><b>Try It Link</b></td>
                <td><b>Service Description</b></td>
                <td style="font-weight: 700">Component Type</td>
            </tr>
            <tr>
                <td>Team</td>
                <td>Weather Service<br />
<b>Input:</b> U.S. zipcode(String)<br />
<b>Output:</b> An array (or list) of strings, <br /> 5-day weather forecast for the given zipcode location
</td>
                <td><a href="http://localhost:51859/Login.aspx?ReturnURL=StaffPages/Staff.aspx">Try It</a></td>
                <td>This service has one functionality i.e, to provide user the 5 day forecast<br /> 
based on the users entry(zipcode)<br />
                    Available in Staff Home page - Login required(TA credentials inside the assignment document to be used)</td>
                <td>Web service</td>
            </tr>
            <tr>
                <td>Team</td>
                <td>Business Service<br />
<b>Input:</b> Magazine name(String) and length of records(String)<br />

<b>Output:</b> Array of strings containing the requested news
</td>
                <td><a href="http://localhost:51859/Login.aspx?ReturnURL=MemberPages/Member.aspx">Try It</a></td>
                <td>Based on the magazine/publisher name selected by the user along with <br />
                 number of inputs he/she wants to views news is displayed with the link<br />
                 of actual website for full article. Internet Connection is mandatory <br />
                 for the hyperlinks to work<br />
                    Available in Member page - Login required( Tester should sign up witgh member registration page and then login)</td>
                <td>Web&nbsp; service </td>
            </tr>
            <tr>
                <td>Team</td>
                <td>Word Filter<br />
<b>Input:</b> A string.<br />
<b>Output:</b> A string with the stop words removed
</td>
                <td><a href="http://localhost:51859/Login.aspx?ReturnURL=StaffPages/Staff.aspx">Try It</a></td>
                <td>This service has one functionality i.e, to provide user the stop words removed text<br />
based on the users input<br />
                    Available in Staff Home page - Login required(TA credentials inside the assignment document to be used)</td>
                <td>Web service</td>
            </tr>
            <tr>
                <td>Team</td>
                <td>Entertainment Service<br />
                    <b>Input:</b> Title(String), Release year(String),<br />
Plot type(String)<br />

                    <b>Output:</b> Details of the Movie
</td>
                <td><a href="http://localhost:51859/Login.aspx?ReturnURL=MemberPages/Member.aspx">Try It</a></td>
                <td>Based on the movie title few details like genre, <br /> date and IMDB rating are provided. 
                <br />Internet Connection is mandatory or else the API will throw an error<br />
                    Available in Member page - Login required( Tester should sign up witgh member registration page and then login)</td>
                <td>Web service </td>
            </tr>


            <tr>
                <td>Team</td>
                <td>Encryption and Password Match DLL<br />
                    <b>Input1:</b> String password<br />
                    <strong>Output1: </strong>String Hash Password<br />
                    <strong>Input2:</strong> String raw password, String hashed password<br />
                    <strong>Output2:</strong> Boolean - match or mismatch</td>
                <td><a href="http://localhost:51859/Test.aspx">Try It</a></td>
                <td>This DLL library hashes the user inputed password and again matches the user inputed password with hashed password<br />
                    Available internally. So try it page provided to test it.</td>
                <td>DLL</td>
            </tr>


            <tr>
                <td>Team</td>
                <td>XML manipulation<br />
                    <strong>Input:</strong> String username and String Password<br />
                    <strong>Output:</strong> Updated xml content</td>
                <td><a href="http://localhost:51859/Test.aspx">Try It</a></td>
                <td>This function helps the user to store username and passwords during registration<br />
                    Available internally. So try it page provided to test it.</td>
                <td>Function - XML Manipulation</td>
            </tr>


            <tr>
                <td>Praneeth</td>
                <td>Cookies storage(Browser Dependent)<br />
                    <strong>Input</strong>: Username(String) Password(String)<br />
                    <strong>Output</strong>: String username and password with message</td>
                <td><a href="http://localhost:51859/Test.aspx">Try It</a></td>
                <td>This function is implemented as Remember Me feature during login and username display of the user logged in after login in both Staff and Member Page. Please clear and enable browser cookies. There is a try it page as well for testing</td>
                <td>Cookie</td>
            </tr>


            <tr>
                <td>Ragini</td>
                <td>User Control</td>
                <td><a href="http://localhost:51859/Login.aspx?ReturnURL=MemberPages/Member.aspx">Try It</a></td>
                <td>This feature is implemented in both login and member page to display the login time of the user</td>
                <td>User Control</td>
            </tr>


            <tr>
                <td>Anant</td>
                <td>Global.asax</td>
                <td><a href="http://localhost:51859/Test.aspx">Try It</a></td>
                <td>This feature is implemented during error handling redirection. Whenever there is an error in the application, application is redirected to an error page. In the try it page just click throw exception to test this feature.</td>
                <td>Global asax</td>
            </tr>
    </table>
        
    </form>
    </body>
</html>