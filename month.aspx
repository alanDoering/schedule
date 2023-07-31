<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="month.aspx.cs" Inherits="NewSchedule._month" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title>Schedule</title>
  <link href="Schedule.css" rel="stylesheet" />
</head>
<body>
  <form id="form1" runat="server">
    <div id="topbar">
      <asp:Table ID="tblTop" runat="server">
        <asp:TableRow runat="server">
          <asp:TableCell ID="topLeft" runat="server">
            <asp:ImageButton ID="btnArrowLeft" runat="server" ImageUrl="Images/Arrow-Left.png" OnClick="ArrowLeft_Clicked"/>
            &nbsp;
            <asp:Label ID="lblViewDate" runat="server" Text="view date"/>
            &nbsp;
            <asp:ImageButton ID="btnArrowRight" runat="server" ImageUrl="Images/Arrow-Right.png" OnClick="ArrowRight_Clicked" />
          </asp:TableCell>
          <asp:TableCell ID="topRight" runat="server">
          </asp:TableCell>
        </asp:TableRow>
      </asp:Table>
    </div>
    <asp:Table ID="tblMonth" runat="server" CellPadding="0" CellSpacing="0">
      <asp:TableHeaderRow ID="tblHeader" runat="server" width="100%">
        <asp:TableHeaderCell runat="server" width="14%">
          S
        </asp:TableHeaderCell>
        <asp:TableHeaderCell runat="server" width="14%">
          M
        </asp:TableHeaderCell>
        <asp:TableHeaderCell runat="server" width="14%">
          T
        </asp:TableHeaderCell>
        <asp:TableHeaderCell runat="server" width="14%">
          W
        </asp:TableHeaderCell>
        <asp:TableHeaderCell runat="server" width="14%">
          T
        </asp:TableHeaderCell>
        <asp:TableHeaderCell runat="server" width="14%">
          F
        </asp:TableHeaderCell>
        <asp:TableHeaderCell runat="server" width="14%">
          S
        </asp:TableHeaderCell>
      </asp:TableHeaderRow>
      <asp:TableRow runat="server">
        <asp:TableCell runat="server" width="14%">
          <asp:Button class="tblButton" ID="btn10" runat="server" Text="Button"  OnClick="tblButton_Clicked"/>
        </asp:TableCell>
        <asp:TableCell runat="server" width="14%">
          <asp:Button class="tblButton" ID="btn11" runat="server" Text="Button"  OnClick="tblButton_Clicked"/>
        </asp:TableCell>
        <asp:TableCell runat="server" width="14%">
          <asp:Button class="tblButton" ID="btn12" runat="server" Text="Button"  OnClick="tblButton_Clicked"/>
        </asp:TableCell>
        <asp:TableCell runat="server" width="14%">
          <asp:Button class="tblButton" ID="btn13" runat="server" Text="Button"  OnClick="tblButton_Clicked"/>
        </asp:TableCell>
        <asp:TableCell runat="server" width="14%">
          <asp:Button class="tblButton" ID="btn14" runat="server" Text="Button"  OnClick="tblButton_Clicked"/>
        </asp:TableCell>
        <asp:TableCell runat="server" width="14%">
          <asp:Button class="tblButton" ID="btn15" runat="server" Text="Button"  OnClick="tblButton_Clicked"/>
        </asp:TableCell>
        <asp:TableCell runat="server" width="14%">
          <asp:Button class="tblButton" ID="btn16" runat="server" Text="Button"  OnClick="tblButton_Clicked"/>
        </asp:TableCell>
      </asp:TableRow>
      <asp:TableRow runat="server">
        <asp:TableCell runat="server" width="14%">
          <asp:Button class="tblButton" ID="btn20" runat="server" Text="Button"  OnClick="tblButton_Clicked"/>
        </asp:TableCell>
        <asp:TableCell runat="server" width="14%">
          <asp:Button class="tblButton" ID="btn21" runat="server" Text="Button"  OnClick="tblButton_Clicked"/>
        </asp:TableCell>
        <asp:TableCell runat="server" width="14%">
          <asp:Button class="tblButton" ID="btn22" runat="server" Text="Button"  OnClick="tblButton_Clicked"/>
        </asp:TableCell>
        <asp:TableCell runat="server" width="14%">
          <asp:Button class="tblButton" ID="btn23" runat="server" Text="Button"  OnClick="tblButton_Clicked"/>
        </asp:TableCell>
        <asp:TableCell runat="server" width="14%">
          <asp:Button class="tblButton" ID="btn24" runat="server" Text="Button"  OnClick="tblButton_Clicked"/>
        </asp:TableCell>
        <asp:TableCell runat="server" width="14%">
          <asp:Button class="tblButton" ID="btn25" runat="server" Text="Button"  OnClick="tblButton_Clicked"/>
        </asp:TableCell>
        <asp:TableCell runat="server" width="14%">
          <asp:Button class="tblButton" ID="btn26" runat="server" Text="Button"  OnClick="tblButton_Clicked"/>
        </asp:TableCell>
      </asp:TableRow>
      <asp:TableRow runat="server">
        <asp:TableCell runat="server" width="14%">
          <asp:Button class="tblButton" ID="btn30" runat="server" Text="Button"  OnClick="tblButton_Clicked"/>
        </asp:TableCell>
        <asp:TableCell runat="server" width="14%">
          <asp:Button class="tblButton" ID="btn31" runat="server" Text="Button"  OnClick="tblButton_Clicked"/>
        </asp:TableCell>
        <asp:TableCell runat="server" width="14%">
          <asp:Button class="tblButton" ID="btn32" runat="server" Text="Button"  OnClick="tblButton_Clicked"/>
        </asp:TableCell>
        <asp:TableCell runat="server" width="14%">
          <asp:Button class="tblButton" ID="btn33" runat="server" Text="Button"  OnClick="tblButton_Clicked"/>
        </asp:TableCell>
        <asp:TableCell runat="server" width="14%">
          <asp:Button class="tblButton" ID="btn34" runat="server" Text="Button"  OnClick="tblButton_Clicked"/>
        </asp:TableCell>
        <asp:TableCell runat="server" width="14%">
          <asp:Button class="tblButton" ID="btn35" runat="server" Text="Button"  OnClick="tblButton_Clicked"/>
        </asp:TableCell>
        <asp:TableCell runat="server" width="14%">
          <asp:Button class="tblButton" ID="btn36" runat="server" Text="Button"  OnClick="tblButton_Clicked"/>
        </asp:TableCell>
      </asp:TableRow>
      <asp:TableRow runat="server">
        <asp:TableCell runat="server" width="14%">
          <asp:Button class="tblButton" ID="btn40" runat="server" Text="Button"  OnClick="tblButton_Clicked"/>
        </asp:TableCell>
        <asp:TableCell runat="server" width="14%">
          <asp:Button class="tblButton" ID="btn41" runat="server" Text="Button"  OnClick="tblButton_Clicked"/>
        </asp:TableCell>
        <asp:TableCell runat="server" width="14%">
          <asp:Button class="tblButton" ID="btn42" runat="server" Text="Button"  OnClick="tblButton_Clicked"/>
        </asp:TableCell>
        <asp:TableCell runat="server" width="14%">
          <asp:Button class="tblButton" ID="btn43" runat="server" Text="Button"  OnClick="tblButton_Clicked"/>
        </asp:TableCell>
        <asp:TableCell runat="server" width="14%">
          <asp:Button class="tblButton" ID="btn44" runat="server" Text="Button"  OnClick="tblButton_Clicked"/>
        </asp:TableCell>
        <asp:TableCell runat="server" width="14%">
          <asp:Button class="tblButton" ID="btn45" runat="server" Text="Button"  OnClick="tblButton_Clicked"/>
        </asp:TableCell>
        <asp:TableCell runat="server" width="14%">
          <asp:Button class="tblButton" ID="btn46" runat="server" Text="Button"  OnClick="tblButton_Clicked"/>
        </asp:TableCell>
      </asp:TableRow>
      <asp:TableRow runat="server">
        <asp:TableCell runat="server" width="14%">
          <asp:Button class="tblButton" ID="btn50" runat="server" Text="Button"  OnClick="tblButton_Clicked"/>
        </asp:TableCell>
        <asp:TableCell runat="server" width="14%">
          <asp:Button class="tblButton" ID="btn51" runat="server" Text="Button"  OnClick="tblButton_Clicked"/>
        </asp:TableCell>
        <asp:TableCell runat="server" width="14%">
          <asp:Button class="tblButton" ID="btn52" runat="server" Text="Button"  OnClick="tblButton_Clicked"/>
        </asp:TableCell>
        <asp:TableCell runat="server" width="14%">
          <asp:Button class="tblButton" ID="btn53" runat="server" Text="Button"  OnClick="tblButton_Clicked"/>
        </asp:TableCell>
        <asp:TableCell runat="server" width="14%">
          <asp:Button class="tblButton" ID="btn54" runat="server" Text="Button"  OnClick="tblButton_Clicked"/>
        </asp:TableCell>
        <asp:TableCell runat="server" width="14%">
          <asp:Button class="tblButton" ID="btn55" runat="server" Text="Button"  OnClick="tblButton_Clicked"/>
        </asp:TableCell>
        <asp:TableCell runat="server" width="14%">
          <asp:Button class="tblButton" ID="btn56" runat="server" Text="Button"  OnClick="tblButton_Clicked"/>
        </asp:TableCell>
      </asp:TableRow>
      <asp:TableRow runat="server">
        <asp:TableCell runat="server" width="14%">
          <asp:Button class="tblButton" ID="btn60" runat="server" Text="Button"  OnClick="tblButton_Clicked"/>
        </asp:TableCell>
        <asp:TableCell runat="server" width="14%">
          <asp:Button class="tblButton" ID="btn61" runat="server" Text="Button"  OnClick="tblButton_Clicked"/>
        </asp:TableCell>
        <asp:TableCell runat="server" width="14%">
          <asp:Button class="tblButton" ID="btn62" runat="server" Text="Button"  OnClick="tblButton_Clicked"/>
        </asp:TableCell>
        <asp:TableCell runat="server" width="14%">
          <asp:Button class="tblButton" ID="btn63" runat="server" Text="Button"  OnClick="tblButton_Clicked"/>
        </asp:TableCell>
        <asp:TableCell runat="server" width="14%">
          <asp:Button class="tblButton" ID="btn64" runat="server" Text="Button"  OnClick="tblButton_Clicked"/>
        </asp:TableCell>
        <asp:TableCell runat="server" width="14%">
          <asp:Button class="tblButton" ID="btn65" runat="server" Text="Button"  OnClick="tblButton_Clicked"/>
        </asp:TableCell>
        <asp:TableCell runat="server" width="14%">
          <asp:Button class="tblButton" ID="btn66" runat="server" Text="Button" OnClick="tblButton_Clicked"/>
        </asp:TableCell>
      </asp:TableRow>
    </asp:Table>
    <br />
    <div ID="divschedule">
      <asp:Label ID="lblSchedule" runat="server" Text="Label">
        Schedule
      </asp:Label>
      <br/>
      <asp:ListBox ID="lstSchedule" runat="server" OnSelectedIndexChanged="lstSchedule_Clicked" AutoPostBack="True"></asp:ListBox>
      <br />
      <asp:Label ID="lblHowToBook" runat="server">Click on a time slot to begin booking an appointment.</asp:Label>
    </div>
    </form>
</body>
</html>
