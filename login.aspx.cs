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
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //checking if user is already logged in from the session
            if (Session["UserID"] != null)
            {
                Response.Write("<script>alert('You are already Logged in')</script>");
            }
            else
            {

            }
        }

        protected void Register_Click(object sender, EventArgs e)
        {
            //redirecting to registration page
            Response.Redirect("Registration.aspx");
        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            //Creating the connection string to the database server.
            string constr = WebConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
            //stablizing the connnection
            SqlConnection conn = new SqlConnection(constr);
            try
            {
                //open the connection to the data base login
                conn.Open();
                //execute the sql command for username varification.
                SqlCommand cmd = new SqlCommand("select count(*) from login where Username='" + Username.Text + "' and Password='" + Password.Text + "'", conn);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                // setting the datatable 
                DataTable dt = new DataTable();
                //filling the data to the data table
                sda.Fill(dt);

                //return the quary
                cmd.ExecuteNonQuery();

                //from checking to the UserID
                if (dt.Rows[0][0].ToString() == "1")
                {

                    //Session will be created for log in
                    Session["UserID"] = Username.Text;

                    //executing the table_booking database so that only logged in user can book the table.
                    //SqlCommand cmd1 = new SqlCommand("insert into Table_Booking(UserID) select UserID from login where Username = '"+Username.Text+"'", conn);
                    //cmd1.ExecuteNonQuery();
                    
                    //alert box for successfull log in
                    Response.Write("<script>alert('Successful in login')</script>");

                    //creating the session for table booking flow after the login successful
                    //if previously user was on table booking page after log in he will be
                    //redirected to table_booking again.
                    if (Session["PageID"]!=null)
                    {
                        Response.Redirect("table-booking.aspx");
                    }
          
                    //creating the session for home page flow after the login successful
                    //if previously user was on table booking page after log in he will be
                    //redirected to hamepage again.
                    else if (Session["UserID"]!=null)
                    {
                        Response.Redirect("index.aspx");
                    }
                    
                }
                else
                {
                    //show error if log in unsuccessful
                    Response.Write("<script>alert('Error in login')</script>");
                }
            }catch(Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
    }
}