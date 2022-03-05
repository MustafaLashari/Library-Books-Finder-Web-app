<%@ Page Language = "C#" AutoEventWireup="true" CodeFile="Login_page.aspx.cs" Inherits="Login_page" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <style>
      
               body{
         font-family: Franklin Gothic Demi Cond;
           background-color:black;
            color:aliceblue;
         }
            #form1 {
            text-align:center;
            font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
                         
            }
            #password {
            margin-right:30px;
            }
            #lbl1 {
            margin-left:16px;
            }
p{

    color:yellow;
}
.logindiv{
    border:solid;
    background-color:darkslategrey;
    margin-left:500px;
    margin-top:110px;
height: 250px;
width: 300px;
}
#login_btn{
    width: 70px;
    height: 30px;
}
    </style>

</head>
<body>
    <form id="form1" runat="server">
        <h1> Login Page </h1>
<br/>
        <div class="logindiv">
<p>
   dont empty any fields
</p><br/>

<label>User Email:</label>
        <asp:TextBox ID="useremail" runat="server" Width="130px" Height="20px"></asp:TextBox>
<br/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<br/>
        <br />
        <label id="lbl1">Password:</label>
        <asp:TextBox ID="userpassword" runat="server" Width="130px" Height="20px"></asp:TextBox>
<br/><br />
&nbsp;<asp:Label ID="lbllogin" runat="server" ForeColor="Yellow"></asp:Label>
<br/>


    
    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="loginbtn" runat="server" OnClick="loginbtn_Click" Text="Login" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="backbtn" runat="server"  OnClick="backbtn_Click" Text="Back"/>
           
    
    </div>
    </form>
</body>
</html>
