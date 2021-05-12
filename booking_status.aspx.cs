using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Restaurant_Website
{
    public partial class booking_status : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserID"] != null)
            {
                string Username = Session["UserID"].ToString();
                Bookings.Text = "Hello " + Username + ", your Bookings is/are: ";
            }
            else
            {
                Bookings.Text = "Please Login first";
                Response.Redirect("login.aspx");
            }
        }
    }
}