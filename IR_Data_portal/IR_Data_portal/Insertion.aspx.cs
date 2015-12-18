using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Text;
using System.Web.UI.WebControls.WebParts;
using System.Web.WebSockets;
using IR_Data_portal;

namespace IR_Data_portal
{
    public partial class Insertion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            tbUserName.Text = Session["UserName"].ToString();
            tbUserName.ReadOnly = true;

            if (ddlTeamName.SelectedValue== "International")
            {
                tbLinkedInUrl.Visible = true;
                tbCurrentEventUrl.Visible = true;
            }
            if (ddlProjectName.SelectedValue =="IRCEL")
            {
                tbLinkedInUrl.Visible = true;
                tbCurrentEventUrl.Visible = false;
            }

            if (!IsPostBack)
            {
                ddlMailingCountry.AppendDataBoundItems = true;
                string strConnstring = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
                String strQuery = "Select distinct Country from lookup";
                SqlConnection con = new SqlConnection(strConnstring);
                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = strQuery;
                cmd.Connection = con;
                try
                {
                    con.Open();
                    ddlMailingCountry.DataSource = cmd.ExecuteReader();
                    ddlMailingCountry.DataTextField = "Country";
                    ddlMailingCountry.DataBind();
                }
                catch (Exception ex)
                {
                    throw ex;

                }
                finally
                {
                    con.Close();
                    con.Dispose();
                }
            }
            if (!IsPostBack)
            {
                ddlSelectState.AppendDataBoundItems = true;
                // string strConnstring = configurationManger.ConnectionStrings["dbconnection"].ConnectionString;
                String strQuery = "Select Distinct State from lookup";
                SqlConnection con = new SqlConnection("dbconnection");
                SqlCommand cmd = new SqlCommand();
                cmd.CommandType= CommandType.Text;
                cmd.CommandText = strQuery;
                cmd.Connection = con;
                try
                {
                    con.Open();
                    ddlSelectState.DataSource = cmd.ExecuteReader();
                    ddlSelectState.DataTextField = "State";
                    ddlSelectState.DataBind();
                }
                catch (Exception ex)
                {

                    throw ex;
                }
                finally
                {
                    con.Close();
                    con.Dispose();
                }

            }

            if (!IsPostBack)
            {
                ddlSegment.AppendDataBoundItems = true;
                String strConnstring = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
                String strQuery = "Select distinct Segment from Lookup";
                SqlConnection con = new SqlConnection(strConnstring);
                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = strQuery;
                cmd.Connection = con;
                try
                {
                    con.Open();
                    ddlSegment.DataSource = cmd.ExecuteReader();
                    ddlSegment.DataTextField = "Segmnet";
                    ddlSegment.DataBind();
                }
                catch (Exception ex)
                {

                    throw ex;
                }
                finally
                {
                    con.Close();
                    con.Dispose();
                }
            }

            if (!IsPostBack)
            {
                ddlTeamName.AppendDataBoundItems = true;
                string strConnstring = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
                String strQuery = "Select Distinct Team_name from lookup";
                SqlConnection con = new SqlConnection(strConnstring);
                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = strQuery;
                cmd.Connection = con;
                try
                {
                    con.Open();
                    ddlTeamName.DataSource = cmd.ExecuteReader();
                    ddlTeamName.DataTextField = "Team_name";
                    ddlTeamName.DataBind();

                }
                catch (Exception ex)
                {

                    throw ex;
                }
                finally
                {
                    con.Close();
                    con.Dispose();
                }
            }



            if (!IsPostBack)
            {
                ddlMobileAppOs.AppendDataBoundItems = true;
                String strConnstring = ConfigurationManager.ConnectionStrings["dbconncetion"].ConnectionString;
                String strQuery = "select distinct mobil_app_os from lookup";
                SqlConnection con= new SqlConnection(strConnstring);
                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = strQuery;
                 cmd.Connection = con;
                try
                {
                    con.Close();
                    ddlMobileAppOs.DataSource = cmd.ExecuteReader();
                    ddlMobileAppOs.DataTextField = "Mobil_App_OS";
                    ddlMobileAppOs.DataBind();
                }
                catch (Exception ex)
                {

                    throw ex;
                }
                finally
                {
                    con.Close();
                    con.Dispose();
                }
                
            }


            if (!IsPostBack)
            {
                ddlDeveloper.AppendDataBoundItems = true;
                String strConnstring = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
                String strQuery = "Select distinct Developer from lookup";
                SqlConnection con = new SqlConnection(strConnstring);
                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = strQuery;
                cmd.Connection = con;
                try
                {
                    con.Open();
                    ddlDeveloper.DataSource = cmd.ExecuteReader();
                    ddlDeveloper.DataTextField = "developer";
                    ddlDeveloper.DataBind();
                }
                catch (Exception ex)
                {

                    throw ex;
                }
                finally
                {
                    con.Close();
                    con.Dispose();
                }
            }

