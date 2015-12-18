<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FormSignup.aspx.cs" Inherits="Default3" %>

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
      <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
      <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
<tr><td>

<asp:Label ID="Label2" runat="server" Text="Team">  </asp:Label>
<asp:TextBox ID="TextBox2" runat="server" Width="155px">   </asp:TextBox>
</td>
</tr>

<tr> 
<td>
<asp:Label ID="Label3" runat="server" Text="Designation">  </asp:Label>
<asp:TextBox ID="TextBox3" runat="server" Width="155px">   </asp:TextBox>

</td>
</tr> <tr>
<td>
<asp:Label ID="Label4" runat="server" Text="Username">  </asp:Label>
<asp:TextBox ID="TextBox4" runat="server" Width="155px">   </asp:TextBox>
</td>

<tr>
<td>
<asp:Label ID="Label5" runat="server" Text="Password">  </asp:Label>
<asp:TextBox ID="TextBox5" runat="server" Width="155px">   </asp:TextBox>

</td>
</tr>
<tr>
<td>
 <asp:Button ID="Button1" runat="server" Text="Submit" /></td>
</td></tr>
</tr>           <td>
      </td>
    </tr>
  
    </table>
    
    </div>
    </form>
</body>
</html>
