<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="IR_Data_portal.Login"%>

<asp:Content ID="HeaderContent" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">


    <table>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="User Name"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TxtUser" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
            </td>
            <td>


                <asp:TextBox ID="TxtPassword" runat="server" TextMode="Password"></asp:TextBox></td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="BtnLogin" runat="server" Text="Login" OnClick="BtnLogin_Click" />
            </td>

            <td>


                <asp:Button ID="BtnForgetpasword" runat="server" Text="Forget Pasword"
                    OnClick="BtnForgetpasword_Click" /></td>
        </tr>

    </table>

    <p>
        &nbsp;
    </p>
    <p>
        &nbsp;
    </p>



</asp:Content>
