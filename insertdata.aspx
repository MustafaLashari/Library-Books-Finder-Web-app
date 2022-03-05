<%@ Page Language="C#" AutoEventWireup="true" CodeFile="insertdata.aspx.cs" Inherits="insertdata" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body {
        background-image:url(background11.jpg);
        }

        #insert_data {
        background-color:dimgrey;
        height:500px;
        width:500px;   
        margin-bottom:100px;
       
        }
        #insert {
        margin-left:50px;
        
        }
        /**/
        #h1 {
        text-align:center;
        color:aliceblue;
        }
        #namef {
        margin-top:40px;
        }
        #fatherlbl {
        margin-left:10px;
        }
        #phonelbl {
        margin-left:30px;
        }
        #classlbl {
        margin-left:30px;
        }
        #btns {
        width:60px;
        height:30px;
        margin-left:100px;
        }
        #btnp {
        width:60px;
        height:30px;
       
         }
        #grid {
        width:300px;
        height:300px;
        }
        #lblid {
        margin-left:200px;
        }
        #btnfind {
        width:60px;
        height:30px;
       margin-left:none;
         }
        #griddatastyle {
        margin-left:700px;
        margin-bottom:500px;
        
        }

        #hinsert {
            
            margin-top: 20px;
        }
        </style>
</head>
<body >
    
    <form id="form1" runat="server">
    <h1 id="h1" style="color:aliceblue;">Welcome To insertion & Find The Book Query </h1>
    <br />
        <div id="insert_data">
         <div id="insert" style="text-align:center"><br />
                <h1 id="hinsert" style="margin-left:100px">INSERT DATA</h1>  
             <label> Course_Code:<asp:TextBox ID="coursecodetxt" runat="server"></asp:TextBox></label>
               <label>
               <br /><br />
               Name book: <asp:TextBox ID="namebooktxt" runat="server"></asp:TextBox></label>
               <br /><br />
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<label id="fatherlbl"> Floor:
               <asp:TextBox ID="floortxt" runat="server"></asp:TextBox></label><br /><br /> 
              <label>Department:
               <asp:TextBox ID="departmenttxt" runat="server"></asp:TextBox></label>
             <br /><br />
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<label id="year">Year:<asp:TextBox ID="yeartxt" runat="server"></asp:TextBox></label>
    <br />
            <br />
   <label>Subject:<asp:TextBox ID="subjecttxt" runat="server"></asp:TextBox></label><br /><br />
               <label id="classlbl">Author Book:
               <asp:TextBox ID="authortxt" runat="server"></asp:TextBox></label><br /><br /><br />
             <asp:Label ID="lblmsg" runat="server" ForeColor="#FF0066"></asp:Label><br />  
             <asp:Button ID="savedata" runat="server" Text="Save" OnClick="savedata_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               <asp:Button ID="backtologin" runat="server" OnClick="backtologin_Click" Text="Back" />


</div>
        </div>
        <div id="griddatastyle">
             <asp:GridView ID="showdatagrid" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Width="452px" CellPadding="4" ForeColor="#333333" GridLines="None">
                   <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                   <Columns>
                       <asp:BoundField DataField="course_code" HeaderText="course_code" SortExpression="course_code" />
                       <asp:BoundField DataField="name_book" HeaderText="name_book" SortExpression="name_book" />
                       <asp:BoundField DataField="floor" HeaderText="floor" SortExpression="floor" />
                       <asp:BoundField DataField="department" HeaderText="department" SortExpression="department" />
                       <asp:BoundField DataField="year" HeaderText="year" SortExpression="year" />
                       <asp:BoundField DataField="subject" HeaderText="subject" SortExpression="subject" />
                       <asp:BoundField DataField="author_book" HeaderText="author_book" SortExpression="author_book" />
                   </Columns>
                   <EditRowStyle BackColor="#999999" />
                   <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                   <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                   <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                   <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                   <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                   <SortedAscendingCellStyle BackColor="#E9E7E2" />
                   <SortedAscendingHeaderStyle BackColor="#506C8C" />
                   <SortedDescendingCellStyle BackColor="#FFFDF8" />
                   <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
               </asp:GridView>
              &nbsp;&nbsp; &nbsp;&nbsp;<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:books_recordConnectionString %>" SelectCommand="SELECT [course_code], [name_book], [floor], [department], [year], [subject], [author_book] FROM [insert_data_tbl]"></asp:SqlDataSource>
&nbsp;        
               </label>&nbsp;<label id="lblid"><br />   <asp:TextBox ID="courseidfindtxt" runat="server"></asp:TextBox>
&nbsp; </label>Author<label id="lblclass">: <asp:TextBox ID="authorfindtxt" runat="server"></asp:TextBox>
               </label>
            <br />
               <asp:Button ID="findrecord" runat="server" Text="Find Record" OnClick="findrecord_Click" />
            <br />
                    
        
            </div>
    </form>
    <p>
&nbsp;</p>
</body>
</html>
