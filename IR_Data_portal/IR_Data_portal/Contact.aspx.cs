using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.Entity.Core.Common.CommandTrees;
using System.Data.SqlClient;
using System.Web.Security;
using IR_Data_portal;
using System.Xml.Linq;
using AjaxControlToolkit;
using WebGrease.Css.Ast.Selectors;
using System.IO;
using System.Text;
using DataManager.DAL;




namespace IR_Data_portal
{
    public partial class Contact : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadStore();
            }


        }

        protected void LoadStore()
        {
            // DataSet ds=new DataSet();
            // SqlDataAdapter da = new SqlDataAdapter(cmd);
            // da.Fill(ds);
            //    int count = ds.Tables[0].Rows.Count;
            //    if (ds.Tables[0].Rows.Count > 0)
            //    {
            //        gvContactDetails.DataSource = ds;
            //        gvContactDetails.DataBind();  
            //    }
            //    else
            //    {
            //        lblmsg.Text = "No Data Found !!!";
            //    }
        }

        protected void RadioButton_CheckedChanged(object sender, EventArgs e)
        {
            if (RadioButton1.Checked)
            {
                textEmail.Visible = false;
            }
            else if (RadioButton2.Checked == true)
            {
                textFirstName.Visible = false;
                textLastName.Visible = false;
                textAccount.Visible = false;
                textEmail.Visible = true;
            }
            else
            {
                Response.Write("No Radio Button Selected");
            }
        }

        protected void btnSearchByName_OnClick(object sender, EventArgs e)
        {
            DataSet dsAccountDetails = new DataSet();
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT * FROM AccountBase a (NOLOCK) join ContactBase b (NOLOCK) on a.[AccountId] = b.[AccountId] where b.[FirstName]='" + textFirstName.Text + "'AND b.[LastName]='" + textLastName.Text + "'AND a.[Account]='" + textAccount.Text + "'", con);
            // ("Select * From detail where First_Name='" + TextBox1.Text + "'AND Last_Name='" + TextBox2.Text + "'AND Company_Name='" + TextBox3.Text + "'", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            //da.Fill(dsAccountDetails);
            //List<GridView> dataGridView = new List<GridView>();
            //dataGridView = dsAccountDetails.Tables[0].AsEnumerable().Select(a => new GridView()
            //{
            //    Email = a.Field<string>("Email")
            //}).ToList();
            gvContactDetails.DataSource = dsAccountDetails;//dataGridView
            gvContactDetails.DataBind();
        }

        protected void btnGetSelectedRecords_Click(object sender, EventArgs e)
        {
            ////Response.Redirect("Export.aspx");
            //creation of table
            DataTable dtgetselectedRecords = new DataTable();
            // Adding Dynamic Column to the database using the add range method
            dtgetselectedRecords.Columns.AddRange(new DataColumn[1] { new DataColumn("Account") });
            //  Running a For Loop accross the First Grid view
            List<GridView> data = new List<GridView>();
            foreach (GridViewRow gvrow in gvContactDetails.Rows)
            {
                if (gvrow.RowType == DataControlRowType.DataRow)
                {
                    // Finding the Checkbox in the Gridview
                    CheckBox chckSelect = (gvrow.Cells[4].FindControl("ChckSelect") as CheckBox);
                    if (chckSelect != null && chckSelect.Checked)
                    {
                        GridView newRow = new GridView();
                        //List<GridView> list = getDataSource();
                        //GridView gridview = (GridView) List<gvrow>;
                        //assigning the records to a string to the cells
                        // newRow.S_No = gvrow.Cells[2].Text;
                        //lblAccount_ID.Text = gridview.Account_ID.ToString();
                        //lblContact_ID.Text = gridview.Contact_ID.ToString();
                        //txtAccount.Text = gridview.Account;
                        //txtSalutation.Text = gridview.Salutation;
                        //txtFirstName.Text = gridview.FirstName;
                        //txtLastName.Text = gridview.LastName;


                        newRow.Account_ID = new Guid(gvrow.Cells[2].Text);
                        newRow.Contact_ID = new Guid(gvrow.Cells[3].Text);
                        //newRow.Website = gvrow.Cells[5].Text;
                        newRow.FirstName = gvrow.Cells[6].Text;
                        newRow.LastName = gvrow.Cells[7].Text;
                        newRow.Account = gvrow.Cells[4].Text;
                        //newRow.Segment = gvrow.Cells[10].Text;
                        //newRow.MailingCity = gvrow.Cells[8].Text;
                        newRow.MailingCountry = gvrow.Cells[9].Text;
                        data.Add(newRow);
                        //(gvrow.Cells[4].FindControl("CheckSelect") as CheckBox)
                        // Adding the rows to the datatable
                    }
                }
                //Assigning the data sourec as data table that we have generated

                gvBulkCart.DataSource = data;
                gvBulkCart.DataBind();

            }
        }

        public GridView List { get; set; }

        protected void btnSearchByEmail_OnClick(object sender, EventArgs e)
        {
            DataSet dsAccountDetails = new DataSet();
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("Select b.*, a.Account , a.MailingCountry  From Accountbase a (NOLOCK)join ContactBase b (NOLOCK) on a.[Account_Id] = b.[Account_Id] where Email='" + textEmail.Text + "'", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dsAccountDetails);
            List<GridView> dataGridView = new List<GridView>();
            //var connection = new cventEntities1();
            //var partialResult = (from a in connection.AccountBases
            //    join b in connection.ContactBases on a.Account_ID equals b.AccountBase.Account_ID
            //                    where b.Email.Equals(textEmail.Text))
            //                    ;
            dataGridView = dsAccountDetails.Tables[0].AsEnumerable().Select(a => new GridView()
            {
                Email = a.Field<string>("Email"),
                Contact_ID = a.Field<Guid>("Contact_Id"),
                Account = a.Field<string>("Account"),
                MailingCountry = a.Field<string>("MailingCountry"),
                Salutation = a.Field<string>("Salutation"),
                FirstName = a.Field<string>("FirstName"),
                LastName = a.Field<string>("LastName"),
                Title = a.Field<string>("Title"),
                Prioritization = a.Field<string>("Prioritization"),
                DirectPhone = a.Field<string>("DirectPhone"),
                LinkedinId = a.Field<string>("LinkedinID"),
                LinkedinUrl = a.Field<string>("LinkedinUrl"),
                AlternatePhone = a. Field<string>("AlternatePhone"),
                AlternateEmail = a.Field<string>("AlternateEmail"),
                ContactInfo = a.Field<string>("ContactInfo"),
                ContactLevel_description = a.Field<string>("ContactLevel_description"),
                TitleLevel = a.Field<string>("TitleLevel"),
                JobFunction = a.Field<string>("JobFunction"),
                TaskPoc = a.Field<string>("TaskPOC"),
                AdditionalContactInfo = a.Field<string>("AdditionalContactInfo"),
                AssignTo = a.Field<string>("AssignTo"),
                EmailNotification = a.Field<string>("EmailNotification"),
                FollowUp_Open_Closed_Task = a.Field<string>("FollowUp_Open_Closed_Task"),
                FollowUpTask_AssignTo = a.Field<string>("FollowUpTask_AssignTo"),
                FollowUpTask_Comment = a.Field<string>("FollowUpTask_Comment"),
                FollowUpTask_Priority = a.Field<string>("FollowUpTask_Priority"),
                FollowUpTask_Subject = a.Field<string>("FollowUpTask_Subject"),
                IRReps_Comments = a.Field<string>("IRReps_Comments"),
                Keywords_Group = a.Field<string>("Keywords_Group"),
                LeadInfo = a.Field<string>("LeadInfo"),
                LeadStatus = a.Field<string>("LeadStatus"),
                MktgContactCat = a.Field<string>("MktgContactCat"),
                MobilePhone = a.Field<string>("MobilePhone"),
                OmniCampaignID = a.Field<string>("OmniCampaignID"),
                OmniCampaignNames = a.Field<string>("OmniCampaignNames"),
                OmniProduct = a.Field<string>("OmniProduct"),
                OmniRegions = a.Field<string>("OmniRegions"),
                Omni_Tactic_Final = a.Field<string>("Omni_Tactic_Final"),
                OmniSource = a.Field<string>("OmniSource"),
                OpenGroup_ClosedGroup = a.Field<string>("OpenGroup_ClosedGroup"),
                Open_Closed_Task = a.Field<string>("Open_Closed_Task"),
                Other_SM_Urls = a.Field<string>("Other_SM_Urls"),
                Contact_Type = a.Field<string>("Contact_Type"),
                IRRep = a.Field<string>("IRRep"),
                //CreatedOn = a.Field<DateTime>("CreatedOn"),
                CreatedBy = a. Field<string>("CreatedBy"),
                LastModifiedBy = a.Field<string>("LastModifiedBy"),
                //LastModifiedOn = a.Field<DateTime>("LastMofiedOn"),
                Status = a.Field<string>("Status"),
                ApprovedBy = a.Field<string>("ApprovedBy"),
                //ApprovedOn = a.Field<DateTime>("ApprovedOn"),
                ProjectName = a.Field<string>("ProjectName"),
                TeamName = a.Field<string>("TeamName"),
                LeadSource = a.Field<string>("LeadSource"),
                MarketingProject = a.Field<string>("MarketingProject"),
                SFDCContactID = a.Field<string>("SFDCContactID"),
                CampaignId = a.Field<string>("CampaignID"),
                Account_ID = a.Field<Guid>("Account_ID")
            }).ToList();
            //gvContactDetails.DataSource = dataGridView;//dataGridView
            gvContactDetails.DataSource = dataGridView;
            ViewState["datasource"] = dataGridView;
            gvContactDetails.DataBind();
        }

        public List<GridView> getDataSource()
        {
            if (ViewState["datasource"] == null)
            {
                return null;
            }
            else
            {
                return (List<GridView>) ViewState["datasource"];
            }
        }

        protected void lbkEdit_Click(object sender, EventArgs e)
        {
            LinkButton btnsubmit = sender as LinkButton;
            List<GridView> list = (List<GridView>) gvContactDetails.DataSource;
            //lblAccount_ID.Text = gvContactDetails.DataKeys[gRow.RowIndex].Value.ToString();
            //lblContact_ID.Text = gvContactDetails.DataKeys[gRow.RowIndex].Value.ToString();
            //txtAccount.Text = gRow.Cells[4].Text;
            //txtWebsite.Text = gRow.Cells[5].Text;
            //txtFirstName.Text = gRow.Cells[6].Text;
            //txtLastName.Text = gRow.Cells[7].Text;
            //txtMailingCity.Text = gRow.Cells[8].Text;
            //txtMailingCountry.Text = gRow.Cells[9].Text;
            //txtSegment.Text = gRow.Cells[10].Text;
            //pnlUpdatePanel.Visible = true;
            this.MPE.Show();

            //GridView dataGridView = (GridView) gvContactDetails.DataSource;
        }

        protected void btnModify_Click(Object sender, EventArgs e)
        {
            string Account_ID = lblAccount_ID.Text;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            con.Open();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "Athena_InsertNew_Staging";
            cmd.Parameters.AddWithValue("@Account_Id", lblAccount_ID.Text.ToString());
            cmd.Parameters.AddWithValue("@Contact_Id", lblContact_ID.Text.ToString());
            cmd.Parameters.AddWithValue("@Account", txtAccount.Text.ToString());
            cmd.Parameters.AddWithValue("@FirstName", txtFirstName.Text.ToString());
            cmd.Parameters.AddWithValue("@LastName", txtLastName.Text.ToString());
            //cmd.Parameters.AddWithValue("@MailingCity", txtMailingCity.Text.ToString());
            cmd.Parameters.AddWithValue("@MailingCountry", txtMailingCountry.Text.ToString());
            //cmd.Parameters.AddWithValue("@Segment", txtSegment.Text.ToString());
            cmd.ExecuteNonQuery();
            //Label1.Visible = true;
            //Label1.Text = "Records are updated Succesfully";    

            ////SqlCommand cmd = new SqlCommand("Update ContactBase_Temp set Account='" + txtAccount.Text + "', Website ='" + txtWebsite.Text + "', FirstName ='" + txtFirstName.Text + "', Lastname = '" + txtLastName.Text + "' , MailingCity = '" + txtMailingCity.Text + "', MailingCountry = '" + txtMailingCountry.Text + "' , Segment = '" + txtSegment.Text + "' where AccountId = " + lblAccount_ID.ToString(), con);
            ////cmd.ExecuteNonQuery();
            con.Close();
            lblmsg.Text = "Data Updated...";

            //Connection();
            //Query = "Athena_InsertNew_Staging";
            //SqlCommand com = new SqlCommand(Query, con);
            //com.CommandType = CommandType.StoredProcedure;
            //com.Parameters.AddWithValue("@Account", textAccount.Text.ToString());
            //com.Parameters.AddWithValue("@Website", textWebsite.Text.Tostring());
            //com.Parameters.AddWithValue("@FirstName", textFirstName.Text.ToString());
            //com.Parameters.AddWithValue("@LastName", textLastName.Text.ToString());
            //com.Parameters.AddWithValue("@MailingCity", textMailingCity.Text.Tostring());
            //com.Parameters.AddWithValue("@MailingCountry", textMailingCountry.Text.Tostring());
            //com.Parameters.AddWithValue("@Segment", textSegment.Text.ToString());
            //com.ExecuteNonQuery();
            //Label1.Visible = true;
            //Label1.Text = "Records are updated Succesfully";




        }
        public override void VerifyRenderingInServerForm(Control control)
        {
            //required to avoid the run time error"
            //control 'Gridview3' of type 'Gridview' must be placed inside a form tag with runat=server."

            //base.VerifyRenderingInServerForm(control);
        }



        protected void btnexport_Click(object sender, EventArgs e)
        {
            //   string Path = @"C:\Users\vmahendru\Downloads\test.xls";
            //   FileInfo FI = new FileInfo(Path);
            //   StringWriter stringWriter = new StringWriter();
            //   HtmlTextWriter htmlWrite = new HtmlTextWriter(stringWriter);
            //   DataGrid DataGrd = new DataGrid();
            //   DataGrd.DataSource = GridView3.DataSource;
            //   DataGrd.DataBind();

            //   DataGrd.RenderControl(htmlWrite);
            //   String directory = Path.Substring(0, Path.LastIndexOf("\\"));
            //   if (!Directory.Exists(directory))
            //   {
            //       Directory.CreateDirectory(directory);
            //   }
            //   System.IO.StreamWriter vw = new System.IO.StreamWriter(Path, true);
            //   stringWriter.ToString().Normalize();
            //   vw.Write(stringWriter.ToString());
            //   vw.Flush();
            //   vw.Close();
            //   WriteAttachment(FI.Name, "application/vmd.ms-excel", stringWriter.ToString());
            ////   Response.AddHeader("Content-Disposition", "attachment;filename=" + FileName);
            //   GridView3.GridLines = GridLines.Both;
            //   GridView3.HeaderStyle.Font.Bold = true;
            //   GridView3.RenderControl(htmlWrite);
            //   Response.Write(stringWriter.ToString());
            //   Response.End();





            Response.Clear();
            Response.Buffer = true;
            Response.ClearContent();
            Response.ClearHeaders();
            //Response.AddHeader("content-disposition", string.Format("attachment; filename={0}","Contact.xls"))
            Response.Charset = "";
            string FileName = "Contact" + DateTime.Now + ".xls";
            StringWriter strwritter = new StringWriter();
            HtmlTextWriter htmltextwrtter = new HtmlTextWriter(strwritter);
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.ContentType = "application/vnd.ms-excel";
            Response.AddHeader("Content-Disposition", "attachment;filename=" + FileName);
            gvBulkCart.GridLines = GridLines.Both;
            gvBulkCart.HeaderStyle.Font.Bold = true;
            gvBulkCart.RenderControl(htmltextwrtter);
            Response.Write(strwritter.ToString());
            Response.End();
        }

        //public static void WriteAttachment(string FileName, string FileType, string content)
        //{
        //    HttpResponse Response = System.Web.HttpContext.Current.Response;
        //    Response.ClearHeaders();
        //    Response.AppendHeader("Content-Disposition", "attachment;filename=" + FileName);
        //    Response.ContentType = FileType;
        //    Response.Write(content);
        //    Response.End();
        //}
        //Response.ContentType = "application/ms-excel";
        //StringWriter SW = new HtmlTextWriter(SW);

        //using(StingWriter sw new StringWriter())

        // HtmlTextWriter htw = new HtmlTextWriter(sw);
        //To export all pages
        //GridView3.AllowPaging=false;
        //this.BindGrid();
        //foreach(TableCell cell in GridView3.HeaderRow.Cells)
        //{
        //    cell.BackColor=GridView3.HeaderStyle.BackColor;
        //}
        //foreach(GridViewRow row in GridView3.Rows)
        //{
        //    row.BackColor= Color.White;
        //    foreach(TableCell cell in row.Cells)
        //    {
        //        if(row.RowIndex % 2== 0)
        //        {
        //            cell.BackColor=GridView3.AlternatingRowStyle.BackColor;
        //        }
        //        else
        //        {
        //            cell.BackColor=GridView3.RowStyle.BackColor;
        //        }
        //        cell.CssClass= "textmode";
        //    }

        //}
        //GridView3.RenderControl(hw);
        //string style =@"<style>.texmode{}</style>";
        //Response.Write(Style);
        //Response.Output.Write(sw.ToString());
        //Response.Flush();
        //Response.End();

        protected void gvContactDetails_OnRowCommand(object sender, GridViewCommandEventArgs e)
        {
            int rowIndex = Convert.ToInt32(e.CommandArgument);
            var ds = getDataSource();
            List<GridView> list = getDataSource();
            GridView gridView = (GridView) list[rowIndex];
            switch (e.CommandName)
            {
                case "EditRow":
                    lblAccount_ID.Text = gridView.Account_ID.ToString();
                    lblContact_ID.Text = gridView.Contact_ID.ToString();
                    txtAccount.Text = gridView.Account;
                    txtSalutation.Text = gridView.Salutation;
                    txtFirstName.Text = gridView.FirstName;
                    txtLastName.Text = gridView.LastName;
                    txtMailingCountry.Text = gridView.MailingCountry;
                    txtDirectPhone.Text = gridView.DirectPhone;
                    txtTitle.Text = gridView.Title;
                    txtLinkedinID.Text = gridView.LinkedinId;
                    txtLinkedinUrl.Text = gridView.LinkedinUrl;
                    txtAlternateEmail.Text = gridView.AlternateEmail;
                    txtContactInfo.Text = gridView.ContactInfo;
                    txtContactLevel_description.Text = gridView.ContactLevel_description;
                    txtTitleLevel.Text = gridView.TitleLevel;

                    //txtSegment.Text = gRow.Cells[10].Text;
                    pnlUpdatePanel.Visible = true;
                    this.MPE.Show();
                    break;
            }
        }
    }
    ////System.IO.StringWriter sw = new System.IO.StringWriter();
    ////HtmlTextWriter htw = new HtmlTextWriter(sw);
    ////GridView3.RenderControl(htw);
    ////Response.Write(sw.ToString());
    ////Response.End();


}






