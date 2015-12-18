using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace IR_Data_portal
{
    public partial class Login : System.Web.UI.Page
    {

        DataSet ds = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnLogin_Click(object sender, EventArgs e)
        {
            try
            {
                if (TxtUser.Text == "" || TxtPassword.Text == "")
                {
                    Response.Write(" Enter UserName and Password .");
                    return;
                }

                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
                con.Open();

                SqlCommand cmd = new SqlCommand("SELECT * FROM login where Emp_Name='" + TxtUser.Text + "' and Emp_Password='" + TxtPassword.Text + "'", con);

                SqlDataAdapter da = new SqlDataAdapter(cmd);

                da.Fill(ds);

                int i = ds.Tables[0].Rows.Count;

                if (i == 1)
                {
                    Session["UserName"] = TxtUser.Text;

                    if (ds.Tables[0].Rows[0]["Designation"].ToString().Equals("Manager   "))
                    {
                        Response.Redirect("Senior.aspx");
                    }
                    else if (ds.Tables[0].Rows[0]["Designation"].ToString().Equals("Senior    "))
                    {
                        Response.Redirect("Senior.aspx");
                    }
                    else if (ds.Tables[0].Rows[0]["Designation"].ToString().Equals("Associate "))
                    {
                        Response.Redirect("Associate.aspx");
                    }
                    else
                    {
                        Response.Write("No Role Found");
                    }

                }
                else
                {
                    Response.Write("Not Registered User or Invalid Name/Password");
                    TxtPassword.Text = "";
                }
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);

            }
        }

        protected void BtnForgetpasword_Click(object sender, EventArgs e)
        {
            
        }
    }
}

