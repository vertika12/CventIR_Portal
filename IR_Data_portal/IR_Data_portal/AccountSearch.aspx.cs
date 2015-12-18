using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Web.Security;
using System.Xml.Linq;
using AjaxControlToolkit;
using System.Drawing;

namespace IR_Data_portal
{


    public partial class AccountSearch : Page
    {
        //SqlConnection con= new 
        //SqlConnection(ConfigurationManager.ConnectionStrings["[dbconnection"].ToString());

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGridData();
            }
        }

        protected void BindGridData()
        {
            DataSet ds = new DataSet();
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT * FROM AccountBase a (NOLOCK) join ContactBase b (NOLOCK) on a.[AccountId] = b.[AccountId] where [Account]='" + tbAccountName.Text + "' AND  [MailingCountry]='" + DropDownList1.SelectedValue.ToString() + "'", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(ds);
            GridView2.DataSource = ds;
            GridView2.DataBind();

        }



        protected void RadioButton_CheckedChanged(object sender, EventArgs e)
        {
            if (RadioButton3.Checked == true)
            {
                tbAccountName.Visible = true;
                DropDownList1.Visible = true;
            }
        }




        protected void btnSearchByCompany_OnClick(object sender, EventArgs e)
        {
            DataSet ds = new DataSet();
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT * FROM AccountBase a (NOLOCK) join ContactBase b (NOLOCK) on a.[AccountId] = b.[AccountId] where [Account]='" + tbAccountName.Text + "' AND  [MailingCountry]='" + DropDownList1.SelectedValue.ToString() + "'", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(ds);
            GridView2.DataSource = ds;
            GridView2.DataBind();
        }

        protected void btnGetSelectedRecords_Click(object sender, EventArgs e)
        {
            //creation of table
            DataTable dtgetselectedRecords = new DataTable();
            // Adding Dynamic Column to the database using the add range method
            dtgetselectedRecords.Columns.AddRange(new DataColumn[1] { new DataColumn("Account") });
            //  Running a For Loop accross the First Grid view
            List<GridView> data = new List<GridView>();
            foreach (GridViewRow gvrow in GridView2.Rows)
            {
                if (gvrow.RowType == DataControlRowType.DataRow)
                {
                    // Finding the Checkbox in the Gridview
                    CheckBox chckSelect = (gvrow.Cells[4].FindControl("ChckSelect") as CheckBox);
                    if (chckSelect != null && chckSelect.Checked)
                    {
                        GridView newRow = new GridView();
                        //assigning the records to a string to the cells
                        // newRow.S_No = gvrow.Cells[2].Text;
                        newRow.Website = gvrow.Cells[3].Text;
                        newRow.Account = gvrow.Cells[4].Text;
                        newRow.Segment = gvrow.Cells[6].Text;
                        newRow.MailingCity = gvrow.Cells[13].Text;
                        newRow.MailingCountry = gvrow.Cells[16].Text;
                        data.Add(newRow);
                        //(gvrow.Cells[4].FindControl("CheckSelect") as CheckBox)
                        // Adding the rows to the datatable
                    }


                }
                //Assigning the data sourec as data table that we have generated

                GridView3.DataSource = data;
                GridView3.DataBind();

            }
     
        }

        protected void LinkEdit_Click(object sender, EventArgs e)
        {
            
        }
    }
}