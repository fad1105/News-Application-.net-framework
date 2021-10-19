<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminHome.aspx.cs" Inherits="News_Web_Application.adminHome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style3 {
            width: 211px;
        }
        .auto-style4 {
            width: 211px;
            height: 29px;
        }
        .auto-style5 {
            height: 29px;
            width: 390px;
        }
        .auto-style6 {
            width: 36%;
            cursor: pointer;
        }
        .auto-style7 {
            width: 390px;
        }
        .auto-style8 {
            margin-right: 59px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div style="text-align:center;">
  <div style="width:50%; margin: 0 auto; text-align:left;">
            <table style="border-style: solid; border-width: thin;" border="0" class="auto-style6">
                <tr>
                    <td colspan="2" style="text-align: center; background-color: #00FF00; font-size: x-large; color: #FFFFFF; font-weight: bold;">Add News</td>
                </tr>
                <tr>
                    <td class="auto-style3">Type</td>
                    <td class="auto-style7">
                        <asp:DropDownList ID="type" runat="server">
                            <asp:ListItem>India</asp:ListItem>
                            <asp:ListItem>Global</asp:ListItem>
                            <asp:ListItem>Sports</asp:ListItem>
                            <asp:ListItem>Entertaiment</asp:ListItem>
                            <asp:ListItem>Science</asp:ListItem>
                            <asp:ListItem>Health</asp:ListItem>
                            <asp:ListItem>Business</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Date</td>
                    <td class="auto-style7">
                        <asp:TextBox ID="date" runat="server" TextMode="Date" Width="305px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Title</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="title" runat="server" Width="305px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Image</td>
                    <td class="auto-style7">
                        <asp:FileUpload ID="image" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Description</td>
                    <td class="auto-style7">
                        <asp:TextBox ID="description" runat="server" TextMode="MultiLine" CssClass="auto-style8" Height="72px" Width="320px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" class="auto-s tyle1">
                        <asp:Button ID="addButton" runat="server" Text="Add To Database" BackColor="Lime" BorderColor="Lime" ForeColor="White" OnClick="addButton_Click" Width="509px" />
                        <br />
                        <br />
                        <asp:Button ID="logout" runat="server" OnClick="logout_Click" Text="Logout" Width="509px" />
                    </td>
                </tr>
            </table>
      </div>
                </div>
        </div>
    </form>
</body>
</html>
