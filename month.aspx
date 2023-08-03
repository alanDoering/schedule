<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="month.aspx.cs" Inherits="NewSchedule._month" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title>Schedule</title>
  <link href="Schedule.css" rel="stylesheet" />
</head>
<body>
  <form id="form1" runat="server">
    <div id="divtopbar">
        <asp:Label ID="lbltitle" runat="server" Text="view date"/>
        &nbsp;&nbsp;
        <asp:ImageButton ID="btnArrowLeft" runat="server" ImageUrl="Images/Arrow-Left.png" OnClick="ArrowLeft_Clicked"/>
        &nbsp;
        <asp:Label ID="lblViewDate" runat="server" Text="view date"/>
        &nbsp;
        <asp:ImageButton ID="btnArrowRight" runat="server" ImageUrl="Images/Arrow-Right.png" OnClick="ArrowRight_Clicked" />
    </div>
   <div id="divcalendar">
      <asp:Table ID="tblMonth" runat="server">
        <asp:TableHeaderRow CssClass="tblheader" runat="server">
          <asp:TableHeaderCell runat="server">Sun</asp:TableHeaderCell>
          <asp:TableHeaderCell runat="server">Mon</asp:TableHeaderCell>
          <asp:TableHeaderCell runat="server">Tue</asp:TableHeaderCell>
          <asp:TableHeaderCell runat="server">Wed</asp:TableHeaderCell>
          <asp:TableHeaderCell runat="server">Thu</asp:TableHeaderCell>
          <asp:TableHeaderCell runat="server">Fri</asp:TableHeaderCell>
          <asp:TableHeaderCell runat="server">Sat</asp:TableHeaderCell>
        </asp:TableHeaderRow>
        <asp:TableRow CssClass="tblrow" runat="server">
          <asp:TableCell CssClass="tblcell" runat="server"><asp:Button id="btn00" runat="server" Cssclass="tblbutton" OnClick="tblButton_Clicked"/></asp:TableCell>
          <asp:TableCell CssClass="tblcell" runat="server"><asp:Button id="btn01" runat="server" Cssclass="tblbutton" OnClick="tblButton_Clicked"/></asp:TableCell>
          <asp:TableCell CssClass="tblcell" runat="server"><asp:Button id="btn02" runat="server" Cssclass="tblbutton" OnClick="tblButton_Clicked"/></asp:TableCell>
          <asp:TableCell CssClass="tblcell" runat="server"><asp:Button id="btn03" runat="server" Cssclass="tblbutton" OnClick="tblButton_Clicked"/></asp:TableCell>
          <asp:TableCell CssClass="tblcell" runat="server"><asp:Button id="btn04" runat="server" Cssclass="tblbutton" OnClick="tblButton_Clicked"/></asp:TableCell>
          <asp:TableCell CssClass="tblcell" runat="server"><asp:Button id="btn05" runat="server" Cssclass="tblbutton" OnClick="tblButton_Clicked"/></asp:TableCell>
          <asp:TableCell CssClass="tblcell" runat="server"><asp:Button id="btn06" runat="server" Cssclass="tblbutton" OnClick="tblButton_Clicked"/></asp:TableCell>
        </asp:TableRow>
        <asp:TableRow CssClass="tblrow" runat="server">
          <asp:TableCell CssClass="tblcell" runat="server"><asp:Button runat="server" Cssclass="tblbutton" OnClick="tblButton_Clicked"/></asp:TableCell>
          <asp:TableCell CssClass="tblcell" runat="server"><asp:Button runat="server" Cssclass="tblbutton" OnClick="tblButton_Clicked"/></asp:TableCell>
          <asp:TableCell CssClass="tblcell" runat="server"><asp:Button runat="server" Cssclass="tblbutton" OnClick="tblButton_Clicked"/></asp:TableCell>
          <asp:TableCell CssClass="tblcell" runat="server"><asp:Button runat="server" Cssclass="tblbutton" OnClick="tblButton_Clicked"/></asp:TableCell>
          <asp:TableCell CssClass="tblcell" runat="server"><asp:Button runat="server" Cssclass="tblbutton" OnClick="tblButton_Clicked"/></asp:TableCell>
          <asp:TableCell CssClass="tblcell" runat="server"><asp:Button runat="server" Cssclass="tblbutton" OnClick="tblButton_Clicked"/></asp:TableCell>
          <asp:TableCell CssClass="tblcell" runat="server"><asp:Button runat="server" Cssclass="tblbutton" OnClick="tblButton_Clicked"/></asp:TableCell>
        </asp:TableRow>
        <asp:TableRow CssClass="tblrow" runat="server">
          <asp:TableCell CssClass="tblcell" runat="server"><asp:Button runat="server" Cssclass="tblbutton" OnClick="tblButton_Clicked"/></asp:TableCell>
          <asp:TableCell CssClass="tblcell" runat="server"><asp:Button runat="server" Cssclass="tblbutton" OnClick="tblButton_Clicked"/></asp:TableCell>
          <asp:TableCell CssClass="tblcell" runat="server"><asp:Button runat="server" Cssclass="tblbutton" OnClick="tblButton_Clicked"/></asp:TableCell>
          <asp:TableCell CssClass="tblcell" runat="server"><asp:Button runat="server" Cssclass="tblbutton" OnClick="tblButton_Clicked"/></asp:TableCell>
          <asp:TableCell CssClass="tblcell" runat="server"><asp:Button runat="server" Cssclass="tblbutton" OnClick="tblButton_Clicked"/></asp:TableCell>
          <asp:TableCell CssClass="tblcell" runat="server"><asp:Button runat="server" Cssclass="tblbutton" OnClick="tblButton_Clicked"/></asp:TableCell>
          <asp:TableCell CssClass="tblcell" runat="server"><asp:Button runat="server" Cssclass="tblbutton" OnClick="tblButton_Clicked"/></asp:TableCell>
        </asp:TableRow>
        <asp:TableRow CssClass="tblrow" runat="server">
          <asp:TableCell CssClass="tblcell" runat="server"><asp:Button runat="server" Cssclass="tblbutton" OnClick="tblButton_Clicked"/></asp:TableCell>
          <asp:TableCell CssClass="tblcell" runat="server"><asp:Button runat="server" Cssclass="tblbutton" OnClick="tblButton_Clicked"/></asp:TableCell>
          <asp:TableCell CssClass="tblcell" runat="server"><asp:Button runat="server" Cssclass="tblbutton" OnClick="tblButton_Clicked"/></asp:TableCell>
          <asp:TableCell CssClass="tblcell" runat="server"><asp:Button runat="server" Cssclass="tblbutton" OnClick="tblButton_Clicked"/></asp:TableCell>
          <asp:TableCell CssClass="tblcell" runat="server"><asp:Button runat="server" Cssclass="tblbutton" OnClick="tblButton_Clicked"/></asp:TableCell>
          <asp:TableCell CssClass="tblcell" runat="server"><asp:Button runat="server" Cssclass="tblbutton" OnClick="tblButton_Clicked"/></asp:TableCell>
          <asp:TableCell CssClass="tblcell" runat="server"><asp:Button runat="server" Cssclass="tblbutton" OnClick="tblButton_Clicked"/></asp:TableCell>
        </asp:TableRow>
        <asp:TableRow CssClass="tblrow" runat="server">
          <asp:TableCell CssClass="tblcell" runat="server"><asp:Button runat="server" Cssclass="tblbutton" OnClick="tblButton_Clicked"/></asp:TableCell>
          <asp:TableCell CssClass="tblcell" runat="server"><asp:Button runat="server" Cssclass="tblbutton" OnClick="tblButton_Clicked"/></asp:TableCell>
          <asp:TableCell CssClass="tblcell" runat="server"><asp:Button runat="server" Cssclass="tblbutton" OnClick="tblButton_Clicked"/></asp:TableCell>
          <asp:TableCell CssClass="tblcell" runat="server"><asp:Button runat="server" Cssclass="tblbutton" OnClick="tblButton_Clicked"/></asp:TableCell>
          <asp:TableCell CssClass="tblcell" runat="server"><asp:Button runat="server" Cssclass="tblbutton" OnClick="tblButton_Clicked"/></asp:TableCell>
          <asp:TableCell CssClass="tblcell" runat="server"><asp:Button runat="server" Cssclass="tblbutton" OnClick="tblButton_Clicked"/></asp:TableCell>
          <asp:TableCell CssClass="tblcell" runat="server"><asp:Button runat="server" Cssclass="tblbutton" OnClick="tblButton_Clicked"/></asp:TableCell>
        </asp:TableRow>
        <asp:TableRow CssClass="tblrow" runat="server">
          <asp:TableCell CssClass="tblcell" runat="server"><asp:Button runat="server" Cssclass="tblbutton" OnClick="tblButton_Clicked"/></asp:TableCell>
          <asp:TableCell CssClass="tblcell" runat="server"><asp:Button runat="server" Cssclass="tblbutton" OnClick="tblButton_Clicked"/></asp:TableCell>
          <asp:TableCell CssClass="tblcell" runat="server"><asp:Button runat="server" Cssclass="tblbutton" OnClick="tblButton_Clicked"/></asp:TableCell>
          <asp:TableCell CssClass="tblcell" runat="server"><asp:Button runat="server" Cssclass="tblbutton" OnClick="tblButton_Clicked"/></asp:TableCell>
          <asp:TableCell CssClass="tblcell" runat="server"><asp:Button runat="server" Cssclass="tblbutton" OnClick="tblButton_Clicked"/></asp:TableCell>
          <asp:TableCell CssClass="tblcell" runat="server"><asp:Button runat="server" Cssclass="tblbutton" OnClick="tblButton_Clicked"/></asp:TableCell>
          <asp:TableCell CssClass="tblcell" runat="server"><asp:Button runat="server" Cssclass="tblbutton" OnClick="tblButton_Clicked"/></asp:TableCell>
        </asp:TableRow>
      </asp:Table>
    </div>
    <div id="choices" style="width: 100%; text-align: center;">
      <br />
      <asp:Label ID="lblPickADay" runat="server"/>
      <br/><br/>
      <asp:Button ID="btnAdmin" runat="server" Text="ADMIN" OnClick="btnAdmin_Clicked"/>
    </div>
    </form>
</body>
</html>
