<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ThankYou.aspx.cs" Inherits="COMP229_Assign02.ThankYou" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="allPage">

        <h1 class="title">AW</h1>
        <h3 class="subtitle">Asian Wave</h3>
        <div class="row">
            <div class="col-sm-6">
                <h4 class="header">Thank you</h4>
                <p>
                    Thank you for taking our service and spending time to take this survey. 
                We have receive your feedback and will try our best to create a better platform.
                <br />
                    Sincerely,
                <br />
                    <span style="font-family: 'Handlee', cursive;">Jolisa</span>
                    <br />
                    Customer Service Team
                </p>
                <p>
                </p>
            </div>
            <div class="col-sm-6 " style="clear: right;">
                <h4 class="header">Survey Info</h4>

                <asp:Label runat="server" CssClass="question" Text="Email: "></asp:Label>
                <asp:Label ID="lblEmail" runat="server" />
                <br />
                <asp:Label runat="server" CssClass="question" Text="Birthday: "></asp:Label>
                <asp:Label ID="lblBirthday" runat="server" />
                <br />
                <asp:Label runat="server" CssClass="question" Text="Order Date: "></asp:Label>
                <asp:Label ID="lblOrder" runat="server" />
                <br />
                <asp:Label runat="server" CssClass="question" Text="Receive Date: "></asp:Label>
                <asp:Label ID="lblReceive" runat="server" />
                <br />

                <asp:Label runat="server" CssClass="question" Text="Level of Recommend"></asp:Label>
                <asp:Label ID="lblRecommend" runat="server" />
                <br />
                <asp:Label runat="server" CssClass="question" Text="Reason choosing delivery: "></asp:Label>
                <asp:Label ID="lblReason" runat="server" />
                <br />
                <asp:Label runat="server" CssClass="question" Text="Heard about us from: "></asp:Label>
                <asp:Label ID="lblHeard" runat="server" />
                <br />
                <asp:Label runat="server" CssClass="question" Text="Your note: "></asp:Label>
                <asp:Label ID="lblNote" runat="server" />
            </div>
        </div>

    </div>
    <br />
</asp:Content>
