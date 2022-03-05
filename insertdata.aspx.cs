using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class insertdata : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void backtologin_Click(object sender, EventArgs e)
    {
        Response.Redirect("Home_Page.aspx");
    }

    protected void savedata_Click(object sender, EventArgs e)
    {
        string cs = System.Configuration.ConfigurationManager.ConnectionStrings["books_recordEntities2"].ConnectionString;
        SqlConnection con = new SqlConnection(cs);
        SqlCommand cmd = new SqlCommand("INSERT INTO insert_data_tbl(course_code,name_book,floor,department,year,subject,author_book) VALUES(@coursecode,@namebook,@floor,@department,@year,@subject,@authorbook)", con);
        cmd.Parameters.AddWithValue("@coursecode", coursecodetxt.Text);
        cmd.Parameters.AddWithValue("@namebook", namebooktxt.Text);
        cmd.Parameters.AddWithValue("@floor", floortxt.Text);
        cmd.Parameters.AddWithValue("@department", departmenttxt.Text);
        cmd.Parameters.AddWithValue("@year", yeartxt.Text);
        cmd.Parameters.AddWithValue("@subject", subjecttxt.Text);
        cmd.Parameters.AddWithValue("@authorbook", authortxt.Text);
        



        if (coursecodetxt.Text == "" && authortxt.Text == "")
        {
            lblmsg.Text = "please complete all the fields Course Code or Name of the author must be filled";
            coursecodetxt.Text = "";
            namebooktxt.Text = "";
            floortxt.Text = "";
            departmenttxt.Text = "";
            yeartxt.Text = "";
            subjecttxt.Text = "";
            authortxt.Text = "";
        }
        else
        {
            con.Open();
            cmd.ExecuteNonQuery();
            lblmsg.Text = "data inserted succesfully";
            con.Close();
            coursecodetxt.Text = "";
            namebooktxt.Text = "";
            floortxt.Text = "";
            departmenttxt.Text = "";
            yeartxt.Text = "";
            subjecttxt.Text = "";
            authortxt.Text = "";

        }
    }

    protected void findrecord_Click(object sender, EventArgs e)
    {
        string cs = System.Configuration.ConfigurationManager.ConnectionStrings["books_recordEntities2"].ConnectionString;
        SqlConnection con = new SqlConnection(cs);
        string coursecode = courseidfindtxt.Text;
        string author = authorfindtxt.Text;
        con.Open();
        string query = "SELECT * from insert_data_tbl where course_code='" + coursecode + "' and author_book='" + author + "'";
        SqlDataAdapter da = new SqlDataAdapter(query,con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        showdatagrid.DataSource = ds;
        showdatagrid.DataBind();
        lblmsg.Text = "Data Match Succesfully";
        
    }

    protected void viewgrid_SelectedIndexChanged(object sender, EventArgs e)
    {
        
    }
    
}
