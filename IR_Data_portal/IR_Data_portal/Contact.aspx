<%@ Page AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="IR_Data_portal.Contact" Language="C#" MasterPageFile="~/Site.Master" Title="Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 76px;
        }
    </style>
    <script type="text/javascript">
        function PanelSetVisible(visible) {
            var visibility = (visible === 'true');
            var panel = getById(lbEdit.ClientID);
            panel.visibility = visibility;
        }
    </script>
    <%--<script type ="text/javascript">
        function fnValidate() {
            if (document.getElementById("btnupdate").value == '') {
                alert('Data Updated')
            }
        }
      </script>--%>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2><%: Title %>Details</h2>
    <address>
        Check Details of Contact by two diffrent ways<br />
        <br />

    </address>

    <%--<address>
        <strong>Support:</strong>   <a href="mailto:Support@example.com">Support@example.com</a><br />
        <strong>Marketing:</strong> <a href="mailto:Marketing@example.com">Marketing@example.com</a>
    </address>

    --%>
    <table>
        <tr>
            <td>
                <asp:RadioButtonList>

                    <asp:RadioButton ID="RadioButton1" runat="server" GroupName="Search"
                        Text="Search By Name" AutoPostBack="true" OnCheckedChanged="RadioButton_CheckedChanged">
                    </asp:RadioButton>

                    <asp:Label ID="labelFirstName" runat="server" Text="First_Name" Visible="True"></asp:Label>

                    <asp:TextBox ID="textFirstName" runat="server" Visible="True"></asp:TextBox>

                    <asp:Label ID="labelLastName" runat="server" Text="Last_Name" ViewStateMode="Disabled"></asp:Label>

                    <asp:TextBox ID="textLastName" runat="server"></asp:TextBox>

                    <asp:Label ID="labelAccount" runat="server" Text="Account_Name" EnableViewState="True"></asp:Label>

                    <asp:TextBox ID="textAccount" runat="server" Visible="True"></asp:TextBox>


                    <asp:Button ID="btnSearchByName" runat="server" OnClick="btnSearchByName_OnClick" Text="Submit" />
                </asp:RadioButtonList>
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style1">

                <asp:RadioButton ID="RadioButton2" runat="server"
                    Text="Search By Email" AutoPostBack="true" OnCheckedChanged="RadioButton_CheckedChanged" />
                <br />
                <br />

                <asp:Label ID="labelEmail" runat="server" Text="Email" EnableViewState="True"></asp:Label>

                <asp:TextBox ID="textEmail" runat="server" EnableViewState="True"></asp:TextBox>

                <asp:Button ID="btnSearchByEmail" runat="server" OnClick="btnSearchByEmail_OnClick" Text="Submit" />
            </td>
        </tr>
    </table>





    <%-- <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>--%>
    <%--</td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Contact Check" OnClick="Button1_Click1" />
                </td>
            </tr>
            <tr>
                <td>
                    <br />
                   <asp:Button ID="Button2" runat="server" Text="Back" OnClick="Button2_Click2" />
                </td>
                <td>
                    <br />
                    <asp:Button ID="Button3" runat="server" Text="Insert"  OnClick="Button3_Click3"/>
                </td>
                <td>
                    <br />
                    <asp:Button ID="Button4" runat="server" Text="Account" OnClick="Button4_Click4" />
                </td>
                <td>
                    <br />
                    <asp:Button ID="Button5" runat="server" Text="Search"  OnClick="Button5_Click5"/>
                </td>
                
            </tr>--%>

    <%--Remove from their--%>
    <%-- <asp:GridView ID="GridView2" runat="server" DataKeyNames="AccountId" AutoGenerateColumns="True">--%>                    <%--AutoGenerateColumns="false" DataKeyNames="S_No" OnRowEditing="Gridview2_RowEditing" OnRowUpdating="Gridview2_RowUpdating" OnSelectedIndexChanged="Gridview2_SelectedIndexChanged"--%>
    <%--<Columns>

                        <asp:TemplateField HeaderText="CheckBox">
                            <ItemTemplate>
                                <asp:CheckBox ID="ChckSelect" runat="server" />
                            </ItemTemplate>
                        </asp:TemplateField>--%>
    <%-- <asp:TemplateField HeaderText="Edit">
                    <ItemTemplate>
                            <asp:LinkButton  ID="LinkEdit" Text="Edit" OnClick="LinkEdit_Click" runat="server"></asp:LinkButton>
                        </ItemTemplate>
                </asp:TemplateField>--%>


    <%--  <asp:CommandField ShowSelectButton="True"/>--%>
    <%--<asp:TemplateField>
                    <ItemTemplate>
                        <asp:LinkButton ID="btnSelect" runat="server" Text="Select" OnClick="btnSelect_Click"></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>--%>
    <%-- </Columns>

                </asp:GridView>

               <asp:GridView ID="GridView3" runat="server">
                </asp:GridView>
    --%>
    <%-- Take care from above --%>





    <div>
        <asp:GridView runat="server" ID="gvContactDetails" DataKeyNames="Account_Id" AutoGenerateColumns="True" CssClass="GridViewStyle" OnRowCommand="gvContactDetails_OnRowCommand">
            <RowStyle CssClass="RowStyle"></RowStyle>
            <AlternatingRowStyle CssClass="AltRowStyle"></AlternatingRowStyle>
            <HeaderStyle CssClass="HeaderStyle"></HeaderStyle>
            <SelectedRowStyle CssClass="SelectedRowStyle"></SelectedRowStyle>
            <Columns>
                <asp:TemplateField HeaderText="Checkbox">

                    <ItemTemplate>
                        <asp:CheckBox ID="ChckSelect" runat="server" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Edit">
                    <ItemTemplate>
                        <asp:LinkButton ID="lbEdit" runat="server" Text="Edit" CommandArgument="<%# Container.DataItemIndex %>" CommandName="EditRow">"></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="Account_Id" HeaderText="AccountId" />
                <asp:BoundField DataField="Contact_Id" HeaderText="ContactId" />
                <asp:BoundField DataField="Account" HeaderText="Account" />
                <asp:BoundField DataField="Salutation" HeaderText="Salutation" />
                <asp:BoundField DataField="FirstName" HeaderText="FirstName" />
                <asp:BoundField DataField="LastName" HeaderText="LastName" />
                <asp:BoundField DataField="Email" HeaderText="Email" />
                <asp:BoundField DataField="DirectPhone" HeaderText="DirectPhone" />
                <asp:BoundField DataField="Title" HeaderText="Title" />
                <asp:BoundField DataField="LinkedinUrl" HeaderText="LinkedIn Url" />
                <asp:BoundField DataField="LinkedinID" HeaderText="LikedinID" />
                <asp:BoundField DataField="AlternatePhone" HeaderText="AlternatePhone" />
                <asp:BoundField DataField="AlternateEmail" HeaderText="AlternateEmail" />
                <asp:BoundField DataField="ContactInfo" HeaderText="ContactInfo" />
                <asp:BoundField DataField="ContactLevel_description" HeaderText="ContactLevel_Description" />
                <asp:BoundField DataField="TitleLevel" HeaderText="TitleLevel" />
                <asp:BoundField DataField="JobFunction" HeaderText="JobFunction" />
                <asp:BoundField DataField="TaskPOC" HeaderText="TaskPOC" />
                <asp:BoundField DataField="AdditionalContactInfo" HeaderText="AdditionalContactInfo" />
                <asp:BoundField DataField="AssignTo" HeaderText="AssignTo" />
                <asp:BoundField DataField="EmailNotification" HeaderText="EmailNotification" />
                <asp:BoundField DataField="FollowUp_Open_Closed_Task" HeaderText="FollowUp_Open_Closed_Task" />
                <asp:BoundField DataField="FollowUpTask_AssignTo" HeaderText="FollowUpTask_AssignTo" />
                <asp:BoundField DataField="FollowUpTask_Comment" HeaderText="FollowUpTask_Comment" />
                <asp:BoundField DataField="FollowUpTask_Priority" HeaderText="FollowUpTask_Priority" />
                <asp:BoundField DataField="FollowUpTask_Subject" HeaderText="FollowUpTask_Subject" />
                <asp:BoundField DataField="IRReps_Comments" HeaderText="IRReps_Comment" />
                <asp:BoundField DataField="Keywords_Group" HeaderText="KeywordsGroup" />
                <asp:BoundField DataField="LeadInfo" HeaderText="LeadInfo" />
                <asp:BoundField DataField="LeadStatus" HeaderText="LeadStatus" />
                <asp:BoundField DataField="MktgContactcat" HeaderText="MktgContactCat" />
                <asp:BoundField DataField="MobilePhone" HeaderText="MobilePhone" />
                <asp:BoundField DataField="OmniCampaignID" HeaderText="OmniCampaignID" />
                <asp:BoundField DataField="OmniCampaignNames" HeaderText="OmniCampaignNames" />
                <asp:BoundField DataField="OmniProduct" HeaderText="OmniProduct" />
                <asp:BoundField DataField="OmniRegions" HeaderText="Omniregions" />
                <asp:BoundField DataField="OmniSource" HeaderText="OmniSource" />
                <asp:BoundField DataField="Omni_Tactic_final" HeaderText="Omni_Tactic_Final" />
                <asp:BoundField DataField="OpenGroup_ClosedGroup" HeaderText="OpenGroup_ClosedGroup" />
                <asp:BoundField DataField="Open_Closed_Task" HeaderText="Open_Closed_Task" />
                <asp:BoundField DataField="Other_SM_Urls" HeaderText="Other_SM_Urls" />
                <asp:BoundField DataField="Contact_Type" HeaderText="Contact type" />
                <asp:BoundField DataField="IRRep" HeaderText="IRRep" />
                <asp:BoundField DataField="CreatedOn" HeaderText="CreatedOn" />
                <asp:BoundField DataField="CreatedBy" HeaderText="CreatedBy" />
                <asp:BoundField DataField="LastModifiedBy" HeaderText="LastModifiedBy" />
                <asp:BoundField DataField="LastModifiedOn" HeaderText="LastModifiedOn" />
                <asp:BoundField DataField="Status" HeaderText="Status" />
                <asp:BoundField DataField="ApprovedBy" HeaderText="ApprovedBy" />
                <asp:BoundField DataField="ApprovedOn" HeaderText="ApprovedOn" />
                <asp:BoundField DataField="ProjectName" HeaderText="ProjectName" />
                <asp:BoundField DataField="TeamName" HeaderText="TeamName" />
                <asp:BoundField DataField="LeadSource" HeaderText="LeadSource" />
                <asp:BoundField DataField="MarketingProject" HeaderText="MarketingProject" />
                <asp:BoundField DataField="SFDCContactID" HeaderText="SFDCContactID" />
                <asp:BoundField DataField="CampaignID" HeaderText="CampaignID" />
                <%--<asp:BoundField DataField="MailingCity" HeaderText="MailingCity" />
                <asp:BoundField DataField="MailingCountry" HeaderText="MailingCountry" />
                <asp:BoundField DataField="Segment" HeaderText="Segment" />--%>
            </Columns>
        </asp:GridView>
        <asp:Label ID="lblmsg" runat="server" />
        <%-- <ajaxToolkit:ModalPopupExtender ID="ModalPopupExtender1" runat="server" TargetControlID="btnShowPopup" PopupControlID="pnlUpdatePanel" CancelControlID="btnCancel" BackgroundCssClass="modalBackground" />--%>
        <asp:Button ID="btnShowPopup" runat="server" Style="display: none" />
        <ajaxToolkit:ModalPopupExtender ID="MPE" runat="server"
            TargetControlID="btnShowPopup"
            CancelControlID="btnClosePopUp"
            PopupControlID="pnlUpdatePanel"
            DropShadow="True">
        </ajaxToolkit:ModalPopupExtender>

        <asp:Panel ID="pnlUpdatePanel" runat="server" BackColor="white" Height="1000px" Width="1000px">
            <%--  <asp:Button ID="btnCancel" runat="server" Text="Cancel" Visible="false" />--%>
            <table>
                <tr style="background-color: #33cc66">
                    <td>Contact Details</td>
                </tr>
                <tr>
                    <td>AccountId</td>
                    <td>
                        <asp:Label ID="lblAccount_ID" runat="server"></asp:Label>
                    </td>

                    <td>ContactId
                    </td>
                    <td>
                        <asp:Label ID="lblContact_ID" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Account :
                    </td>
                    <td>
                        <asp:TextBox ID="txtAccount" runat="server"></asp:TextBox>
                    </td>

                    <td>Salutation :
                    </td>
                    <td>
                        <asp:TextBox ID="txtSalutation" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>FirstName :
                    </td>
                    <td>
                        <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
                    </td>

                    <td>LastName :
                    </td>
                    <td>
                        <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Title :
                    </td>
                    <td>
                        <asp:TextBox ID="txtTitle" runat="server"></asp:TextBox>
                    </td>

                    <td>MailingCountry :
                    </td>
                    <td>
                        <asp:TextBox ID="txtMailingCountry" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Prioritization :
                    </td>
                    <td>
                        <asp:TextBox ID="txtPrioritization" runat="server"></asp:TextBox>
                    </td>

                    <td>DirectPhone :
                    </td>
                    <td>
                        <asp:TextBox ID="txtDirectPhone" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>LinkedinUrl :
                    </td>
                    <td>
                        <asp:TextBox ID="txtLinkedinUrl" runat="server"></asp:TextBox>
                    </td>

                    <td>LinkedinID  :
                    </td>
                    <td>
                        <asp:TextBox ID="txtLinkedinID" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>AlternatePhone  :
                    </td>
                    <td>
                        <asp:TextBox ID="txtAlternateEmail" runat="server"></asp:TextBox>
                    </td>

                    <td>ContactInfo :
                    </td>
                    <td>
                        <asp:TextBox ID="txtContactInfo" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>ContactLevel_description :
                    </td>
                    <td>
                        <asp:TextBox ID="txtContactLevel_description" runat="server"></asp:TextBox>
                    </td>

                    <td>TitleLevel :
                    </td>
                    <td>
                        <asp:TextBox ID="txtTitleLevel" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>JobFunction  :
                    </td>
                    <td>
                        <asp:TextBox ID="txtJobFunction" runat="server"></asp:TextBox>
                    </td>

                    <td>TaskPOC  :
                    </td>
                    <td>
                        <asp:TextBox ID="txtTaskPOC" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>AdditionalContactInfo  :
                    </td>
                    <td>
                        <asp:TextBox ID="txtAdditionalContactInfo" runat="server"></asp:TextBox>
                    </td>

                    <td>AssignTo   :
                    </td>
                    <td>
                        <asp:TextBox ID="txtAssignTo" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>EmailNotification :
                    </td>
                    <td>
                        <asp:TextBox ID="txtEmailNotification" runat="server"></asp:TextBox>
                    </td>

                    <td>FollowUp_Open_Closed_Task :
                    </td>
                    <td>
                        <asp:TextBox ID="txtFollowUp_Open_Closed_Task" runat="server"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td>FollowUpTask_AssignTo  :
                    </td>
                    <td>
                        <asp:TextBox ID="txtFollowUpTask_AssignTo" runat="server"></asp:TextBox>
                    </td>

                    <td>FollowUpTask_Comment :
                    </td>
                    <td>
                        <asp:TextBox ID="txtFollowUpTask_Comment" runat="server"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td>FollowUpTask_Priority   :
                    </td>
                    <td>
                        <asp:TextBox ID="txtFollowUpTask_Priority" runat="server"></asp:TextBox>
                    </td>

                    <td>FollowUpTask_Subject :
                    </td>
                    <td>
                        <asp:TextBox ID="txtFollowUpTask_Subject" runat="server"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td>IRReps_Comment   :
                    </td>
                    <td>
                        <asp:TextBox ID="txtIRReps_Comments" runat="server"></asp:TextBox>
                    </td>

                    <td>Keywords_Group  :
                    </td>
                    <td>
                        <asp:TextBox ID="txtKeywords_Group" runat="server"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td>LeadInfo    :
                    </td>
                    <td>
                        <asp:TextBox ID="txtLeadInfo" runat="server"></asp:TextBox>
                    </td>

                    <td>LeadStatus  :
                    </td>
                    <td>
                        <asp:TextBox ID="txtLeadStatus" runat="server"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td>MktgContactCAT :
                    </td>
                    <td>
                        <asp:TextBox ID="txtMktgContact" runat="server"></asp:TextBox>
                    </td>

                    <td>MobilePhone :
                    </td>
                    <td>
                        <asp:TextBox ID="txtMobilePhone" runat="server"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td>OmniCampaignID :
                    </td>
                    <td>
                        <asp:TextBox ID="txtOmniCampaignID" runat="server"></asp:TextBox>
                    </td>

                    <td>OmniCampaignNames  :
                    </td>
                    <td>
                        <asp:TextBox ID="txtOmniCamoaignNames" runat="server"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td>OmniProduct  :
                    </td>
                    <td>
                        <asp:TextBox ID="txtOmniProduct" runat="server"></asp:TextBox>
                    </td>

                    <td>OmniRegions :
                    </td>
                    <td>
                        <asp:TextBox ID="txtOmniRegions" runat="server"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td>OmniSource :
                    </td>
                    <td>
                        <asp:TextBox ID="txtOmniSource" runat="server"></asp:TextBox>
                    </td>

                    <td>Omni_Tactic_Final  :
                    </td>
                    <td>
                        <asp:TextBox ID="txtOmniTactic_Final" runat="server"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td>OpenGroup_ClosedGroup :
                    </td>
                    <td>
                        <asp:TextBox ID="txtOpenGroup_ClosedGroup" runat="server"></asp:TextBox>
                    </td>

                    <td>Other_SM_Urls  :
                    </td>
                    <td>
                        <asp:TextBox ID="txtOther_SM_URLs" runat="server"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td>Contact_Type :
                    </td>
                    <td>
                        <asp:TextBox ID="txtContact_Type" runat="server"></asp:TextBox>
                    </td>

                    <td>IRRep :
                    </td>
                    <td>
                        <asp:TextBox ID="txtIRRep" runat="server"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td>CreatedOn :
                    </td>
                    <td>
                        <asp:TextBox ID="txtCreatedOn" runat="server"></asp:TextBox>
                    </td>

                    <td>CreatedBy   :
                    </td>
                    <td>
                        <asp:TextBox ID="txtCreatedBy" runat="server"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td>LastModifiedBy  :
                    </td>
                    <td>
                        <asp:TextBox ID="txtLastModifiedBy" runat="server"></asp:TextBox>
                    </td>

                    <td>LastModifiedOn  :
                    </td>
                    <td>
                        <asp:TextBox ID="txtLastModifiedOn" runat="server"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td>Status  :
                    </td>
                    <td>
                        <asp:TextBox ID="txtStatus" runat="server"></asp:TextBox>
                    </td>

                    <td>ApprovedBy :
                    </td>
                    <td>
                        <asp:TextBox ID="txtApprovedBy" runat="server"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td>ApprovedOn  :
                    </td>
                    <td>
                        <asp:TextBox ID="txtApprovedOn" runat="server"></asp:TextBox>
                    </td>

                    <td>ProjectName  :
                    </td>
                    <td>
                        <asp:TextBox ID="txtProjectName" runat="server"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td>TeamName   :
                    </td>
                    <td>
                        <asp:TextBox ID="txtTeamName" runat="server"></asp:TextBox>
                    </td>

                    <td>LeadSource  :
                    </td>
                    <td>
                        <asp:TextBox ID="txtLeadSource" runat="server"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td>MarketingProject :
                    </td>
                    <td>
                        <asp:TextBox ID="txtMarketingProject" runat="server"></asp:TextBox>
                    </td>

                    <td>SFDCContactID  :
                    </td>
                    <td>
                        <asp:TextBox ID="txtSFDCContactID" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>CampaignID   :
                    </td>
                    <td>
                        <asp:TextBox ID="txtCampaignID" runat="server"></asp:TextBox>
                    </td>
                </tr>



                <tr>
                    <td>
                        <asp:Button ID="btnUpdate" CommandName="Update" runat="server" Text="Update Data" OnClick="btnModify_Click" OnClientClick="fnValidate()" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnClosePopUp" Text="close popup" runat="server" />
                    </td>
                </tr>
            </table>
        </asp:Panel>
    </div>


    <asp:Button ID="btnAddCart" runat="server" Text="Bulk Add Cart" OnClick="btnGetSelectedRecords_Click" />
    <asp:GridView ID="gvBulkCart" runat="server">
    </asp:GridView>
    <br />
    <asp:Button ID="btnexport" Text="Export to Excel" runat="server" OnClick="btnexport_Click" />
</asp:Content>


