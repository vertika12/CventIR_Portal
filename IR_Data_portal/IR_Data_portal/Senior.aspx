<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Senior.aspx.cs" Inherits="IR_Data_portal.Senior" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table>
    <tr>
    <td>
     <asp:Button ID="btnSearch" runat="server" Text="Search" onclick="btnSearch_Click"  
            />
    </td>
    </tr>
    <tr>
    <td>
       <asp:Button ID="btnInsert" runat="server" Text="Insert" onclick="btnInser_Click"   />
    </tr>

    
    </table>
    
    
    

</asp:Content>
