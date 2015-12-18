using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Configuration;
using System.Text;
using System.Web.UI.WebControls.WebParts;

namespace IR_Data_portal
{
    public partial class ContactForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        

        protected void BtnSubmit_Click(object sender, EventArgs e)
        {
            DataSet ds = new DataSet();
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
            con.Open();
            //SqlCommand cmd = new SqlCommand("Insert into ContactBase ( Salutation, First Name , Account Name , Last Name , Email , Street Address , City , State , Zip , Direct Phone , Mailing Country , Phone No. , LinkedIn Id , Job Title , Prioritization) output table.id Values ( '" + ddlSalutation.SelectedValue.ToString() + "','" + TextBox1.Text + "','" + TextBox8.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox9.Text + "','" + TextBox10.Text + "','" + TextBox11.Text + "','" + TextBox12.Text + "','" + TextBox13.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + ddlPrioritization.SelectedValue.ToString() + "')", con);
            //cmd.ExecuteNonQuery();
            //int returnedValue = (int) cmd.executeScalar();
            Response.Write("Query Executed");
        }

        protected void BtnClear_Click(object sender, EventArgs e)
        {
            Page.Response.Redirect("ContactForm.aspx", false);
        }

        protected void Btnverify_Click(object sender, EventArgs e)
        {
            Response.Write("Email.Text.Trim()");
        }


        protected void ddlPrioritization_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }
    }
}