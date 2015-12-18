<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Associate.aspx.cs" Inherits="IR_Data_portal.Associate" %>
<asp:Content ID="HeaderContent" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
   <table>
    <tr>
    <td>
    
     <asp:Button ID="btnSearch" runat="server" Text="Search" onclick="btnSearch_Click" />
    </td>
    <td>
    <asp:Button ID="btnInsert" runat="server" Text="Insert" onclick="btnInsert_Click" />
    </td>
        <td>
            <asp:Button ID="btnUnique" runat="server" Text="Unique" OnClick="btnUnique_Click" />
        </td>
        <td>
            <asp:Button ID="btnReport" runat="server" Text="Report" OnClick="btnReport_Click" />
        </td>
    </tr>
    </table>
   
    
</asp:Content>
