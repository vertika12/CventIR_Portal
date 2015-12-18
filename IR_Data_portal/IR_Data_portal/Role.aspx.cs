using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using IR_Data_portal;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using  System.Web.Configuration;
using System.Text;
using System.Web.UI.WebControls.WebParts;



public partial class Role: System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        Response.Redirect("Senior.aspx");
    }
    protected void Button2_Click1(object sender, EventArgs e)
    {
        Response.Redirect("Senior.aspx");

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("Associate.aspx");

    }
}