using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


public partial class Home_Page:System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
            
    }


    protected void Signup_Click(object sender, EventArgs e)
    {

        string cs = System.Configuration.ConfigurationManager.ConnectionStrings["books_recordEntities2"].ConnectionString;
        SqlConnection con = new SqlConnection(cs);
        SqlCommand cmd = new SqlCommand("INSERT INTO signtbl(user_email,password) VALUES(@useremail, @pass)", con);
        cmd.Parameters.AddWithValue("@useremail", emailtxt.Text);
        cmd.Parameters.AddWithValue("@pass", passwordtxt.Text);
        if (emailtxt.Text == "" && passwordtxt.Text == "")
        {
            Lblmsg.Text = "please fill the fields";
        }
        else
        {
            con.Open();
            cmd.ExecuteNonQuery();
            Lblmsg.Text = "data inserted succesfully";
            con.Close();
            emailtxt.Text = "";
            passwordtxt.Text = "";
        }
    }

    protected void loginbtn_Click(object sender, EventArgs e)
    {
        Response.Redirect("Login_page.aspx");
    }        
    }

