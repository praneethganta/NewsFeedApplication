<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Member.aspx.cs" Inherits="MemberPages_Member" MaintainScrollPositionOnPostback ="true" %>
<%@ Register TagPrefix = "cse" TagName="semester" src="~/DateTimeNow.ascx" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" style ="background-color: #cce0ff;">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <h2 style="text-align: center">Member Page &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="Button3" runat="server" style="text-align: right" Text="Sign Out" OnClick="Button3_Click" />
        </h2>
    <div><p id="username" runat="server">&nbsp;</p><br />
        This page contains the information about members privileged services<br /> 
                <cse:semester runat = "server" />

</div>
    <div id="BusinessService">
    <div>
    <h2 style="text-align: center; background-color: #99c2ff;" class="auto-style2">Business Service</h2>
    </div>
        <div>
            <h4>Service name: <span class="auto-style1">Business news published by various magazines/publishers</span></h4>

        <div>
            <h4>Description:<span class="auto-style1"> Based on the magazine/publisher name selected by the user along with the number of inputs he/she wants to views news is displayed with the link of actual website for full article.<span class="auto-style11"> </span><span class="auto-style10">Internet Connection is mandatory for the hyperlinks to work.</span></span></h4>

        </div>
            <div>
            <h4>Example Url: <a href="http://webstrar4.fulton.asu.edu/page0/Service1.svc/getBusiness?magType=Oman Daily Observer&countType=low">http://webstrar4.fulton.asu.edu/page0/Service1.svc/getBusiness?magType=Oman Daily Observer&countType=low</a> </h4>

        </div>
            <div>
            <h4>Method names: <span class="auto-style1"><br /> (1) getbusiness(String magName, String countType) : This method takes two inputs&nbsp; magazine name and length of the outputs to view and searches for the respective magazine news using a rest service and returns the details of business news available.</span></h4>
        </div>
            <div>
            <h4>Teting:</h4>
                <table class="auto-style4">
                    <tr>
                        <td style="text-align: left" class="auto-style12">
                            Magazine/Publisher:</td>
                        <td class="auto-style13">
                            <asp:DropDownList ID="DropDownList5" runat="server" DataSourceID="XmlDataSource1" DataTextField="Publisher" DataValueField="Publisher" Height="34px" Width="239px">
                            </asp:DropDownList>
                            <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/convertcsv.xml"></asp:XmlDataSource>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: left" class="auto-style5">
                            Year(eg: 1990)</td>
                        <td class="auto-style14">
                            <asp:DropDownList ID="DropDownList4" runat="server" Height="22px" Width="187px">
                                <asp:ListItem Value="low">Low</asp:ListItem>
                                <asp:ListItem Value="medium">Medium</asp:ListItem>
                                <asp:ListItem Value="all">All</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
              <td style="text-align: left" class="auto-style5">
                  <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" Width="117px" />
                  </td>
                    </tr>
                </table>
  <p id ="links" runat ="server"></p>
        </div>
        </div>
    </div>
    <div id="Entertainment">
    <div>
    <h2 style="text-align: center; background-color: #99c2ff;" class="auto-style2">Entertainment Service</h2>
    </div>
        <div>
            <h4>Service name: <span class="auto-style1">Movie search service</span></h4>

        <div>
            <h4>Description:<span class="auto-style1"> Based on the movie title few details like genre, release date and IMDB rating are provided.<span class="auto-style11"> </span><span class="auto-style10">Internet Connection is mandatory or else the API will throw an error.</span></span></h4>

        </div>
            <div>
            <h4>Example Url: <a href="http://webstrar4.fulton.asu.edu/Service1.svc/movieDetails?title=Something&year=&plotType=">http://webstrar4.fulton.asu.edu/Service1.svc/movieDetails?title=Something&year=&plotType=</a> </h4>

        </div>
            <div>
            <h4>Method names: <span class="auto-style1"><br /> (1) movieDetails(String title, String year, String plotType) : This method takes three inputs movie name or sub name(eg: game, something, X-men etc.,), year and plot period and searches the movie using a rest service and returns the details of the movie if available.</span></h4>
        </div>
            <div>
            <h4>Teting:</h4>
                <table class="auto-style4">
                    <tr>
                        <td style="text-align: left" class="auto-style5">
                            <span class="auto-style9">Tiltle(eg: game,X-men)</span><span class="auto-style8">*</span></td>
                        <td>
                            <asp:TextBox ID="TextBox5" runat="server" Width="147px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: left" class="auto-style5">
                            Year(eg: 1990)</td>
                        <td>
                            <asp:TextBox ID="TextBox6" runat="server" Width="147px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: left" class="auto-style5">
                            Plot time(short, long):</td>
                        <td>
                            <asp:TextBox ID="TextBox7" runat="server" Width="148px"></asp:TextBox>
                        </td>
                    </tr>
                </table>

        </div>
        </div>
        <table class="auto-style6">
            <tr>
                <td>
                    <asp:TextBox ID="TextBox8" runat="server" Height="106px" Width="606px" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
        </table>

    </div>
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Submit" Width="111px" />
        </form>
</body>
</html>