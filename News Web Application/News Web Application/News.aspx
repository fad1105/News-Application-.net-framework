<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="News.aspx.cs" Inherits="News_Web_Application.News" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>News Title</title>
    <style>
              body{
            background-color : azure ;
        }
         body {font-family: Arial, Helvetica, sans-serif;}
        .navbar {
            width: 100%;
            background-color: #555;
            overflow: auto;
        }

        .active {
            background-color: #04AA6D;
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

           .mainContent {
            top : 100px ;
            padding-left : 200px ;
            padding-right : 200px ;
        }

        .card {
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
            background-color: #e6edf2;
            margin: auto;
            text-align: center;
            font-family: arial;
            border-radius: 25px;
        }



            buttoncard {
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

                .card buttoncard:hover {
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
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="card" style="width: 18rem;">
                <asp:Image ID="Image1" runat="server"  class="card-img-top" hight="160" Width="250"/>
  <div class="card-body">
    <h5 class="card-title">
        <asp:Label ID="title" runat="server" Text="Label"></asp:Label>
      </h5>
    <p class="card-text">
        <asp:Label ID="content" runat="server" Text="Label"></asp:Label>
      </p>
    <a href="index.aspx" class="btn btn-primary">Back</a>
  </div>
</div>
        </div>
    </form>
</body>
</html>
