<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="log.aspx.cs" Inherits="NewSchedule.login" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title>Schedule</title>
  <link href="Schedule.css" rel="stylesheet" />
</head>
<body>
  <form id="form1" runat="server">
    <div id="divtopbar">
      <asp:Label ID="lblLoginTitle" runat="server" Text="view date"/>
    </div>
    <div id="divlogin" style="text-align:center; width: 100%;">
      <br />
      <asp:Label ID="lblNameAndPassword" runat="server" Text="Label"/>
      <br /><br />
      <div id="logName"">
        <asp:TextBox ID="txtAdminName" runat="server" Width="300px"/>
      </div>
      <div>
        <asp:Label ID="lblAdminNameCaption" runat="server"/>
      </div>
      <br />
      <div id="logPassword"">
        <asp:TextBox ID="txtAdminPassword" runat="server" Width="200px" TextMode="Password"/>
      </div>
      <div>
        <asp:Label ID="lblAdminPasswordCaption" runat="server"/>
      </div>
      <br/>
      <asp:Label ID="loginError" runat="server" ForeColor="Red" Font-Bold="True" /><br />
      <asp:Button ID="btnLogin" runat="server" Text="LOGIN" OnClick="btnLogin_Clicked"/>
      &nbsp;&nbsp;
      <asp:Button ID="btnCancel" runat="server" Text="CANCEL" OnClick="btnCancel_Clicked"/>
    </div>
  </form>
</body>
</html>
