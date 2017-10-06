<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Survey.aspx.cs" Inherits="COMP229_Assign02.Survey" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="allPage">
        <p>Please take a few minutes to share your Amazon Pickup Points delivery experience with us, and let us know how we can improve the service. Note: if your feedback requires a response, please visit amazon.ca/help to contact Customer Service.</p>
        <p>User Account</p>
        <div class="form-group"></div>
        <asp:Label runat="server" Text="Email:" />
        <asp:TextBox ID="EmailTxtBox" runat="server" TextMode="SingleLine" CssClass="form-control" />
        <asp:RequiredFieldValidator ID="RequiredEmail" ControlToValidate="EmailTxtBox"
            runat="server" ErrorMessage="Email is required" Display="Dynamic" />

        <div class="form-group"></div>
        <asp:Label runat="server" Text="Password:" />
        <asp:TextBox ID="PasswordTxtBox" runat="server" TextMode="SingleLine" CssClass="form-control" />
        <asp:RequiredFieldValidator ID="RequiredPassword" ControlToValidate="PasswordTxtBox"
            runat="server" ErrorMessage="Password is required" Display="Dynamic" />

        <div class="form-group">
            <asp:Label runat="server" Text="Birthday:" />
            <asp:TextBox ID="BirthdayTxtBox" runat="server" TextMode="SingleLine" CssClass="form-control" />
            <asp:RequiredFieldValidator ID="RequiredBirthday" ControlToValidate="BirthdayTxtBox"
                runat="server" ErrorMessage="Birthday is required" Display="Dynamic" />
        </div>

        <p>Survey Questions:</p>
        <div class="form-group">
            <asp:Label runat="server" CssClass="question" Text="1. How likely are you to recommend Amazon Pickup Points to a friend or family member? , required" />

            <asp:DropDownList ID="RecommendDropList" runat="server" CssClass="form-control">
                <asp:ListItem Value="select">---Select---</asp:ListItem>
                <asp:ListItem Value="10 - Highly Recommend "> </asp:ListItem>
                <asp:ListItem Value="9" Text="9                     "> </asp:ListItem>
                <asp:ListItem Value="8" Text="8                     "> </asp:ListItem>
                <asp:ListItem Value="7" Text="7                     "> </asp:ListItem>
                <asp:ListItem Value="6" Text="6                     "> </asp:ListItem>
                <asp:ListItem Value="5" Text="5                     "> </asp:ListItem>
                <asp:ListItem Value="4" Text="4                     "> </asp:ListItem>
                <asp:ListItem Value="3" Text="3                     "> </asp:ListItem>
                <asp:ListItem Value="2" Text="2                     "> </asp:ListItem>
                <asp:ListItem Value="1" Text="1                     "> </asp:ListItem>
                <asp:ListItem Value="0 - Highly Unrecommend"> </asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator runat="server" ControlToValidate="RecommendDropList" InitialValue="select"
                ErrorMessage="Required" Display="Dynamic" />
        </div>
        <br />
        <div class="form-group">
            <asp:Label runat="server" CssClass="question" Text="2. How did you first learn about Amazon Pickup Points?" />
            <div class="radio radiobuttonlist">
                <asp:RadioButtonList ID="HeardBtnList" runat="server" CssClass="radio" RepeatLayout="Flow" RepeatDirection="Vertical">
                    <asp:ListItem Selected="True" Value="friend"> From a friend/colleague                      </asp:ListItem>
                    <asp:ListItem Value="email"> In an email                                  </asp:ListItem>
                    <asp:ListItem Value="browsing"> While browsing for an item on amazon.ca      </asp:ListItem>
                    <asp:ListItem Value="checkout"> During checkout                              </asp:ListItem>
                    <asp:ListItem Value="poster"> Poster/brochure                              </asp:ListItem>
                    <asp:ListItem Value="media"> In a media article                           </asp:ListItem>
                    <asp:ListItem Value="sns"> On social media (Facebook, Twitter, etc.)    </asp:ListItem>
                    <asp:ListItem Value="video"> In a video                                   </asp:ListItem>
                    <asp:ListItem Value="ad"> From an ad                                   </asp:ListItem>
                    <asp:ListItem Value="other"> Other                                        </asp:ListItem>
                </asp:RadioButtonList>
            </div>
            <asp:RequiredFieldValidator runat="server" ControlToValidate="HeardBtnList" OnServerValidate="CheckRadioBtn" ErrorMessage="Required" />
        </div>
        <br />
        <div class="form-group">
            <asp:Label runat="server" CssClass="question" Text="3. What were your primary reasons for choosing an Amazon Pickup Point delivery on your most recent order? , required" />
            <div class="checkbox checkboxlist">
                <asp:CheckBoxList ID="ReasonCheckList" runat="server" CssClass="checkbox" RepeatLayout="Flow">
                    <asp:ListItem Value="not have service"> I don’t have delivery services in my building</asp:ListItem>
                    <asp:ListItem Value="not want 1"> I didn’t want my package left on my doorstep</asp:ListItem>
                    <asp:ListItem Value="outside bsn hr"> I needed to receive my order outside of business hours</asp:ListItem>
                    <asp:ListItem Value="can not"> I cannot receive deliveries at work or school</asp:ListItem>
                    <asp:ListItem Value="not available"> I was out of town during the scheduled delivery</asp:ListItem>
                    <asp:ListItem Value="not want 2"> I didn’t want to wait until I reach home to receive my order</asp:ListItem>
                    <asp:ListItem Value="gift"> My order was a gift</asp:ListItem>
                    <asp:ListItem Value="other"> Other</asp:ListItem>
                </asp:CheckBoxList>
            </div>
            <asp:CustomValidator ID="ReqReason" runat="server" OnServerValidate="CheckBox" ErrorMessage="Required" />
        </div>
        <br />
        <div class="form-group">
            <asp:Label runat="server" CssClass="question" Text="4. What is the #1 thing we can do to make your next Pickup Point experience even better? (optional): " />
            <asp:TextBox ID="Note" runat="server" TextMode="SingleLine" CssClass="form-control" />
        </div>
        <br />

        Thank you for your time and feedback. Please click the button below to submit your answers.
    <br />
        <!--Submit Button-->
        <asp:Button ID="Submit" runat="server" OnClick="Submit_Click" Text="Submit" />
        <br />
        <asp:ValidationSummary CssClass="error" runat="server" />
    </div>
</asp:Content>
