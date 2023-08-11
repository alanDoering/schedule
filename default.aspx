<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="schedule._default" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title>Schedule</title>
  <link href="schedule.css" rel="stylesheet" />
</head>
<body>
  <form id="form1" runat="server">
    <div id="divContainer">
      <div id="divTopbar">
        <asp:Label id="lbltitle" runat="server" Label="Empty"></asp:Label>
      </div>
      <div id="divCalendar">
        <asp:Calendar ID="mainCalendar" runat="server"
          ForeColor="Black" BackColor="LightSteelBlue" ShowGridLines="True"
          DayHeaderStyle-BackColor="#779AC9" DayHeaderStyle-ForeColor="White"
          DayStyle-BackColor="#C2D9F0" DayStyle-ForeColor="Black"
          OtherMonthDayStyle-BackColor="#CCCCCC"
          OnSelectionChanged="mainCalendar_SelectionChanged"
          OnVisibleMonthChanged="mainCalendar_VisibleMonthChanged" 
          TitleStyle-BackColor="#779AC9" TitleStyle-ForeColor="White" TitleStyle-Height="2em" 
          DayHeaderStyle-Height="2em" OnDayRender="mainCalendar_DayRender" 
          PrevMonthText="prev &lt;" NextMonthText="&gt; next"></asp:Calendar>
        <br/>
        <asp:Label ID="lblPickDay" runat="server" Text="Label"></asp:Label>
        <br/><br/>
        <asp:Button ID="btnGoLogin" runat="server" Text="ADMIN" OnClick="btnGoLogin_Clicked" />
      </div>
    </div>
  </form>
</body>
</html>
