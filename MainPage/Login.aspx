<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" style="background-color: #cce0ff;">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 37%;
        }
        .auto-style2 {
            width: 110px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h2 id="header" runat="server"></h2>
        <div>
            <p id="error" runat="server"></p>
        </div>
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">UserName:</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Width="302px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Password:</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Width="299px" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
        </table>
    
    </div>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:CheckBox ID="CheckBox1" runat="server" OnCheckedChanged="CheckBox1_CheckedChanged" style="text-align: right" Text="Remember Me" />
    </form>
</body>
</html>