<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home_Page.aspx.cs" Inherits="Home_Page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Library Books Managment</title>
   <meta name="viewport" content="width=device-width, initial-scale=1">

     <style>
        body {
            background-image: url(background11.jpg);
        }

        #btnsignup {
            width: 70px;
            height: 30px;
            background-color: coral;
        }

        #sectionright {
           
             background-color:black;
                  border:none;
            text-align: center;
            margin-left: 1000px;
            background-color: none;
            width: 300px;
            height: 350px;
            margin-top: 50px;
            margin-bottom: 50px;
            color: white;
        }

        #aside {
            margin-right:1000px;
            height: 200px;
            width: 900px;
            color:aliceblue;
        }

        #password {
            margin-right: 30px;
        }

        #lbl1 {
            margin-left: 16px;
        }

        #p1 {
            color: yellow;
        }


        #lbl {
            color: yellow;
        }

        .header {
            color:gold;
            margin-left: 19px;
            border:thin;
            
            width: 1300px;
            height: 100px;
        }
         
         </style>
</head>
<body>

    <form id="form1" runat="server">
        <div class="header">
            <h1 id="h" style="margin-left: 400px" >Welcome To Home Page&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </h>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="librarydetail" runat="server" Text="LIBRARY DETAIL" Height="37px" Width="115px" />
              &nbsp;&nbsp;&nbsp;
                                            <asp:Button ID="contact" runat="server" Text="Contact US" Height="37px" Width="82px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              </div><br /><div style="color:yellow">    
        <marquee direction="right"> Welcome to our Library Books Record Management System where You can Find your Best author</marquee>
      </div>
        
        
          <section id="sectionright">
            <h1>Sign Up Page</h1><br />
            <p id="lbl" style="font-family: 'Times New Roman', Times, serif,">New user Must be sign Up first</p>
            <label>User Email:</label>
            <asp:TextBox ID="emailtxt" runat="server" Width="130px"></asp:TextBox>
            <br>
            <br>
            <br>
            <label id="lbl1">Password:</label>
            <asp:TextBox ID="passwordtxt" runat="server" Width="130px"></asp:TextBox>
            <br>
            <br />
            <asp:Label ID="Lblmsg" runat="server"></asp:Label>
            <br />
            <br />
            <asp:Button ID="Signup" runat="server" OnClick="Signup_Click" Text="Sign Up" />
            <asp:Button ID="loginbtn" runat="server" OnClick="loginbtn_Click" Text="Login" /><br />
            <p id="p1">
                if you are already registered then please login
            </p>
           </section> 
        <marquee direction="up" id="aside"> 
            Information About our site<br>
            <p>
                here is information about our Site this is School record Management System Base on ASP.net And Html(Css)
             small project work on gui web url thanks for your watching
            </p>
            <a href="facebook.com">you can visit our facebook page thanks </a>
        </marquee>
        
    </form>
</body>
</html>
    