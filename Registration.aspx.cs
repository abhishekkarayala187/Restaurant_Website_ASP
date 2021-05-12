using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;

namespace Restaurant_Website
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            string constr = WebConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
            SqlConnection conn = new SqlConnection(constr);
            try
            {
                conn.Open(); //open the connection to sql
                
                //write the sql command to execute the insert values into the datase table for login
                SqlCommand cmd = new SqlCommand("INSERT INTO login VALUES(@Name, @Username, @Password, @Email)", conn);
               
                //Setting the values for variables of the database table
                // values will be taken from textboxes.
                cmd.Parameters.AddWithValue("Name", Name.Text);
                cmd.Parameters.AddWithValue("Username", Username.Text);
                cmd.Parameters.AddWithValue("Password", Password.Text);
                cmd.Parameters.AddWithValue("Email", Email.Text);
                cmd.ExecuteNonQuery();

                Name.Text = "";
                Username.Text = "";
                Password.Text = "";
                Email.Text = "";
                conn.Close();
                Name.Focus();
               
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }

            //redirect to login page after the registration and saving the data in login databas.
            Response.Redirect("login.aspx");
        }
    }
}