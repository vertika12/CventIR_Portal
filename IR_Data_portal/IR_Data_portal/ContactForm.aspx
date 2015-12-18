<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ContactForm.aspx.cs" Inherits="IR_Data_portal.ContactForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    
    <table>
    
        <tr>
            <td>
                <asp:Label ID="lblFirstName" runat="server" Text="First Name"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="tbFirstName" runat="server"></asp:TextBox>
            </td>
        
             <td>
                <asp:Label ID="lblLastName" runat="server" Text="Last Name"></asp:Label>
             </td>
            <td>
                <asp:TextBox ID="tbLastName" runat="server"></asp:TextBox>
            </td>
        </tr>
        
        <tr>
           
            <td>
                <asp:Label ID="lblSalutation" runat="server" Text="Salutation"></asp:Label>
            </td>
            <td>
            <asp:DropDownList ID="ddlSalutation" runat="server" OnSelectedIndexChanged="ddlSalutation_SelectedIndexChanged">
            
                <asp:ListItem>Select Salutation</asp:ListItem>
                 <asp:ListItem>Mr.</asp:ListItem>
                    <asp:ListItem>Mrs.</asp:ListItem>
                    <asp:ListItem>Miss.</asp:ListItem>
                </asp:DropDownList>
                </td>

            <td>
                <asp:Label ID="lblAccountName" runat="server" Text="AccountName"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="tbAccountName" runat="server"></asp:TextBox>
            </td>
            
            
           </tr>
       

        <tr>
            <td>
                <asp:Label ID="lblEmail" runat="server" Text="Email"></asp:Label>
           
