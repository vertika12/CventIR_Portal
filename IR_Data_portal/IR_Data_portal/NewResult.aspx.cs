using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;
using IR_Data_portal;


namespace IR_Data_portal
{
    public partial class NewResult : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button4_Click4(object sender, EventArgs e)
        {
            Response.Redirect("Account.aspx");
        }
        protected void Button5_Click5(object sender, EventArgs e)
        {
            Response.Redirect("Contact.aspx");
        }
    }
}