using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Web.Configuration;

namespace Restaurant_Website
{
    public partial class table_booking : System.Web.UI.Page
    {
        static String startTime;
        static String endTime;
        protected void Page_Load(object sender, EventArgs e)
        {
            //implementing the session of login flow to the table-booking page.
            //without login user can not book the table.
            if (Session["UserID"] != null)
            {

            }
            else
            {
                Session["PageID"] = "1";

                Response.Write("< script > alert('You have to login or Register yourself first') </ script >");
                Response.Redirect("login.aspx");
            }
        }

        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            startTime = Calendar1.SelectedDate.Year + "-" + Calendar1.SelectedDate.Month + "-" + Calendar1.SelectedDate.Day + " " + DropDownList1.Text;
            endTime = Calendar1.SelectedDate.Year + "-" + Calendar1.SelectedDate.Month + "-" + Calendar1.SelectedDate.Day + " " + DropDownList2.Text;

            string constr = WebConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
            SqlConnection conn = new SqlConnection(constr);
            try
            {
                conn.Open(); //opening the connection to the database
                string Username = Session["UserID"].ToString();

                //executing the sql command to update the data of logged in user 
                //to get the details of table booking.
               SqlCommand cmd = new SqlCommand("insert INTO Table_Booking values(@Username, @Name, @Phone, @Email, @TableNumber, @StartTime, @EndTime, @Attendees, @Comments)", conn);
                cmd.Parameters.AddWithValue("Username", Username);
                cmd.Parameters.AddWithValue("Name", Name.Text);
                cmd.Parameters.AddWithValue("Phone", Phone.Text);
                cmd.Parameters.AddWithValue("Email", Email.Text);
                cmd.Parameters.AddWithValue("TableNumber", RadioButtonList1.Text);
                cmd.Parameters.AddWithValue("StartTime", startTime);
                cmd.Parameters.AddWithValue("EndTime", endTime);
                cmd.Parameters.AddWithValue("Attendees", Attendees.Text);
                cmd.Parameters.AddWithValue("Comments", Comments.Text);
                

                cmd.ExecuteNonQuery();

                conn.Close(); //Closing the connection to sql database.
                Response.Write("<script>alert('Your Table has been booked Successfully')</script>");
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }

        protected void ResetButton_Click(object sender, EventArgs e)
        {
            foreach(Control control in Page.Controls)
            {
                if(control is TextBox)
                {
                    TextBox txt = (TextBox)control;
                    txt.Text = "";
                }
            }
        }

        protected void Check_Click(object sender, EventArgs e)
        {
            startTime = Calendar1.SelectedDate.Year + "-" + Calendar1.SelectedDate.Month + "-" + Calendar1.SelectedDate.Day + " " + DropDownList1.Text;
            endTime = Calendar1.SelectedDate.Year + "-" + Calendar1.SelectedDate.Month + "-" + Calendar1.SelectedDate.Day + " " + DropDownList2.Text;
            Response.Write(startTime);
            FindAvailableTable();
            RadioButtonList1.Visible = true;

        }

        private void FindAvailableTable()
        {
            string constr = WebConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;

            String myquery = "select DISTINCT TableNumber from Table_Booking where ((StartTime between '" + startTime + "' and '" + endTime + "' ) or (EndTime between '" + startTime + "' and '" + endTime + "' ))";
            SqlConnection con = new SqlConnection(constr);
            SqlCommand cmd = new SqlCommand
            {
                CommandText = myquery,
                Connection = con
            };
            SqlDataAdapter da = new SqlDataAdapter
            {
                SelectCommand = cmd
            };
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                //RadioButtonList1.Items.Clear();
                checking.Text = "Available Tables are Given Below";
                foreach (DataRow dr in ds.Tables[0].Rows)
                {


                    RadioButtonList1.Items.Remove(RadioButtonList1.Items.FindByValue(dr["TableNumber"].ToString()));

                }
                if (RadioButtonList1.Items.Count == 0)
                {
                    checking.Text = "No Table Available to Book";
                }

            }
            else
            {
                checking.Text = "Available Tables are Given Below";

            }
            con.Close();
        }

        protected void CustemValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            
            
            startTime = DropDownList1.Text;
            endTime = DropDownList2.Text;

            string[] s1 = startTime.Split(':', ' ');
            string[] s2 = endTime.Split(':', ' ');
            string s3 = s1[0] + s1[1];
            string s4 = s2[0] + s2[1];
            var int1 = int.Parse(s3);
            var int2 = int.Parse(s4);
            if (int1 == int2)
            {
                args.IsValid = true;
            }
            else
            {
                args.IsValid = false;
            }
        }
    }
}
