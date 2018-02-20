<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Staff.aspx.cs" Inherits="StaffPages_Staff" MaintainScrollPositionOnPostback ="true" %>
<%@ Register TagPrefix = "cse" TagName="semester" src="~/DateTimeNow.ascx" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" style="background-color: #cce0ff;">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-weight: normal;
        }
        .auto-style2 {
            color: #000000;
        }
        .auto-style4 {
            width: 45%;
        }
        .auto-style5 {
            width: 163px;
        }
        #TextArea1 {
            height: 100px;
            width: 319px;
        }
        .auto-style6 {
            width: 100%;
        }
        #output {
            height: 148px;
            width: 325px;
        }
        .auto-style7 {
            color: #000000;
            font-size: x-large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <h2 style="text-align: center">Staff Page&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Sign Out" />
        </h2>
    <div><p id="username" runat="server"></p><br />
        This page contains the information about staff privileged services.<br /> 
        <br />
                <cse:semester runat = "server" />
</div>
    <div id ="Weather" runat="server">
    <div>
        <p style="text-align: center; background-color: #99c2ff; font-weight: 700;" class="auto-style7">Weather<strong> Service</strong></p>
    </div>
        <div>
            <h4>Service name: <span class="auto-style1">Weather forecast based on zipcode</span> </h4>

        <div>
            <h4>Description: <span class="auto-style1">This service has one functionality i.e, to provide user the 5 day forecast<br /> based on the users entry(zipcode).</span></h4>

        </div>
            <div>
            <h4>Url Example: <a href="http://webstrar4.fulton.asu.edu/page2/Service1.svc?wsdl">http://webstrar4.fulton.asu.edu/page2/Service1.svc?wsdl</a> </h4>

        </div>
            <div>
            <h4>Method names: <span class="auto-style1"><br /> (1) getForeCastService(String zipcode) : This method takes string input which is the zipcode and returns the next 5 days weather forecast as a String array which is set to the output box.</span></h4>

        </div>
            <div>
            <h4>Teting:</h4>
                <table class="auto-style4">
                    <tr>
                        <td style="text-align: left" class="auto-style5">
                            Please enter your zipcode:
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox1" runat="server" Width="147px" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                        </td>
                    </tr>
                </table>

        </div>
        </div>
        <table class="auto-style6">
            <tr>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Height="106px" Width="606px" TextMode="MultiLine" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
                </td>
            </tr>
        </table>
        </div>
    <div id="wordFilter" runat="server">
    <div>
    <h2 style="text-align: center; background-color: #99c2ff;" class="auto-style2">Word Filter</h2>
    </div>
        <div>
            <h4>Service name: <span class="auto-style1">Stop words removal service for given text input</span> </h4>

        <div>
            <h4>Description: <span class="auto-style1">This service has one functionality i.e, to provide user the stop words removed text<br /> based on the users input.</span></h4>

        </div>
            <div>
            <h4>Url: <a href="http://webstrar4.fulton.asu.edu/page1/Service1.svc?wsdl">http://webstrar4.fulton.asu.edu/page1/Service1.svc?wsdl</a> </h4>

        </div>
            <div>
            <h4>Method names: <span class="auto-style1"><br /> (1) removeStopWordsService(String sentence) : This method takes string input which is the text input and returns the output removing all the stop words as a String which is set to the output box.</span></h4>

        </div>
            <div>
            <h4>Teting:</h4>
                <table class="auto-style4">
                    <tr>
                        <td style="text-align: left" class="auto-style5">
                            Enter the sentence:
                        </td>
                        <td>
                            <asp:TextBox ID="TextBox3" runat="server" Width="484px" TextMode="MultiLine" ValidateRequestMode="Disabled"></asp:TextBox>
                        </td>
                    </tr>
                </table>

        </div>
        </div>
        <table class="auto-style6">
            <tr>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server" Height="106px" Width="606px" TextMode="MultiLine"></asp:TextBox>
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Submit" />
                </td>
            </tr>
        </table>
    </div>
        </form>
    </body>
    </html>