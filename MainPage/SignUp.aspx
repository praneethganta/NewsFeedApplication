<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SignUp.aspx.cs" Inherits="SignUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" style="background-color: #cce0ff;">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 63%;
            height: 333px;
        }
        .auto-style2 {
            width: 206px;
        }
        .auto-style3 {
            color: #FF0000;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <p>
            Registration Page</p>
        <p id="error" runat="server"></p>
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">User Name:</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Width="437px"></asp:TextBox>
                    <span class="auto-style3">*</span></td>
            </tr>
        
            <tr>
                <td class="auto-style2">Password:</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Width="431px" TextMode="Password"></asp:TextBox>
                    <span class="auto-style3">*</span></td>
            </tr>
            <tr>
                <td class="auto-style2">Confirm Password:</td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server" Width="424px" TextMode="Password"></asp:TextBox>
                    <span class="auto-style3">*</span></td>
            </tr>
        </table>
        <asp:Button ID="Button1" runat="server" Text="Register" OnClick="Button1_Click" />
    </form>
</body>
</html>