            if (!IsPostBack)
            {
                ddlEventCompetitor.AppendDataBoundItems = true;
                String strConnstring = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
                String strQuery = "select distinct event_competitor from lookup";
                SqlConnection con = new SqlConnection(strConnstring);
                SqlCommand cmd = new SqlCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = strQuery;
                cmd.Connection = con;
                try
                {
                    con.Open();
                    ddlEventCompetitor.DataSource = cmd.ExecuteReader();
                    ddlEventCompetitor.DataTextField = "event_competitor";
                    ddlEventCompetitor.DataBind();
                }
                catch (Exception ex)
                {

                    throw ex;
                }

                finally
                {
                    con.Close();
                    con.Dispose();
                }
            }



        }

        protected void btnClear_OnClick(object sender, EventArgs e)
        {
            Page.Response.Redirect("Insertion.aspx",false);
            
        }

        protected void btnSubmit_OnClick(object sender, EventArgs e)
        {
         DataSet ds = new DataSet();
            SqlConnection con =new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
            con.Open();
            SqlCommand cmd = new SqlCommand("Insert into AccountBase_Temp");
            cmd.ExecuteNonQuery();
            Response.Write("Query Executed");
        }

        protected void ddlMobileAppOs_OnSelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void ddlMailingCountry_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void ddlSelectState_SelectedIndexChanged(object sender, EventArgs e)
        {
          
        }

        protected void ddlTeamName_SelectedIndexChanged(object sender, EventArgs e)
        {
           ddlProjectName.Items.Clear();
            ddlProjectName.Items.Add(new ListItem("select Project Name",""));
            ddlProjectName.AppendDataBoundItems = true;
            String strconnString = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
            String strQuery ="Select distinct Project_Name from lokup where team_name = @team_name and Project_Name is not null";
            SqlConnection con = new SqlConnection(strconnString);
            SqlCommand cmd = new SqlCommand();
            cmd.Parameters.AddWithValue("@taem_name", ddlTeamName.SelectedValue);
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = strQuery;
            cmd.Connection = con;
            try
            {
                con.Open();
                ddlProjectName.DataSource = cmd.ExecuteReader();
                ddlTeamName.DataTextField = "project_name";
                ddlTeamName.DataBind();
                if (ddlProjectName.Items.Count > 1)
                {
                    ddlProjectName.Enabled = true;
                }
                else
                {
                    ddlProjectName.Enabled = false;
                }
            }
            catch (Exception ex)
            {

                throw ex;
            }
            finally
            {
                con.Close();
                con.Dispose();
            }

            }

       

        protected void ddlProjectName_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void ddlSegment_SelectedIndexChanged(object sender, EventArgs e)
        {
            ddlIndustry.Items.Clear();
            ddlIndustry.Items.Add(new ListItem("Select Industry",""));
            ddlIndustrySubSegment.Items.Clear();
            ddlIndustrySubSegment.Items.Add(new ListItem("Select Sub_Segment",""));
            ddlIndustry.AppendDataBoundItems = true;
            String strConnstring = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
            String strQuery = "Select distinct Industry from lookup where Segment=@segment";
            SqlConnection con = new SqlConnection(strConnstring);
            SqlCommand cmd = new SqlCommand();
            cmd.Parameters.AddWithValue("@Segmet", ddlSegment.SelectedValue);
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = strQuery;
            cmd.Connection = con;
            try
            {
                con.Open();
                ddlIndustry.DataSource = cmd.ExecuteReader();
                ddlIndustry.DataTextField = "Industry";
                ddlIndustry.DataBind();
                if (ddlIndustry.Items.Count > 1)
                {
                    ddlIndustry.Enabled = true;
                }
                else
                {
                    ddlIndustry.Enabled = true;
                    ddlIndustrySubSegment.Enabled = false;
                }
            }
            catch (Exception ex)
            {

                throw ex;
            }
            finally
            {
                con.Close();
                con.Dispose();
            }
        }

        protected void ddlIndustry_SelectedIndexChanged(object sender, EventArgs e)
        {
            ddlIndustrySubSegment.Items.Clear();
            ddlIndustrySubSegment.Items.Add(new ListItem("Select Sub-Segment", ""));
            ddlIndustrySubSegment.AppendDataBoundItems = true;
            String strConnstring = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
            String strQuery = "Select sub_Segment from Lookup where Industry= @Industry";
            SqlConnection con = new SqlConnection(strConnstring);
            SqlCommand cmd = new SqlCommand();
            cmd.Parameters.AddWithValue("@Industry", ddlIndustry.SelectedItem.Value);
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = strQuery;
            cmd.Connection = con;
            try
            {
                con.Open();
                ddlIndustrySubSegment.DataSource = cmd.ExecuteReader();
                ddlIndustrySubSegment.DataTextField = "Sub_Segment";
                ddlIndustrySubSegment.DataBind();
                if (ddlIndustrySubSegment.Items.Count > 1)
                {
                    ddlIndustrySubSegment.Enabled = true;
                }
                else
                {
                    ddlIndustrySubSegment.Enabled = false;
                }
            }
            catch (Exception ex)
            {

                throw ex;
            }
            finally
            {
                con.Close();
                con.Dispose();
            }


        }

        protected void ddlIndustrySubSegment_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void ddlEventType_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
          Response.Redirect("NewContactSearch.aspx");
        }
    }
}