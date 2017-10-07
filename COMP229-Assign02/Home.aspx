<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="COMP229_Assign02.Home" %>

<asp:Content ContentPlaceHolderID="SpecialEdition" runat="server">
</asp:Content>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="allPage">
        <div id="hero" class="jumbotron jumbotron-fluid">


            <h1 class="title">AW</h1>
            <h3 class="subtitle">Asian Wave</h3>
            <p class="lead">
                How did we do? Give us some suggestion!
            </p>
            <a href="Survey.aspx" class="btn btn-primary btn-lg">Feedback! </a>


        </div>

        <div id="content">
            <p>
                Thank you for shopping at AW - Asian Wave, the music wave from Asian!
            </p>
            <p>
                Our store is established in the beginning of this year - 2017; therefore, we try our best to improve 
            the service system. We care about YOU, and YOUR SHOPPING EXPERIENCE!
            </p>
            <ul>
                <li>Getting annoyed by the shopping questions?</li>
                <li>Can't figure out what the deals are today?</li>
                <li>Some functions do not working right?</li>
                <li>You suggest an user interaction's idea</li>
                <li>Or just want to support us?</li>
            </ul>
            <p style="text-align:center;">
                Let us know! Take the survey for 5 minutes only!
            <br />
            <a href="Survey.aspx" class="btn btn-primary btn-lg">Feedback! </a>
                </p>
        </div>
        <br />
        <div id="privacy" class="end">
            <p>We are using the Amazon Delivery System. Please understand the Disclaimer rules before taking the survey.</p>
            <p><a href="https://www.amazon.com/gp/help/customer/display.html?nodeId=468496" class="btn btn-warning btn-sm">Disclaimer!</a></p>
        </div>
    </div>
</asp:Content>
