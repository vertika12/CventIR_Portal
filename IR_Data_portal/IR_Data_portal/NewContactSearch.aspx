<%@ Page Language="C#" MasterPageFile="Site.Master" AutoEventWireup="true" CodeBehind="NewContactSearch.aspx.cs" Inherits="IR_Data_portal.NewContactSearch" %>

<asp:Content runat="server" ContentPlaceHolderID="HeadContent"></asp:Content>

<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div>
        <table>
            <tr>
                <td>
                    <asp:TextBox ID="tbCheck" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="bttnContactCheck" runat="server" Text="Contact Check" OnClick="Button1_Click1" />
                </td>
            </tr>
            <tr>
                <td>
                    <br />
                    <asp:Button ID="bttnBack" runat="server" Text="Back" OnClick="Button2_Click2" />
                </td>
                <td>
                    <br />
                    <asp:Button ID="bttnInsert" runat="server" Text="Insert" OnClick="Button3_Click3" />
                </td>
                <td>
                    <br />
                    <asp:Button ID="bttnAccount" runat="server" Text="Account" OnClick="Button4_Click4" />
                </td>
                <td>
                    <br />
                    <asp:Button ID="bttnSearch" runat="server" Text="Search" OnClick="Button5_Click5" />
                </td>

            </tr>
        </table>

    </div>
</asp:Content>
