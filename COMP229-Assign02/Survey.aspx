<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Survey.aspx.cs" Inherits="COMP229_Assign02.Survey" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

   <asp:Label runat="server" Text="Username:" />
    <asp:TextBox ID="UsernameTxtBox" runat="server" TextMode="SingleLine" />
    <asp:RequiredFieldValidator ID="UsernameTxtBox_RequiredFieldValidator" ControlToValidate="UsernameTxtBox"
        runat="server" ErrorMessage="Username is required" Display="Dynamic"/>

    <!--Submit Button-->
    <asp:Button ID="Submit" runat="server" onclick="Submit_Click"/>

</asp:Content>
