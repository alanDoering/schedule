<%@ Page Title="" Language="C#" MasterPageFile="~/schedule.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="schedule.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<link href="schedule.css" rel="stylesheet" />
  <div id="divtopbar">
    <asp:Label ID="lblLoginTitle" runat="server" Text="view date"/>
  </div>
  <div id="divlogin" style="text-align:center; width: 100%;">
    <br />
    <asp:Label ID="lblNameAndPassword" runat="server" Text="Label" Style="color: white; font-size: 1.2em;"/>
    <br /><br />
    <div id="logName"">
      <asp:TextBox ID="txtAdminName" runat="server" Width="300px"/>
    </div>
    <div>
      <asp:Label ID="lblAdminNameCaption" runat="server" Style="color: white; font-size: 1.2em;"/>
    </div>
    <br />
    <div id="logPassword"">
      <asp:TextBox ID="txtAdminPassword" runat="server" Width="200px" TextMode="Password"/>
    </div>
    <div>
      <asp:Label ID="lblAdminPasswordCaption" runat="server" Style="color: white; font-size: 1.2em;"/>
    </div>
    <br/>
    <asp:Label ID="loginError" runat="server" ForeColor="Red" Font-Bold="True" /><br />
    <asp:Button ID="btnLogin" runat="server" Text="LOGIN" OnClick="btnLogin_Clicked"/>
    &nbsp;&nbsp;
    <asp:Button ID="btnCancel" runat="server" Text="CANCEL" OnClick="btnCancel_Clicked"/>
  </div>
</asp:Content>
