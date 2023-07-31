<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="fatal.aspx.cs" Inherits="Schedule.fatal" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title>Schedule</title>
  <link href="Schedule.css" rel="stylesheet" />
</head>
<body style="height: 100%;">
  <form id="form1" runat="server" style="height: 100%; background-color:black;">
    <div id="fataldiv" style="vertical-align: middle;text-align:center;padding: 12%;color:white;">
      FATAL Error:&nbsp;
      <asp:Label ID="message" runat="server">Unknown reason.</asp:Label>
      <br /><br />
      <img src="Images/SkullAndBones.png" atyle="height: 16%"/>
    </div>
  </form>
</body>
</html>
