<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="fatal.aspx.cs" Inherits="schedule.fatal" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title>Schedule</title>
  <link href="schedule.css" rel="stylesheet" />
</head>
<body>
<form id="form1" runat="server" style="height: 100%; background-color:black;">
  <div id="fataldiv" style="vertical-align: middle;text-align:center;padding: 12%;color:white;">
    <asp:Label ID="fatalMessage" runat="server">Unknown reason.</asp:Label>
    <br /><br />
    <img src="Images/SkullAndBones.png" atyle="height: 16%"/>
  </div>
</form>
</body>
</html>
