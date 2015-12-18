<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ExistingAccount.aspx.cs" Inherits="IR_Data_portal.ExistingContact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
   <%--<h2>%:title%> Deatails </h2>--%>
    <address>
        Check the Existing Status Of URL.
        <br/>
    </address>
    <table>
        <tr>
            <td>
                <asp:Label ID="Label_Websitee" runat="server" Text="Account_Website" Visible="True"></asp:Label>
                </td>
            <td>
                <asp:TextBox ID="text_Website" runat="server" visible="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                 <asp:Button ID="Buttonsubmit" OnClick="Buttonsubmit_click" runat="server" Text="Check Account" />
            </td>
           
        </tr>
        
        

        <tr>
            <td>
                <asp:Button ID="ButtonCreateNew" runat="server" Text="Create New" OnClick="ButtonCreateNew_OnClick"/>
            </td>
            <td>
            <asp:Button ID="ButtonSearch" runat="server" Text="Search" OnClick="ButtonSearch_OnClick"/>
            </td>
        </tr>
    </table> 
    
    
    
    
    
    

</asp:Content>
