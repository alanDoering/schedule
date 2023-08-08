<%@ Page Title="" Language="C#" MasterPageFile="~/schedule.Master" AutoEventWireup="true" CodeBehind="month.aspx.cs" Inherits="Schedule._month" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" >
  <link href="schedule.css" rel="stylesheet" />
  <div id="divDateAndArrows">
    <asp:ImageButton ID="arrowLeft" runat="server" ImageUrl="~/images/Arrow-Left.png" OnClick="ArrowLeft_Clicked" height="1.6em"/>
    <asp:Label ID="lblViewDate" runat="server" Label="Empty" Style="font-size: 1.2em;"></asp:Label>
    <asp:ImageButton ID="arrowRight" runat="server" ImageUrl="~/images/Arrow-Right.png" OnClick="ArrowRight_Clicked" height="1.6em"/>
  </div>
  <div id="divcalendar">
    <asp:Table ID="tblmonth" runat="server" CellPadding="0" CellSpacing="0" Style="width: 100%; height:100%;" GridLines="Both">
      <asp:TableHeaderRow CssClass="tblheader" runat="server">
        <asp:TableHeaderCell runat="server">Sun</asp:TableHeaderCell>
        <asp:TableHeaderCell runat="server">Mon</asp:TableHeaderCell>
        <asp:TableHeaderCell runat="server">Tue</asp:TableHeaderCell>
        <asp:TableHeaderCell runat="server">Wed</asp:TableHeaderCell>
        <asp:TableHeaderCell runat="server">Thu</asp:TableHeaderCell>
        <asp:TableHeaderCell runat="server">Fri</asp:TableHeaderCell>
        <asp:TableHeaderCell runat="server">Sat</asp:TableHeaderCell>
      </asp:TableHeaderRow>
      <asp:TableRow Class="tblrow" runat="server">
        <asp:TableCell runat="server" Width="14%"><asp:Button id="Button36" runat="server" class="tblbutton" OnClick="tblButton_Clicked"/></asp:TableCell>
        <asp:TableCell runat="server" Width="14%"><asp:Button id="Button37" runat="server" class="tblbutton" OnClick="tblButton_Clicked"/></asp:TableCell>
        <asp:TableCell runat="server" Width="14%"><asp:Button id="Button38" runat="server" class="tblbutton" OnClick="tblButton_Clicked"/></asp:TableCell>
        <asp:TableCell runat="server" Width="14%"><asp:Button id="Button39" runat="server" class="tblbutton" OnClick="tblButton_Clicked"/></asp:TableCell>
        <asp:TableCell runat="server" Width="14%"><asp:Button id="Button40" runat="server" class="tblbutton" OnClick="tblButton_Clicked"/></asp:TableCell>
        <asp:TableCell runat="server" Width="14%"><asp:Button id="Button41" runat="server" class="tblbutton" OnClick="tblButton_Clicked"/></asp:TableCell>
        <asp:TableCell runat="server" Width="14%"><asp:Button id="Button42" runat="server" class="tblbutton" OnClick="tblButton_Clicked"/></asp:TableCell>
      </asp:TableRow>
      <asp:TableRow Class="tblrow" runat="server">
        <asp:TableCell runat="server" Width="14%"><asp:Button id="Button1" runat="server" class="tblbutton" OnClick="tblButton_Clicked"/></asp:TableCell>
        <asp:TableCell runat="server" Width="14%"><asp:Button id="Button2" runat="server" class="tblbutton" OnClick="tblButton_Clicked"/></asp:TableCell>
        <asp:TableCell runat="server" Width="14%"><asp:Button id="Button3" runat="server" class="tblbutton" OnClick="tblButton_Clicked"/></asp:TableCell>
        <asp:TableCell runat="server" Width="14%"><asp:Button id="Button4" runat="server" class="tblbutton" OnClick="tblButton_Clicked"/></asp:TableCell>
        <asp:TableCell runat="server" Width="14%"><asp:Button id="Button5" runat="server" class="tblbutton" OnClick="tblButton_Clicked"/></asp:TableCell>
        <asp:TableCell runat="server" Width="14%"><asp:Button id="Button6" runat="server" class="tblbutton" OnClick="tblButton_Clicked"/></asp:TableCell>
        <asp:TableCell runat="server" Width="14%"><asp:Button id="Button7" runat="server" class="tblbutton" OnClick="tblButton_Clicked"/></asp:TableCell>
      </asp:TableRow>
      <asp:TableRow Class="tblrow" runat="server">
        <asp:TableCell runat="server" Width="14%"><asp:Button id="Button8" runat="server" class="tblbutton" OnClick="tblButton_Clicked"/></asp:TableCell>
        <asp:TableCell runat="server" Width="14%"><asp:Button id="Button9" runat="server" class="tblbutton" OnClick="tblButton_Clicked"/></asp:TableCell>
        <asp:TableCell runat="server" Width="14%"><asp:Button id="Button10" runat="server" class="tblbutton" OnClick="tblButton_Clicked"/></asp:TableCell>
        <asp:TableCell runat="server" Width="14%"><asp:Button id="Button11" runat="server" class="tblbutton" OnClick="tblButton_Clicked"/></asp:TableCell>
        <asp:TableCell runat="server" Width="14%"><asp:Button id="Button12" runat="server" class="tblbutton" OnClick="tblButton_Clicked"/></asp:TableCell>
        <asp:TableCell runat="server" Width="14%"><asp:Button id="Button13" runat="server" class="tblbutton" OnClick="tblButton_Clicked"/></asp:TableCell>
        <asp:TableCell runat="server" Width="14%"><asp:Button id="Button14" runat="server" class="tblbutton" OnClick="tblButton_Clicked"/></asp:TableCell>
      </asp:TableRow>
      <asp:TableRow Class="tblrow" runat="server">
        <asp:TableCell runat="server" Width="14%"><asp:Button id="Button29" runat="server" class="tblbutton" OnClick="tblButton_Clicked"/></asp:TableCell>
        <asp:TableCell runat="server" Width="14%"><asp:Button id="Button30" runat="server" class="tblbutton" OnClick="tblButton_Clicked"/></asp:TableCell>
        <asp:TableCell runat="server" Width="14%"><asp:Button id="Button31" runat="server" class="tblbutton" OnClick="tblButton_Clicked"/></asp:TableCell>
        <asp:TableCell runat="server" Width="14%"><asp:Button id="Button32" runat="server" class="tblbutton" OnClick="tblButton_Clicked"/></asp:TableCell>
        <asp:TableCell runat="server" Width="14%"><asp:Button id="Button33" runat="server" class="tblbutton" OnClick="tblButton_Clicked"/></asp:TableCell>
        <asp:TableCell runat="server" Width="14%"><asp:Button id="Button34" runat="server" class="tblbutton" OnClick="tblButton_Clicked"/></asp:TableCell>
        <asp:TableCell runat="server" Width="14%"><asp:Button id="Button35" runat="server" class="tblbutton" OnClick="tblButton_Clicked"/></asp:TableCell>
      </asp:TableRow>
      <asp:TableRow Class="tblrow" runat="server">
        <asp:TableCell runat="server" Width="14%"><asp:Button id="Button22" runat="server" class="tblbutton" OnClick="tblButton_Clicked"/></asp:TableCell>
        <asp:TableCell runat="server" Width="14%"><asp:Button id="Button23" runat="server" class="tblbutton" OnClick="tblButton_Clicked"/></asp:TableCell>
        <asp:TableCell runat="server" Width="14%"><asp:Button id="Button24" runat="server" class="tblbutton" OnClick="tblButton_Clicked"/></asp:TableCell>
        <asp:TableCell runat="server" Width="14%"><asp:Button id="Button25" runat="server" class="tblbutton" OnClick="tblButton_Clicked"/></asp:TableCell>
        <asp:TableCell runat="server" Width="14%"><asp:Button id="Button26" runat="server" class="tblbutton" OnClick="tblButton_Clicked"/></asp:TableCell>
        <asp:TableCell runat="server" Width="14%"><asp:Button id="Button27" runat="server" class="tblbutton" OnClick="tblButton_Clicked"/></asp:TableCell>
        <asp:TableCell runat="server" Width="14%"><asp:Button id="Button28" runat="server" class="tblbutton" OnClick="tblButton_Clicked"/></asp:TableCell>
      </asp:TableRow>
      <asp:TableRow Class="tblrow" runat="server">
        <asp:TableCell runat="server" Width="14%"><asp:Button id="Button15" runat="server" class="tblbutton" OnClick="tblButton_Clicked"/></asp:TableCell>
        <asp:TableCell runat="server" Width="14%"><asp:Button id="Button16" runat="server" class="tblbutton" OnClick="tblButton_Clicked"/></asp:TableCell>
        <asp:TableCell runat="server" Width="14%"><asp:Button id="Button17" runat="server" class="tblbutton" OnClick="tblButton_Clicked"/></asp:TableCell>
        <asp:TableCell runat="server" Width="14%"><asp:Button id="Button18" runat="server" class="tblbutton" OnClick="tblButton_Clicked"/></asp:TableCell>
        <asp:TableCell runat="server" Width="14%"><asp:Button id="Button19" runat="server" class="tblbutton" OnClick="tblButton_Clicked"/></asp:TableCell>
        <asp:TableCell runat="server" Width="14%"><asp:Button id="Button20" runat="server" class="tblbutton" OnClick="tblButton_Clicked"/></asp:TableCell>
        <asp:TableCell runat="server" Width="14%"><asp:Button id="Button21" runat="server" class="tblbutton" OnClick="tblButton_Clicked"/></asp:TableCell>
      </asp:TableRow>
    </asp:Table>
    <div id="choices" style="width: 100%; text-align: center;">
      <br />
      <asp:Label ID="lblPickADay" runat="server" Style="color: white; font-size: 1.4em;" />
      <br/><br/>
      <asp:Button ID="btnAdmin" runat="server" Text="ADMIN" OnClick="btnAdmin_Clicked"/>
    </div>
  </div>
</asp:Content>
