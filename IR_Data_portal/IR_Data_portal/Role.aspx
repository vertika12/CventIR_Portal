<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Role.aspx.cs" Inherits="Role" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table>
    <tr>
    <td>
    <asp:Button ID="Button1" runat="server" Text="Manager" onclick="Button1_Click1" /></td>
    </tr>
    <tr>
    <td>
    <asp:Button ID="Button2" runat="server" Text="Senior Associate" onclick="Button2_Click1" />
    </td></tr>

    <tr>
    <td>
    <asp:Button ID="Button3" runat="server" Text="Associate" onclick="Button3_Click" />

   
    </td></tr>
    </table>
    </div>
    </form>
</body>
</html>
