<%@ Page Language="C#" MasterPageFile="Site.Master" AutoEventWireup="true" CodeBehind="defaultNew.aspx.cs" Inherits="IR_Data_portal.defaultNew" %>

<asp:Content runat="server" ContentPlaceHolderID="HeadContent"></asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="MainContent">
     <table>
        <tr>
        <td>
            <asp:Label ID="lblUsername" runat="server" Text="User Name"/>
            </td>
            <td>
                <asp:TextBox ID="tbUsername" runat="server"/>

            </td>
        </tr>
        <tr>
        <td>
            <asp:Label ID="lblPassword" runat="server" Text="Password"/>
            </td>
            <td>
                <asp:TextBox ID="tbPassword" runat="server" TextMode="Password"/>

            </td>
        </tr>
        <tr>
            
            <td>
                <asp:Label ID="LblDesignation" runat="server" Text="Designation"/>
                </td>
                
            </tr>
            <tr>

            <td>
                <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>Associate</asp:ListItem>
                    <asp:ListItem>Senior Associate</asp:ListItem>
                    <asp:ListItem>Manager</asp:ListItem>
                    <asp:ListItem>Team Lead</asp:ListItem>
                </asp:DropDownList>

             
            </td>
            
            </tr>
            <tr>
        <td>
            <asp:Button ID="BttnLogIn" runat="server" Text="Login" onclick="Button1_Click1" /></td>
                   
        <td>


            <asp:Button ID="BttnForgetPassword" runat="server" Text="Forget Pasword" 
                onclick="Button2_Click" /></td>
        </tr>

        </table>
    
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

</asp:Content>


