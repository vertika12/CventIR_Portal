﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Resources;
using System.Security.Permissions;
using System.Web;
using DataManager.BLL;

namespace IR_Data_portal
{
    [Serializable]
    public class GridView
    {
        public Guid Account_ID { get; set; }
        public Guid Contact_ID { get; set; }
        public string Website { get; set; }
        public string Account { get; set; }
        public string Prioritization { get; set; }
        public string Segment { get; set; }
        public string MailingCity { get; set; }
        public string MailingCountry { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Salutation { get; set; }
        public string Title { get; set; }
        public string Email { get; set; }
        public string DirectPhone { get; set; }
        public string LinkedinUrl { get; set; }
        public string LinkedinId { get; set; }
        public string AlternatePhone { get; set; }
        public string AlternateEmail { get; set; }
        public string ContactInfo { get; set; }
        public string ContactLevel_description { get; set; }
        public string TitleLevel { get; set; }
        public string JobFunction { get; set; }
        public string TaskPoc { get; set; }
        public string AdditionalContactInfo { get; set; }
        public string AssignTo { get; set; }
        public string EmailNotification { get; set; }
        public string FollowUp_Open_Closed_Task { get; set; }
        public string FollowUpTask_AssignTo { get; set; }
        public string FollowUpTask_Comment { get; set; }
        public string FollowUpTask_Priority { get; set; }
        public string FollowUpTask_Subject { get; set; }
        public string IRReps_Comments { get; set; }
        public string Keywords_Group { get; set; }
        public string LeadInfo { get; set; }
        public string LeadStatus { get; set; }
        public string MktgContactCat { get; set; }
        public string OmniCampaignID { get; set; }
        public string OmniCampaignNames { get; set; }
        public string OmniProduct { get; set; }
        public string OmniRegions { get; set; }
      
        public string Omni_Tactic_Final { get; set; }
        public string OpenGroup_ClosedGroup { get; set; }
        public string Open_Closed_Task { get; set; }
        public string Other_SM_Urls { get; set; }
        public string Contact_Type { get; set; }
        public string IRRep { get; set; }
        
       
        public string Status { get; set; }
        public string ApprovedBy { get; set; }
        public DateTime ApprovedOn { get; set; }
        public string ProjectName { get; set; }
        public string TeamName { get; set; }
        public string LeadSource { get; set; }
        public string MarketingProject { get; set; }
        public string SFDCContactID { get; set; }
        public string CampaignId { get; set; }
        public string MobilePhone { get; set; }
        public string OmniSource { get; set; }
        public DateTime CreatedOn { get; set; }
        public string CreatedBy { get; set; }
        public string LastModifiedBy { get; set; }
        public DateTime LastModifiedOn { get; set; }


















       


    }
}