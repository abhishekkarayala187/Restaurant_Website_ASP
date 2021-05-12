using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Restaurant_Website
{
    public partial class Log_out : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            //ending the log in session from the web site
            if (Session["UserID"] != null)
            {
                Session["UserID"] = null;
            }
            else
            {

            }
        }
    }
}