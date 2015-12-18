using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Xml.Linq;
using System.IO;
using System.Text;
using AjaxControlToolkit;
using IR_Data_portal;

namespace IR_Data_portal
{
    public partial class ExistingAccount: System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        DataSet ds = new DataSet();
        protected void ButtonCreateNew_OnClick(object sender, EventArgs e)
        {
            Response.Redirect("Account.aspx");
        }

        protected void ButtonSearch_OnClick(object sender, EventArgs e)
        {
            Response.Redirect("Contact.aspx");
        }

        protected void Buttonsubmit_click(object sender, EventArgs e)
        {
            //SqlConnection con;
            //try
            //{
            //    object text_Website;
            //    if (text_Website.text=="")
            //    {
            //       Response.Write("Enter URL of the USER"); 
            //        return;
            //    }

            //    con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
            //    con.Open();
            //    SqlCommand cmd =new SqlCommand("select website from AccountBase where website = '"+ text_Website.text + "'",con);
            //        //"select (case when exists(select top1 website from AccountBase_Temp (nolock) where Website =  '" + text_Website.text + "') then console.writeLine('Under Review') when exists (select top1 website from AccountBase (nolock) where Website =  '" + text_Website.text + "') then console.writeLine('Exists in MDB') else console.write('Not Exists in MDB')",con);
            //    SqlDataReader dr;
            //    dr = cmd.ExecuteReader();
              
            //    if (dr.HasRows)
            //    {
            //        Response.Write("URL Exist");
            //        con.Close();
            //    }
            //    else
            //    {
            //        Response.Write("URL Is not Registered");
            //        con.Close();
            //    }

            //}

            //catch (Exception)
            //{
                 
            //    Response.Redirect(ex.ToString());
            //}
        }
    }

   
}