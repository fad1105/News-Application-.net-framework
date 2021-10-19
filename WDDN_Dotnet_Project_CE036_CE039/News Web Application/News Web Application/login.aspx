<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="News_Web_Application.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 65px;
        }
        .auto-style2 {
            width: 262px;
        }
        .auto-style4 {
            width: 262px;
            height: 29px;
        }
        .auto-style6 {
            height: 29px;
        }
        .auto-style7 {
            width: 223px;
        }
        .auto-style8 {
            width: 223px;
            height: 29px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="text-align:center;">
  <div style="width:50%; margin: 0 auto; text-align:left;">
    <table style="border-style: solid; border-width: thin; background-color: #CCCCCC; cursor: pointer;">
        <tr>
            <td colspan="3" class="auto-style1" style="font-size: 30px; font-weight: bold; background-color: #000000; color: #FFFFFF; text-align: center">Login</td>
        </tr>
        <tr>
            <td class="auto-style2" style="color: #008000">Email *</td>
            <td class="auto-style7">
                <asp:TextBox ID="email" runat="server" TextMode="Email"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="email" ErrorMessage="Email is required" ForeColor="Red">Email is required</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style4" style="color: #008000">
                Password *</td>
            <td class="auto-style8">
                <asp:TextBox ID="password" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td class="auto-style6">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="password" ErrorMessage="Password is required" ForeColor="Red">Password is required</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Button ID="Button1" runat="server" BackColor="#04AA6D" BorderStyle="None" ForeColor="White" Text="Login" OnClick="Button1_Click" Width="209px" />
            </td>
            <td class="auto-style7" style="color: #008000">New user?&nbsp; <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/registration.aspx">Sign up</asp:HyperLink>
            </td>
            <td>&nbsp;</td>
        </tr>
        </table>
      </div></div>
    </form>
</body>
</html>
