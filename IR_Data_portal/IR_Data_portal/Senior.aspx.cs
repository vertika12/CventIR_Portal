using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IR_Data_portal
{
    public partial class Senior : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            Response.Redirect("Contact.aspx");
        }

        protected void btnInser_Click(object sender, EventArgs e)
        {
            Response.Redirect("Insertion.aspx");
        }
    }
}