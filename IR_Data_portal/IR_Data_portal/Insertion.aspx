<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Insertion.aspx.cs" Inherits="IR_Data_portal.Insertion" MasterPageFile="Site.Master" %>

<asp:Content runat="server" ContentPlaceHolderID="HeadContent"></asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div>
        <table>
            <tr>
                <td>

                    <asp:Label ID="lblAccount" runat="server" Text="Account"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tbAccount" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID ="lblWebsite" runat="server" Text="Website"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tbWebsite" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="lblBoard_No" runat="server" Text="Board_No."></asp:Label>

                </td>
                <td>
                    <asp:TextBox ID="tbBoard_No" runat="server"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td>
                    <asp:Label ID ="lblMailingCountry" runat="server" Text="Mailing Country"></asp:Label>
                       
                </td>
                <td>
                    <asp:DropDownList ID="ddlMailingCountry" runat="server" AutoPostBack="true" Enabled="true" OnSelectedIndexChanged="ddlMailingCountry_SelectedIndexChanged">
                        <asp:ListItem>Select Country</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:Label ID="lblAccount_Phone" runat="server" Text="Account Phone"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tbAccount_Phone" runat="server"></asp:TextBox>
                </td>

            </tr>

            <tr>
               
                <td>
                    <asp:Label ID="lblMailingStreet" runat="server" Text="Mailing Street"></asp:Label>
                </td>
                 <td>
                    <asp:TextBox ID="tbMailingStreet" runat="server"></asp:TextBox>
                 </td>                    
               <td>
                   <asp:Label ID="lblMailingCity" runat="server" Text="Mailing City "></asp:Label>
               </td>
                <td>
                    <asp:TextBox ID="tbMailingCity" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label runat="server" Text="Mailing State/Province"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="ddlSelectState" runat="server" AutoPostBack="true" Enabled="true" OnSelectedIndexChanged="ddlSelectState_SelectedIndexChanged">
                        <asp:ListItem>Select State</asp:ListItem>
                    </asp:DropDownList>
                </td>

                <td>
                    <asp:Label ID="lblMailingZip" Text="Mailing Zip/Postal Code" runat="server"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tbMailingZip" runat="server"></asp:TextBox>
                </td>
            </tr>



            <tr>
                <td>
                    <asp:Label ID="lblUserName" runat="server" Text="User_Name"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tbUserName" runat="server" OnTextChanged="tbUserName_TextChanged"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="lblTeamName" runat="server" Text="TeamName"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="ddlTeamName" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlTeamName_SelectedIndexChanged">
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:Label ID="lblProjectName" runat="server" Text="ProjectName"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="ddlProjectName" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlProjectName_SelectedIndexChanged">
                    </asp:DropDownList>
                </td>

            </tr>

            <tr>
                <td>
                    <asp:Label ID="lblSegment" runat="server" Text="Segment"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="ddlSegment" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlSegment_SelectedIndexChanged">
                        <asp:ListItem>Select Segment</asp:ListItem>


                    </asp:DropDownList>
                </td>

                <td>
                    <asp:Label ID="lblIndustry" runat="server" Text="Industry"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="ddlIndustry" runat="server" AutoPostBack="true" Enabled="false" OnSelectedIndexChanged="ddlIndustry_SelectedIndexChanged">
                    </asp:DropDownList>
                </td>

                <td>
                    <asp:Label ID="lblIndustrySubSegment" runat="server" Text="Industry Sub-Segment"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="ddlIndustrySubSegment" runat="server" AutoPostBack="true" Enabled="false" OnSelectedIndexChanged="ddlIndustrySubSegment_SelectedIndexChanged">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="lblEmployees" runat="server" Text="# of Employees"></asp:Label>
                </td>
                <td class="auto-style1">
                    <asp:DropDownList ID="ddlEmployees" runat="server">
                        <asp:ListItem>Select No. of Employees</asp:ListItem>
                        <asp:ListItem>Less Than 10 Employees</asp:ListItem>
                        <asp:ListItem>11-50 Employees</asp:ListItem>
                        <asp:ListItem>51-200 Employees</asp:ListItem>
                        <asp:ListItem>201-1,000 Employees</asp:ListItem>
                        <asp:ListItem>1,0001-5,000 Employees</asp:ListItem>
                        <asp:ListItem>More Than 5,000 Employees</asp:ListItem>
                    </asp:DropDownList>
                </td>

                <td class="auto-style1">
                    <asp:Label ID="lblRevenue" runat="server" Text="Revenue (in million $)"></asp:Label>
                </td>
                <td class="auto-style1">
                    <asp:DropDownList ID="ddlRevenue" runat="server">
                        <asp:ListItem>Select Revenue</asp:ListItem>
                        <asp:ListItem>0.00-0.10</asp:ListItem>
                        <asp:ListItem>0.11-0.25</asp:ListItem>
                        <asp:ListItem>0.26-0.50</asp:ListItem>
                        <asp:ListItem>0.51-0.75</asp:ListItem>
                        <asp:ListItem>0.76-1</asp:ListItem>
                        <asp:ListItem>2-5</asp:ListItem>
                        <asp:ListItem>6-10</asp:ListItem>
                        <asp:ListItem>11-25</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style1">
                    <asp:Label ID="lblContactInfo" runat="server" Text="Contact Info"></asp:Label>
                </td>
                <td class="auto-style1">
                    <asp:TextBox ID="tbContactInfo" runat="server"></asp:TextBox>
                </td>

            </tr>

            <tr>


                <td>
                    <asp:Label ID="lblLinkedInUrl" runat="server" Text="LinkedIn URL"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tbLinkedInUrl" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblAlternatePhone" runat="server" Text="Alternate Phone"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tbAlternatePhone" runat="server"></asp:TextBox>
                </td>

                <td>
                    <asp:Label ID="lblAlternateEmail" runat="server" Text="Aletrnate Email"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tbAlternateEmail" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblCurrentEventUrl" runat="server" Text="Current Event URL"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tbCurrentEventUrl" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="lblEventName" runat="server" Text="Event Name"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tbEventName" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblEventType" runat="server" Text="Event Type"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="ddlEventType" runat="server" AutoPostBack="true" Enabled="true" OnSelectedIndexChanged="ddlEventType_SelectedIndexChanged">
                        <asp:ListItem>Select Event Type</asp:ListItem>

                    </asp:DropDownList>
                </td>
                <td>
                    <asp:Label ID="lblEventFee" runat="server" Text="Event Fee(Yes/No"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="ddlEventFee" runat="server">
                        <asp:ListItem>Select Fees</asp:ListItem>
                        <asp:ListItem>Yes</asp:ListItem>
                        <asp:ListItem>No</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:Label ID="lblEventCharge" runat="server" Text="Event Charge"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="ddlEventCharge" runat="server">
                        <asp:ListItem>Select Event Charge</asp:ListItem>
                        <asp:ListItem>Not Found</asp:ListItem>
                        <asp:ListItem>Free</asp:ListItem>
                        <asp:ListItem>Upto $50</asp:ListItem>
                        <asp:ListItem>$51-$100</asp:ListItem>
                        <asp:ListItem>$100-$250</asp:ListItem>
                        <asp:ListItem>$251-$500</asp:ListItem>
                        <asp:ListItem>$501 and Above</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblNo_OfEvents" runat="server" Text="No. Of Events"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="ddlNo_OfEvents" runat="server">
                        <asp:ListItem>Select No. of Events</asp:ListItem>
                        <asp:ListItem>1 Event</asp:ListItem>
                        <asp:ListItem>2-5 Events</asp:ListItem>
                        <asp:ListItem>6-10 Events</asp:ListItem>
                        <asp:ListItem>11-20 Events</asp:ListItem>
                        <asp:ListItem>21-50 Events</asp:ListItem>
                        <asp:ListItem>Above 50 Events</asp:ListItem>
                        <asp:ListItem>Not Found</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:Label ID="lblRegProcess" runat="server" Text="Reg Process"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="ddlRegProcess" runat="server">
                        <asp:ListItem>Select Reg Process</asp:ListItem>
                        <asp:ListItem>Inhouse</asp:ListItem>
                        <asp:ListItem>Not Found</asp:ListItem>
                        <asp:ListItem>Online/HTML</asp:ListItem>
                        <asp:ListItem>Other Reg Process</asp:ListItem>
                        <asp:ListItem>PDF/DOC</asp:ListItem>
                        <asp:ListItem>Using Competitor</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblEventCompetitor" runat="server" Text="Event Competitor Name"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="ddlEventCompetitor" runat="server" AutoPostBack="true" Enabled="true" OnSelectedIndexChanged="DropDownList14_SelectedIndexChanged">

                        <asp:ListItem>Select Event Competitor</asp:ListItem>

                    </asp:DropDownList>
                </td>
                <td>
                    <asp:Label ID="lblBiggestEventType" runat="server" Text="Biggest Event Type"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="ddlBiggestEventType" runat="server">
                        <asp:ListItem>Select Biggest Event Type</asp:ListItem>
                        <asp:ListItem>Conference/Tradeshow</asp:ListItem>
                        <asp:ListItem>Fundraiser/Gala</asp:ListItem>
                        <asp:ListItem>Incentive/Retreat</asp:ListItem>
                        <asp:ListItem>Other</asp:ListItem>
                        <asp:ListItem>Seminar/Webinar</asp:ListItem>
                        <asp:ListItem>Training/Workshop</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblMobileQualified" runat="server" Text="Mobile Qualified"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="ddlMobileQualified" runat="server">
                        <asp:ListItem>Select Mobile Qualified</asp:ListItem>
                        <asp:ListItem>Yes</asp:ListItem>
                        <asp:ListItem>No</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:Label ID="lblMktgLeadSource" runat="server" Text="Mktg:Lead Source"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tbMktgLeadSource" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblCategorization" runat="server" Text="Categorization"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="ddlCategorization" runat="server">
                        <asp:ListItem>Select Category</asp:ListItem>
                        <asp:ListItem>A+</asp:ListItem>
                        <asp:ListItem>A</asp:ListItem>
                        <asp:ListItem>B</asp:ListItem>
                        <asp:ListItem>C+</asp:ListItem>
                        <asp:ListItem>C</asp:ListItem>
                        <asp:ListItem>D</asp:ListItem>
                    </asp:DropDownList>
                </td>

                <td>
                    <asp:Label ID="lblSleepingRoom" runat="server" Text="Sleeping Rooms/Room Nights(for Event-1)"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="ddlSleepingRoom" runat="server">
                        <asp:ListItem>Select Rooms/Room Nights</asp:ListItem>
                        <asp:ListItem>Yes</asp:ListItem>
                        <asp:ListItem>No</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblEverUsedMobileApp" runat="server" Text="Ever Used Mobile App-CC"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="ddlEverUsedMobileApp" runat="server">
                        <asp:ListItem>Select Used Mobil App</asp:ListItem>
                        <asp:ListItem>Yes,at one of my event</asp:ListItem>
                        <asp:ListItem>No,I've never used a mobile app</asp:ListItem>
                    </asp:DropDownList>
                </td>

                <td>
                    <asp:Label ID="lblMobileAppOs" runat="server" Text="Mobile App OS"> </asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="ddlMobileAppOs" runat="server" AutoPostBack="true" Enabled="true" OnSelectedIndexChanged="ddlMobileAppOs_OnSelectedIndexChanged" ToolTip="Select Mobile App OS">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblMobileAppLink" runat="server" Text="Mobile App Link"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tbMobileAppLink" runat="server"></asp:TextBox>
                </td>

                <td>
                    <asp:Label ID="lblDeveloper" runat="server" Text="Developer"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="ddlDeveloper" runat="server" AutoPostBack="true" Enabled="true" OnSelectedIndexChanged="DropDownList22_SelectedIndexChanged">
                        <asp:ListItem>Select Developer</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblEventOccurance" runat="server" Text="Event Occurence"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="ddlEventOccurance" runat="server">
                        <asp:ListItem>Select Event Occurence</asp:ListItem>
                        <asp:ListItem>Annual</asp:ListItem>
                        <asp:ListItem>Bi-Annual</asp:ListItem>
                        <asp:ListItem>Biennial</asp:ListItem>
                        <asp:ListItem>Multiple Times</asp:ListItem>
                        <asp:ListItem>Quadrennieal</asp:ListItem>
                        <asp:ListItem>Triennial</asp:ListItem>
                    </asp:DropDownList>
                </td>

                <td>
                    <asp:Label ID="lblEventDuration" runat="server" Text="Event Duration"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="ddlEventDuration" runat="server">
                        <asp:ListItem>Select Duration</asp:ListItem>
                        <asp:ListItem>Single Day</asp:ListItem>
                        <asp:ListItem>Multi Day</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblHaveBreakout" runat="server" Text="Have Breakouts-CC"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="ddlHaveBreakout" runat="server">
                        <asp:ListItem>Select Breakouts-CC</asp:ListItem>
                        <asp:ListItem>Yes</asp:ListItem>
                        <asp:ListItem>No</asp:ListItem>
                    </asp:DropDownList>
                </td>

                <td>
                    <asp:Label ID="lblAttendies" runat="server" Text="# of Attendees"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="ddlAttendies" runat="server">
                        <asp:ListItem>Select No. of Attendees</asp:ListItem>
                        <asp:ListItem>1-100 attendees</asp:ListItem>
                        <asp:ListItem>101-500 attendees</asp:ListItem>
                        <asp:ListItem>5001-1000 attendees</asp:ListItem>
                        <asp:ListItem>1001-2500 attendees</asp:ListItem>
                        <asp:ListItem>2501-5000 attendees</asp:ListItem>
                        <asp:ListItem>over 5000 attendees</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblSponsors" runat="server" Text="Sponsors"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="ddlSponsors" runat="server">
                        <asp:ListItem>Select Sponsors</asp:ListItem>
                        <asp:ListItem>Yes</asp:ListItem>
                        <asp:ListItem>No</asp:ListItem>
                    </asp:DropDownList>
                </td>

                <td>
                    <asp:Label ID="lblExhibitors" runat="server" Text="Exhibitors"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="ddlExhibitors" runat="server">
                        <asp:ListItem>Select exhibitors</asp:ListItem>
                        <asp:ListItem>I have no exhibitors</asp:ListItem>
                        <asp:ListItem>1-25 exhibitors</asp:ListItem>
                        <asp:ListItem>26-50 exhibitors</asp:ListItem>
                        <asp:ListItem>51-100 exhibitors</asp:ListItem>
                        <asp:ListItem>Over 100 exhibitors</asp:ListItem>
                    </asp:DropDownList>
                </td>

            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblStaffLink1" runat="server" Text="Staff Link 1"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tbStaffLink1" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="lblStaffLink2" runat="server" Text="Staff Link ii"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tbStaffLink2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblStaffLink3" runat="server" Text="Staff Link iii"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tbStaffLink3" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="lblAccountID" runat="server" Text="Account ID"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="tbAccountId" runat="server"></asp:TextBox>
                </td>
            </tr>

        </table>


        <table>

            <tr>
                <td>
                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_OnClick" />
                    </td>
                <td>
                    <asp:Button ID="btnClear" runat="server" Text="Clear" OnClick="btnClear_OnClick" />
                </td>
                <td>
                    <asp:Button ID="btnBack" runat="server" Text=" Back" OnClick="btnBack_Click"></asp:Button>

                </td>

                <td>
                    <asp:HyperLink ID="hlContactForm" runat="server" NavigateUrl="Contact.aspx" Target="_top">ContactForm</asp:HyperLink>

                </td>
                

            </tr>
        </table>
    </div>
</asp:Content>
