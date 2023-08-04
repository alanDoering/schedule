<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="NewSchedule.login" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title></title>
  <link href="Schedule.css" rel="stylesheet" />
</head>
<body>
  <form id="form1" runat="server">
    <div id="divtopbar">
      <asp:Label ID="lbltitle" runat="server" Text="title"/>
    </div>
    <div id="divadmin">
      <br /><br />
      Please enter your Name and Password
      <br /><br />
      <asp:Table ID="tbllogin" runat="server" width="100%">
        <asp:TableRow runat="server">
          <asp:TableCell runat="server" style="width:46%; text-align:right;">
            Name:&nbsp;
          </asp:TableCell>
          <asp:TableCell runat="server" Style="text-align:left;">
            <asp:TextBox ID="txtAdminName" runat="server" Width="300px"></asp:TextBox></asp:TableCell>
        </asp:TableRow>
        <asp:TableRow runat="server">
          <asp:TableCell runat="server" style="width:46%; text-align:right;">
            Password:&nbsp;
          </asp:TableCell>
          <asp:TableCell runat="server" style="text-align:left;">
            <asp:TextBox ID="txtAdminPassword" runat="server" Width="200px" TextMode="Password"></asp:TextBox>
          </asp:TableCell>
        </asp:TableRow>
      </asp:Table>
      <br/><br/>
      <asp:Label ID="loginError" runat="server" ForeColor="Red" Font-Bold="True" />
      <asp:Button ID="btnLogin" runat="server" Text="LOGIN" OnClick="btnLogin_Clicked"/>
    </div>
  </form>
</body>
</html>
