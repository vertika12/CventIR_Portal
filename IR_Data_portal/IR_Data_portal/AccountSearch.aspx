<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AccountSearch.aspx.cs" Inherits="IR_Data_portal.AccountSearch"%>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Account Detail </h2>

    <br />


    <table>

        <tr>
            <td>

                <asp:RadioButton ID="RadioButton3" runat="server" GroupName="Search"
                    Text="Search By Company" AutoPostBack="true" OnCheckedChanged="RadioButton_CheckedChanged" />
                <br />

                <asp:Label ID="lblCompanyName" runat="server" Text="Account_Name"></asp:Label>
                <asp:TextBox ID="tbAccountName" runat="server"></asp:TextBox>
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>India</asp:ListItem>
                    <asp:ListItem>USA</asp:ListItem>
                    <asp:ListItem>Germany</asp:ListItem>
                    <asp:ListItem>Australia</asp:ListItem>

                </asp:DropDownList>
        </tr>
        <tr>
            <td>
                <asp:Button ID="btnSearchByCompany" runat="server" OnClick="btnSearchByCompany_OnClick" Text="Submit" />
            </td>
        </tr>





        <asp:GridView ID="GridView2" runat="server" DataKeyNames="Account ID" AutoGenerateColumns="True">
            <%--AutoGenerateColumns="false" DataKeyNames="S_No" OnRowEditing="Gridview2_RowEditing" OnRowUpdating="Gridview2_RowUpdating" OnSelectedIndexChanged="Gridview2_SelectedIndexChanged"--%>
            <Columns>

                <asp:TemplateField HeaderText="CheckBox">
                    <ItemTemplate>
                        <asp:CheckBox ID="ChckSelect" runat="server" />
                    </ItemTemplate>
                </asp:TemplateField>

                <%--<asp:BoundField runat="server" DataField=""/>--%>
                 <asp:TemplateField HeaderText="Edit">
                    <ItemTemplate>
                            <asp:LinkButton  ID="lbEdit" Text="Edit" OnClick="LinkEdit_Click" runat="server"></asp:LinkButton>
                        </ItemTemplate>
                </asp:TemplateField>
            </Columns>

            <%-- <ajax:PopupControlExtender ID="PopupControlExtender1" runat="server" TargetControlID="" PopupControlID="updatePanel">
                 
             </ajax:PopupControlExtender>--%>
        </asp:GridView>
        
        <asp:Button runat="server" ID="btnEdit" Text="Edit"/>
        <asp:Button runat="server" ID="btnCancel" Text="Cancel"/>

        <asp:Label ID="lblresult" runat="server" />

        <ajaxToolkit:ModalPopupExtender BackgroundCssClass="modalBackground" ID="ModalPopupExtender1" PopupControlID="pnlPopup" runat="server" TargetControlID="btnEdit" CancelControlID="btnCancel">
        </ajaxToolkit:ModalPopupExtender>
        <asp:Panel ID="pnlPopup" runat="server" BackColor="White" Height="269px" Width="400px" Style="display: none">
            <table width="100%" style="border: Solid 3px #D55500; width: 100%; height: 100%" cellpadding="0" cellspacing="0">
                <tr style="background-color: #D55500">
                    <td colspan="2" style="height: 10%; color: White; font-weight: bold; font-size: larger" align="center">Account Details</td>
                </tr>
                <tr>
                    <td align="right" style="width: 50%">AccountId :
                    </td>
                    <td>
                        <asp:Label ID="lblID" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td align="right">
                        Account: 
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:label ID="lblAccount" runat="server"></asp:label>
                    </td>
                </tr>

            </table>
        </asp:Panel>
        <asp:GridView ID="GridView3" runat="server">
        </asp:GridView>
    </table>
    <asp:Button ID="btnAddCart" runat="server" Text="Bulk Add Cart" OnClick="btnGetSelectedRecords_Click" />

</asp:Content>
