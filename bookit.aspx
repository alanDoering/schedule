<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="bookit.aspx.cs" Inherits="NewSchedule._bookit" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title>Schedule</title>
  <link href="Schedule.css" rel="stylesheet" />
  <%--following script disables the browser back button--%>
  <script type="text/javascript" language="javascript">
     function DisableBackButton() {
       window.history.forward()
      }
     DisableBackButton();
     window.onload = DisableBackButton;
     window.onpageshow = function(evt) { if (evt.persisted) DisableBackButton() }
     window.onunload = function() { void (0) }
  </script>
</head>
<body>
  <form id="form1" runat="server">
    <div id="topbar">
      Booking Page<br/>
      <asp:Button ID="Button1" runat="server" Text="Back" OnClick="btnBack_Clicked" />
    </div>
  </form>
</body>
</html>