</td>
            <td>
            <asp:TextBox ID="tbEmail" runat="server"></asp:TextBox>
        <asp:RegularExpressionValidator ID="ReExpl" runat="server" ControlToValidate="TextBox3" ErrorMessage="eg. abc@domain.com" ForeColor="Red"
            validationExpression="\w+([-+.']\w+)*@\w+(-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
               </td>
            <td>
                <asp:RequiredFieldValidator ID="reql" runat="server" ErrorMessage="Mandatory" ControlToValidate="TextBox3" ForeColor="Red"/>
           </td>
                <td>
           <asp:Button ID="Btnverify" runat="server" OnClick="Btnverify_Click" Text="Verify" />
                </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblStreet" runat="server" Text="StreetAddress"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="tbStreet" runat="server"></asp:TextBox>
            </td>
          
            <td>
                <asp:Label ID="lblCity" runat="server" Text="City"></asp:Label>
            </td>
          <td>
              <asp:TextBox ID="tbCity" runat="server"></asp:TextBox>
          </td>
           </tr>
        <tr>
            <td>
                <asp:Label ID="lblState" runat="server" Text="State"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="tbState" runat="server"></asp:TextBox>
            </td>
        
            <td>
               <asp:Label ID="lblZip" runat="server" text="Zip"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="tbZip" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblMailingCoubtry" runat="server" Text="Mailing Country"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="tbMailingCountry" runat="server"></asp:TextBox>
            </td>
        </tr>
         <tr>
            
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblDirectPhone" runat="server" Text="Direct Phone No"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="tbDirectPhone" runat="server"> </asp:TextBox>
            </td>
            
            <td>
                <asp:Label ID="lblPhone" runat="server" Text="Phone No."></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="tbPhone" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                 <asp:Label ID="lblLinkedInID" runat="server" Text="LinkedIn ID"></asp:Label>
            </td>
           <td>
               <asp:TextBox ID="tbLinkedInID" runat="server"></asp:TextBox>
           </td>
            <td>
                <asp:Label ID="lblLinkedINUrl" runat="server" Text="LinkedInUrl"></asp:Label>

            </td>
            <td>
                <asp:TextBox ID="tbLinkedInUrl" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblTitle" runat="server" Text="Title"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="tbTitle" runat="server"></asp:TextBox>
            </td>
       
            <td>
                <asp:Label ID="lblPrioritization" runat="server" Text="Prioritization"></asp:Label>
            </td>
            <td>
                
                <asp:DropDownList ID="ddlPrioritization" runat="server" OnSelectedIndexChanged="ddlPrioritization_SelectedIndexChanged">
                   
                    <asp:ListItem>Select Priority</asp:ListItem>
                     <asp:ListItem>High</asp:ListItem>
                    <asp:ListItem>Low</asp:ListItem>
                    <asp:ListItem>Best-H</asp:ListItem>
                    <asp:ListItem>Best-L</asp:ListItem>
                <asp:ListItem>Low</asp:ListItem>
                     </asp:DropDownList>
            </td>
            
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblAlternateEmail" runat="server" Text="Aletrnate Email"></asp:Label>

            </td>
            <td>
                <asp:TextBox  ID = "tbAlternateEmail" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label  ID="lblContactInfo" runat="server" Text="Contact Info"></asp:Label>
            </td>
            <td>
                <asp:TextBox  ID="tbContactInfo" runat="server" ></asp:TextBox>
            </td>
        
            <td>
                <asp:Label ID="lblTitleLevel" runat="server" Text="Title Level"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="tbTitleLevel" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblJobFunction" runat="server" Text="Job Function"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="tbJobFunction" runat="server"></asp:TextBox>
            </td>
        
            <td>
                <asp:Label ID="lblTaskPoc" runat="server" Text="Task Poc"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="tbTaskPoc" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblAdditionalContactInfo" runat="server" Text="Additional ContactInfo"></asp:Label>
            </td>
            <td>
                <asp:TextBox  ID="tbAdditionalContactInfo" runat="server"></asp:TextBox>
            </td>
        
            <td>
                <asp:Label ID="lblAssignTo" runat="server" Text="AssignTo"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="tbAssignTo" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblEmailNotification" runat="server" Text="Email Notification"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="tbEmailNotification" runat="server"></asp:TextBox>
            </td>
       
        <td>
            <asp:Label  ID ="lblFollowUpTask_AssignTo" runat="server" Text="FollowUpTask_AssignTo "></asp:Label>
        </td>
            <td>
                <asp:TextBox ID="tbFollowUpTask_AssignTo" runat="server"></asp:TextBox>
            </td>
            </tr>
        <tr>
            <td>
                <asp:Label ID="lblFollowUpTask_Comment" runat="server" Text="FollowUpTask_Comment"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="tbFollowUpTask_Comment" runat="server"></asp:TextBox>
            </td>
        
            <td>
                <asp:Label ID="lblFollowUp_Open_Closed_Task" runat="server" Text="FollowUp_Open_Closed_Task"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="tbFollowUp_Open_Closed_Task" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblFollowUpTask_Priority" runat="server" Text="FollowUpTask_Priority"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="tbFollowUpTask_Priority" runat="server"></asp:TextBox>
            </td>
        
           <td>
               <asp:Label ID="lblFollowUpTask_Subject" runat="server" Text="FollowUpTask_Subject"></asp:Label>
           </td>
            <td>
                <asp:TextBox ID="tbFollowUpTask_Subject" runat="server"></asp:TextBox>
            </td>
       </tr>
        <tr>
            <td>
                <asp:Label ID="lblIRReps_Comments" runat="server" Text="IRReps_Comments"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="tbIRReps_Comments" runat="server"></asp:TextBox>
            </td>
        
           <td>
               <asp:Label ID="lblKeywords_Group" runat="server" Text="Keywords_Group"></asp:Label>
           </td>
            <td>
                <asp:TextBox ID="tbKeywords_Group" runat="server"></asp:TextBox>
            </td>
       </tr>
        <tr>
            <td>
                <asp:Label ID="lblLeadInfo" runat="server" Text="LeadInfo"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="tbLeadInfo" runat="server"></asp:TextBox>
            </td>
        
           <td>
               <asp:Label ID="lblLeadStatus" runat="server" Text="LeadStatus"></asp:Label>
           </td>
            <td>
                <asp:TextBox ID="tbLeadStatus" runat="server"></asp:TextBox>
            </td>
       </tr>
        <tr>
            <td>
                <asp:Label ID="lblMktgContactCAT" runat="server" Text="MktgContactCAT"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="tbMktgContactCAT" runat="server"></asp:TextBox>
            </td>
        
           <td>
               <asp:Label ID="lblOmniCampaignID" runat="server" Text="OmniCampaignID"></asp:Label>
           </td>
            <td>
                <asp:TextBox ID="tbOmniCampaignID" runat="server"></asp:TextBox>
            </td>
       </tr>
        <tr>
            <td>
                <asp:Label ID="lblOmniCampaignNames" runat="server" Text="OmniCampaignNames"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="tbOmniCampaignNames" runat="server"></asp:TextBox>
            </td>
        
           <td>
               <asp:Label ID="lblOmniProduct" runat="server" Text="OmniProduct"></asp:Label>
           </td>
            <td>
                <asp:TextBox ID="tbOmniProduct" runat="server"></asp:TextBox>
            </td>
       </tr>
        <tr>
            <td>
                <asp:Label ID="lblOmniRegions" runat="server" Text="OmniRegions"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="tbOmniRegions" runat="server"></asp:TextBox>
            </td>
        
           <td>
               <asp:Label ID="lblOmniSource" runat="server" Text="OmniSource"></asp:Label>
           </td>
            <td>
                <asp:TextBox ID="tbOmniSource" runat="server"></asp:TextBox>
            </td>
       </tr>
        <tr>
            <td>
                <asp:Label ID="lblOmni_Tactic_Final" runat="server" Text="Omni_Tactic_Final"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TtbOmni_Tactic_Final" runat="server"></asp:TextBox>
            </td>
        
           <td>
               <asp:Label ID="lblOpenGroup_ClosedGroup" runat="server" Text="OpenGroup_ClosedGroup"></asp:Label>
           </td>
            <td>
                <asp:TextBox ID="tbOpenGroup_ClosedGroup" runat="server"></asp:TextBox>
            </td>
       </tr>
        <tr>
            <td>
                <asp:Label ID="lblOpen_Closed_Task" runat="server" Text="Open_Closed_Task"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="tbOpen_Closed_Task" runat="server"></asp:TextBox>
            </td>
        
           <td>
               <asp:Label ID="lblOther_SM_Urls" runat="server" Text="Other_SM_Urls"></asp:Label>
           </td>
            <td>
                <asp:TextBox ID="tbOther_SM_Urls" runat="server"></asp:TextBox>
            </td>
       </tr>
        <tr>
            <td>
                <asp:Label ID="lblContact_Type" runat="server" Text="Contact_Type"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="tbContact_Type" runat="server"></asp:TextBox>
            </td>
        
           <td>
               <asp:Label ID="lblIRRep" runat="server" Text="IRRep"></asp:Label>
           </td>
            <td>
                <asp:TextBox ID="tbIRRep" runat="server"></asp:TextBox>
            </td>
       </tr>
        <tr>
            <td>
                <asp:Label ID="lblCreatedOn" runat="server" Text="CreatedOn"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="tbCreatedOn" runat="server"></asp:TextBox>
            </td>
        
           <td>
               <asp:Label ID="lblCreatedBy" runat="server" Text="CreatedBy"></asp:Label>
           </td>
            <td>
                <asp:TextBox ID="tbCreatedBy" runat="server"></asp:TextBox>
            </td>
       </tr>
        <tr>
            <td>
                <asp:Label ID="lblLastModifiedBy" runat="server" Text="LastModifiedBy"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="tbLastModifiedBy" runat="server"></asp:TextBox>
            </td>
        
           <td>
               <asp:Label ID="lblLastModifiedOn" runat="server" Text="LastModifiedOn"></asp:Label>
           </td>
            <td>
                <asp:TextBox ID="tbLastModifiedOn" runat="server"></asp:TextBox>
            </td>
       </tr>
        <tr>
            <td>
                <asp:Label ID="lblStatus" runat="server" Text="Status"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="tbStatus" runat="server"></asp:TextBox>
            </td>
        
           <td>
               <asp:Label ID="lblApprovedBy" runat="server" Text="ApprovedBy"></asp:Label>
           </td>
            <td>
                <asp:TextBox ID="tbApprovedBy" runat="server"></asp:TextBox>
            </td>
       </tr>
        <tr>
            <td>
                <asp:Label ID="lblApprovedOn" runat="server" Text="ApprovedOn"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="tbApprovedOn" runat="server"></asp:TextBox>
            </td>
        
           <td>
               <asp:Label ID="lblProjectName" runat="server" Text="ProjectName"></asp:Label>
           </td>
            <td>
                <asp:TextBox ID="tbProjectName" runat="server"></asp:TextBox>
            </td>
       </tr>
        <tr>
            <td>
                <asp:Label ID="lblTeamName" runat="server" Text="TeamName"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="tbTeamName" runat="server"></asp:TextBox>
            </td>
        
           <td>
               <asp:Label ID="lblLeadSource" runat="server" Text="LeadSource"></asp:Label>
           </td>
            <td>
                <asp:TextBox ID="tbLeadSource" runat="server"></asp:TextBox>
            </td>
       </tr>
        <tr>
            <td>
                <asp:Label ID="lblMarketingProject" runat="server" Text="MarketingProject"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="tbMarketingProject" runat="server"></asp:TextBox>
            </td>
        
           <td>
               <asp:Label ID="lblSFDCContactID" runat="server" Text="SFDCContactID"></asp:Label>
           </td>
            <td>
                <asp:TextBox ID="tbSFDCContactID" runat="server"></asp:TextBox>
            </td>
       </tr>
        <tr>
            <td>
                <asp:Label ID="lblCampaignId" runat="server" Text="CampaignId"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="tbCampaignId" runat="server"></asp:TextBox>
            </td>
        
           <td>
               <asp:Label ID="lblMobile" runat="server" Text="Mobile"></asp:Label>
           </td>
            <td>
                <asp:TextBox ID="tbMobile" runat="server"></asp:TextBox>
            </td>
       </tr>
       


        <tr>
            <td>
                <br />

                <asp:Button ID="BtnSubmit" runat="server" Text="Submit" OnClick="BtnSubmit_Click" />
            </td>
            <td>
                <br />
                <asp:Button ID="BtnClear" runat="server" Text="Clear" OnClick="BtnClear_Click" />
            </td>
        </tr>

    </table>
    
    

</asp:Content>
