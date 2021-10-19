<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registration.aspx.cs" Inherits="News_Web_Application.registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style4 {
            margin-left: 0px;
        }
        .auto-style8 {
            width: 84%;
        }
        .auto-style11 {
            height: 61px;
        }
        .auto-style22 {
            height: 24px;
            width: 195px;
        }
        .auto-style23 {
            width: 195px;
        }
        .auto-style24 {
            height: 26px;
            width: 195px;
        }
        .auto-style25 {
            height: 24px;
            width: 241px;
        }
        .auto-style26 {
            width: 241px;
        }
        .auto-style27 {
            height: 26px;
            width: 241px;
        }

        .auto-style28 {
            width: 195px;
            height: 9px;
        }
        .auto-style29 {
            width: 241px;
            height: 9px;
        }

    </style>
</head>
    <script type="text/javascript"> 
        function checkPassword(source, args) {
            args.IsValid = false;
            var data = args.Value;
            if (data.length < 6 || data.length > 14)
                return;
            var isUpper = false;
            var isLower = false;
            var isNum = false;
            for (ch in data) {
                if (data[ch] >= 'A' && data[ch] <= 'Z')
                {
                    isUpper = true;
                }
                else if (data[ch] >= 'a' && data[ch] <= 'z')
                {
                    isLower = true;
                }
                else if (data[ch] >= '0' && data[ch] <= '9')
                {
                    isNum = true;
                }
            }
            if (isLower && isNum && isUpper)
            {
                args.IsValid = true;
            }
        } </script>
<body>
    <form id="form1" runat="server">
        <div>
            <div style="text-align:center;">
  <div style="width:50%; margin: 0 auto; text-align:left;">
    <table class="auto-style8" border="0" style="border-style: solid; border-width: thin; background-color: #CCCCCC; cursor: pointer;">
        <tr>
            <td colspan="2" class="auto-style11" style="font-size: 30px; font-weight: bold; background-color: #000000; color: #FFFFFF; text-align: center;">Registration</td>
        </tr>
        <tr>
            <td class="auto-style22" style="color: #008000">First Name *</td>
            <td class="auto-style25" style="color: #008000">Last Name *</td>
        </tr>
        <tr>
            <td class="auto-style28">
                        <asp:TextBox ID="fname" runat="server"></asp:TextBox>
                    </td>
            <td class="auto-style29">
                <asp:TextBox ID="lname" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style23">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="fname" ErrorMessage="First Name is required" ForeColor="Red">First Name is required</asp:RequiredFieldValidator>
                    </td>
            <td class="auto-style26">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="lname" ErrorMessage="Last Name is required" ForeColor="Red">Last Name is required</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style23">
                        &nbsp;</td>
            <td class="auto-style26">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style23" style="color: #008000">Email Adderss *</td>
            <td class="auto-style26">
                        <asp:TextBox ID="email" runat="server" TextMode="Email"></asp:TextBox>
                    </td>
        </tr>
        <tr>
            <td class="auto-style23">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="email" ErrorMessage="Email is required" ForeColor="Red">Email is required</asp:RequiredFieldValidator>
                    </td>
            <td class="auto-style26">
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="email" ErrorMessage="Enter Valid Email Assress" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style23">
                        &nbsp;</td>
            <td class="auto-style26">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style23" style="color: #008000">Password *</td>
            <td class="auto-style26" style="color: #008000">Confirm Password *</td>
        </tr>
        <tr>
            <td class="auto-style23">
                        <asp:TextBox ID="password" runat="server" CssClass="auto-style4" TextMode="Password"></asp:TextBox>
                    </td>
            <td class="auto-style26">
                        <asp:TextBox ID="confirmpassword" runat="server"></asp:TextBox>
                    </td>
        </tr>
        <tr>
            <td class="auto-style23">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="password" ErrorMessage="Password is required" ForeColor="Red">Password is required</asp:RequiredFieldValidator>
                    </td>
            <td class="auto-style26">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="confirmpassword" ErrorMessage="Confirm Password is required" ForeColor="Red">Confirm Password is required</asp:RequiredFieldValidator>
                    </td>
        </tr>
        <tr>
            <td class="auto-style23">
                <asp:CustomValidator ID="CustomValidator1" runat="server" ClientValidationFunction="checkPassword" ControlToValidate="password" ErrorMessage="Password must be between 6 to 14 character,must contain at least one upper case letter,one lower case letter and one digit" ForeColor="Red" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
            </td>
            <td class="auto-style26">
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="password" ControlToValidate="confirmpassword" ErrorMessage="Password and Confirm password must be same" ForeColor="Red"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style23">&nbsp;</td>
            <td class="auto-style26">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style23" style="color: #008000">Country*&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:DropDownList ID="country" runat="server" AutoPostBack="True" OnSelectedIndexChanged="country_SelectedIndexChanged">
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem>America</asp:ListItem>
                            <asp:ListItem>Canada</asp:ListItem>
                            <asp:ListItem>China</asp:ListItem>
                            <asp:ListItem>India</asp:ListItem>
                            <asp:ListItem>Pakistan</asp:ListItem>
                        </asp:DropDownList>
                    </td>
            <td class="auto-style26" style="color: #008000">State*&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:DropDownList ID="state" runat="server">
                        </asp:DropDownList>
                    </td>
        </tr>
        <tr>
            <td class="auto-style23">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="country" ErrorMessage="Country is required" ForeColor="Red">Country is required</asp:RequiredFieldValidator>
                    </td>
            <td class="auto-style26">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="state" ErrorMessage="State is required" ForeColor="Red">State is required</asp:RequiredFieldValidator>
                    </td>
        </tr>
        <tr>
            <td class="auto-style23">
                        &nbsp;</td>
            <td class="auto-style26">
                        &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style24">&nbsp;<asp:Button ID="register" runat="server" BackColor="#04AA6D" BorderStyle="None" ForeColor="White" Text="Register" Width="189px" OnClick="register_Click" />
            </td>
            <td class="auto-style27" style="color: #008000">Already have an account?&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/login.aspx">Sign in</asp:HyperLink>
            </td>
        </tr>
    </table>
      </div></div>
            </div>
    </form>
    </body>
</html>
