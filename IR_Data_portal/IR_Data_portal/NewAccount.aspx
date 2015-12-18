<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NewAccount.aspx.cs" Inherits="IR_Data_portal.NewAccount" MasterPageFile="Site.Master" %>

<asp:Content runat="server" ContentPlaceHolderID="HeadContent">
    
</asp:Content>
<asp:Content runat="server" ID="ctMain" ContentPlaceHolderID="MainContent">
    <!DOCTYPE html>
    <div>
        <table>
            <tr>
                <td>
                    <asp:TextBox ID="tbAccountURL" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="btnCheckAccount" runat="server" Text="Check Account" OnClick="Button1_Click1" />
                </td>
            </tr>
            <tr>
                <td>
                    <br />
                    <asp:Button ID="btnBack" runat="server" Text="Back" OnClick="Button2_Click" />
                </td>
                <td>
                    <br />
                    <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="Button3_Click3" />
                </td>
                <td>
                    <br />
                    <asp:Button ID="btnInsert" runat="server" Text="Insert" OnClick="Button4_Click4" />
                </td>
                <td>
                    <br />
                    <asp:Button ID="btnContact" runat="server" Text="Contact" OnClick="Button5_Click5" />
                </td>

            </tr>
        </table>
    </div>
</asp:Content>