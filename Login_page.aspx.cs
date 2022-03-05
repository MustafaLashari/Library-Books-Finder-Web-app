using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class Login_page : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
       
    }

    protected void loginbtn_Click(object sender, EventArgs e)
    {
        string cs = System.Configuration.ConfigurationManager.ConnectionStrings["books_recordEntities2"].ConnectionString;
        SqlConnection con = new SqlConnection(cs);
        string em = useremail.Text;
        string pas = userpassword.Text;
        con.Open();
        string query = "SELECT * from signtbl where user_email='"+em +"' and password='"+pas+"'";
        SqlCommand cmd = new SqlCommand(query, con);
        SqlDataReader sdr = cmd.ExecuteReader(); 
         if (em == "" && pas == "")
        {
            lbllogin.Text = "please fill the fields";
        }
        else if(sdr.Read())
        { 
                    lbllogin.Text = "Login Succesfull";
            useremail.Text = "";
            userpassword.Text = "";
            Response.Redirect("insertdata.aspx");
        }
                
        else
        {
            
            lbllogin.Text = "User ID and Password is not Correct";
            con.Close();
            useremail.Text = "";
            userpassword.Text = "";
        }
    }

    protected void backbtn_Click(object sender, EventArgs e)
    {
        Response.Redirect("Home_Page.aspx");
    }
}