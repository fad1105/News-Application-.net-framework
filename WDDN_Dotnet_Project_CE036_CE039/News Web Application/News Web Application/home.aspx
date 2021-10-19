<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="News_Web_Application.home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home Page</title>
    <style>
        .card {
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
            background-color: #e6edf2;
            margin: auto;
            text-align: center;
            font-family: arial;
            border-radius: 25px;
        }
        .card button {
            border: none;
            outline: 0;
            padding: 12px;
            color: white;
            background-color: #61c947;
            text-align: center;
            cursor: pointer;
            width: 100%;
            font-size: 18px;
            border-radius: 25px;
        }

            .card button:hover {
                opacity: 0.4;
            }
    </style>
</head>
    <script type ="text/javascript">
        function myFunction() {
            PageMethods.MyFun();
        }
    </script>
<body>
    <form id="form1" runat="server">

        <div>
            <div style="text-align:center;">
  <div style="width:50%; margin: 0 auto; text-align:left;">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" OnRowCommand="GridView1_OnRowCommand">
                <Columns>
                    <asp:BoundField DataField="Type" HeaderText="Type" />
                    <asp:BoundField DataField="Date" HeaderText="Date" />
                    <asp:BoundField DataField="Title" HeaderText="Title" />
                    <asp:ImageField DataImageUrlField="Image" HeaderText="Image" ControlStyle-Width="250" ControlStyle-Height = "170"></asp:ImageField>
                    <asp:TemplateField ShowHeader="False">
            <ItemTemplate>
                <asp:Button ID="Button1" runat="server" CausesValidation="false" CommandName="Read"
                    Text="Read" CommandArgument='<%# Eval("id") %>' />
            </ItemTemplate>
        </asp:TemplateField>
                </Columns>
            </asp:GridView>
      </div></div>
        </div>
    </form>
</body>
</html>
