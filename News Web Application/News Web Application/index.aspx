<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="News_Web_Application.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>NEWS APPLICATION</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons"/>
    <style>

        body{
            background-color : azure ;
        }

        .mainContent {
            top : 100px ;
            padding-left : 200px ;
            padding-right : 200px ;
        }

        body {font-family: Arial, Helvetica, sans-serif;}

        .navbar {
            width: 100%;
            background-color: #555;
            overflow: auto;
        }

            .navbar a {
                float: left;
                padding: 12px;
                color: white;
                text-decoration: none;
                font-size: 17px;
            }

                .navbar a:hover {
                    background-color: #fff;
                    color : black ;
                }

        .active {
            background-color: #04AA6D;
        }

        @media screen and (max-width: 500px) {
            .navbar a {
                float: none;
                display: block;
            }
        }





        .card {
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
            background-color: #e6edf2;
            margin: auto;
            text-align: center;
            font-family: arial;
            border-radius: 25px;
        }

        .price {
            color: grey;
            font-size: 22px;
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

        .dropbtn {
            font-size: 16px;
            border: none;
            outline: none;
            color: white;
            padding: 14px 16px;
            background-color: inherit;
            font-family: inherit; /* Important for vertical align on mobile phones */
            margin: 0; /* Important for vertical align on mobile phones */
        }  
        .auto-style1 {
            width: 413px;
            height: 200px;
        }
    </style>
</head>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script type='text/javascript'>

        function f1(btn) {
            var ids = (btn.id);
        }
    </script>

     <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="navbar">
            <asp:Button  ID="Home" runat="server" OnClick="Button1_Click" Text="Home" cssClass="dropbtn " />
            <asp:Button  ID="Search" runat="server" OnClick="Button1_Click" Text="Search"  cssClass="dropbtn "/>
            <asp:Button  ID="India" runat="server" OnClick="Button1_Click" Text="India"  cssClass="dropbtn"/>
            <asp:Button  ID="Global" runat="server" OnClick="Button1_Click" Text="Global"  cssClass="dropbtn"/>
            <asp:Button  ID="Sports" runat="server" OnClick="Button1_Click" Text="Sports"  cssClass="dropbtn"/>
            <asp:Button  ID="Entertainment" runat="server" OnClick="Button1_Click" Text="Entertainment"  cssClass="dropbtn"/>
            <asp:Button  ID="Science" runat="server" OnClick="Button1_Click" Text="Science"  cssClass="dropbtn"/>
            <asp:Button  ID="Health" runat="server" OnClick="Button1_Click" Text="Health"  cssClass="dropbtn"/>
            <asp:Button  ID="Business" runat="server" OnClick="Button1_Click" Text="Business"  cssClass="dropbtn"/>
            </div>
            <br />
            <br />

<%--            <div class="navbar">
               
                <a class="active" href="#" ><i class="fa fa-fw fa-home"></i>Home</a>
                <a href="#"  onclick='f1(this)'><i class="fa fa-fw fa-search"></i>Search</a>
                
                <a href="#"  ><i class="fab fa-font-awesome-flag  fa-fw "></i>India</a>

                <a href="#" onclick='f1(this)' ><i class="fa fa-fw fas fa-globe"></i>Global</a>

                <a href="#" ><i class="fa fa-fw fa-table-tennis"></i>Sports</a>

                <a href="#" ><i class="fa fa-fw fas fa-film"></i>Entertainment</a>

                <a href="#" ><i class="fa fa-fw fas fa-flask"></i>Science</a>

                <a href="#" ><i class="fa fa-fw 	fas fa-heartbeat "></i>Health</a>

                <a href="#" id=""><i class="fa fa-fw fas fa-building "></i>Business</a>

                <a href="#" style="float:right; margin-right : 10px ;" ><i class="fa fa-fw fa-user" "></i>Login</a>
            </div>--%>
             <h2 class="auto-style1" style="font-family: Gabriola; font-size: xx-large; font-weight: bold; font-style: oblique; color: #FF0000; line-height: 32px; vertical-align: sub;">News Application</h2>
            <div class="mainContent">
                <h1><asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="logout" runat="server" Text="Logout" OnClick="logout_Click" />
                </h1>
            </div>
        </div>
    </form>
</body>
</html>
