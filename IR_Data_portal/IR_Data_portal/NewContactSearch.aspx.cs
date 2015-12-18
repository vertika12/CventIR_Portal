using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IR_Data_portal
{
    public partial class NewContactSearch : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        DataSet ds = new DataSet();
        protected void Button1_Click1(object sender, EventArgs e)
        {
            try
            {
                if (tbCheck.Text == "")
                {
                    Response.Write("Enter Email Id of the User");
                    return;
                }

                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
                con.Open();

                SqlCommand cmd = new SqlCommand("Select * FROM detail where Email='" + tbCheck.Text + "'", con);
                SqlDataReader dr;
                dr = cmd.ExecuteReader();
                if (dr != null && dr.HasRows)
                {
                    Response.Write("Email Exists");
                    con.Close();
                }
                else
                {
                    Response.Write("Email Is not Registerd");
                    con.Close();

                }
            }
            catch (Exception ex)
            {
                //Response.Redirect(ex.ToString());

            }
        }
        protected void Button2_Click2(object sender, EventArgs e)
        {
            Response.Redirect("Associate.aspx");
        }
        protected void Button4_Click4(object sender, EventArgs e)
        {
            Response.Redirect("Account.aspx");
        }
        protected void Button5_Click5(object sender, EventArgs e)
        {
            Response.Redirect("Select.aspx");
        }
        protected void Button3_Click3(object sender, EventArgs e)
        {
            Response.Redirect("ContactForm.aspx");

        }

    }
}