<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Test.aspx.cs" Inherits="Test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" style="background-color: #cce0ff;">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 46%;
        }
        .auto-style2 {
            width: 1013px;
        }
        .auto-style3 {
            width: 120px;
        }
        .auto-style4 {
            width: 36%;
        }
        .auto-style5 {
            width: 179px;
        }
        .auto-style6 {
            width: 121px;
        }
        .auto-style7 {
            width: 680px;
        }
        .auto-style8 {
            width: 45%;
        }
        .auto-style9 {
            width: 103px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
     <h2 style="text-align: center; background-color: #99c2ff;" class="auto-style2">Encryption DLL</h2>
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">Password:</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Width="393px"></asp:TextBox>
                </td>
            </tr>
        </table>
        <asp:Button ID="Button1" runat="server" Text="Generate Hash" Width="193px" OnClick="Button1_Click" />
        <br />
       Hashed Password: <p id ="hashed" runat="server"></p>
       
        <table class="auto-style4">
            <tr>
                <td class="auto-style5">Raw Password:</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Width="330px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style5">Hashed Password:</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Width="336px"></asp:TextBox>
                </td>
            </tr>
        </table>
        <asp:Button ID="Button2" runat="server" Text="Match Passwords" OnClick="Button2_Click" />
       <br />Match Status(true or false): <p id="match" runat="server"></p>
        </div>
        <div>
            <h2 style="text-align: center; background-color: #99c2ff;" class="auto-style2">Xml Modification</h2>

        </div>
        <table class="auto-style8">
            <tr>
                <td class="auto-style6">Username:</td>
                <td class="auto-style7">
                    <asp:TextBox ID="TextBox4" runat="server" Width="397px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">Password:</td>
                <td class="auto-style7">
                    <asp:TextBox ID="TextBox5" runat="server" Width="401px"></asp:TextBox>
                </td>
            </tr>
        </table>
        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Insert" />
    Xml Content:<br />
    <p id="xmlContent" runat="server"
></p>
    <div>
            <h2 style="text-align: center; background-color: #99c2ff;" class="auto-style2">Cookie Testing</h2>

        </div>
        <p>First time the content is printed as New user. Please close the browser and the open the below link once you
            provide the details and click submit
            <a href ="http://localhost:51859/Test.aspx">http://localhost:51859/Test.aspx</a>
        </p>
        <table class="auto-style4">
            <tr>
                <td class="auto-style9">Username:</td>
                <td>
                    <asp:TextBox ID="TextBox6" runat="server" Width="284px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style9">Email:</td>
                <td>
                    <asp:TextBox ID="TextBox7" runat="server" Width="284px"></asp:TextBox>
                </td>
            </tr>
        </table>
        <asp:Button ID="Button4" runat="server" Text="Store" OnClick="Button4_Click" />
        <p id ="cookieMsg" runat ="server"></p>
        <div>
            <h2 style="text-align: center; background-color: #99c2ff;" class="auto-style2">Global.asax</h2>

        </div>
        <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="Throw Exception" />
    </form>
    </body>
</html>
