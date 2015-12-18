using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using IR_Data_portal;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;


namespace IR_Data_portal
{
    public partial class defaultNew : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("ChangePassword.aspx");
            //Response.Redirect(Page.ResolveClientUrl("/ChangePassword.aspx"));  

        }

        DataSet ds = new DataSet();
        protected void Button1_Click1(object sender, EventArgs e)
        {
            try
            {
                if (tbUsername.Text == "" || tbPassword.Text == "")
                {
                    Response.Write(" Enter UserName and Password .");
                    return;
                }

                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
                con.Open();

                SqlCommand cmd = new SqlCommand("SELECT * FROM login where Emp_Name='" + tbUsername.Text + "' and Emp_Password='" + tbPassword.Text + "'", con);

                SqlDataAdapter da = new SqlDataAdapter(cmd);

                da.Fill(ds);

                int i = ds.Tables[0].Rows.Count;

                if (i == 1)
                {
                    Session["UserName"] = tbUsername.Text;

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
                    tbPassword.Text = "";
                }


            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);

            }

        }
    }
}