<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="COMP229_Assign02.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!--a.	identify the brand.
b.	provide a link to the survey page.
c.	explain what the survey is about. 
d.	include appropriate disclaimers and privacy statements (you may link to an external site’s disclaimer, like Microsoft or Amazon). Hyperlink controls
e.	load by default when your site is run in Visual Studio.
-->

    <div id="hero" class="jumbotron jumbotron-fluid">
        <p><a href="~/Survey.aspx" class="btn btn-primary btn-lg">Feedback! </a></p>
    </div>

</asp:Content>
