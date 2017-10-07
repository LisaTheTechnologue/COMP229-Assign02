using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace COMP229_Assign02
{
    public partial class Survey : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CheckRadioBtn(Object s, ServerValidateEventArgs e)
        {

            if (HeardBtnList.SelectedValue == "")
            {
                e.IsValid = false;
            }
            else
            {
                e.IsValid = true;

            }
        }

        protected void CheckBox(Object s, ServerValidateEventArgs e)
        {
            for (int i = 0; i < ReasonCheckList.Items.Count; i++)
            {
                if (ReasonCheckList.Items[i].Selected)
                {
                    e.IsValid = true;
                    break;
                }
                else
                {
                    e.IsValid = false;
                }

            }
        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                SendData();

            }

        }
        protected void Check(object sender, EventArgs e)
        {
            if (ReasonCheckList.SelectedItem.Text == "Other")
            {
                lblother.Text = "Please specific here: <br/>";
                txtother.Attributes.Add("display", "inline-block");

            }
            if (HeardBtnList.SelectedItem.Text == "Other")
            {
                lblOtherchoice.Text = "Please specific here: <br/>";
                otherchoice.Attributes.Add("display", "inline-block");

            }
        }

        protected void SendData()
        {
            Session["Email"] = EmailTxtBox.Text;
            Session["Order"] = OrderDateTxtBox.Text;
            Session["Receive"] = ReceiveDateTxtBox.Text;
            Session["Birthday"] = BirthdayTxtBox.Text;
            Session["Recommend"] = RecommendDropList.SelectedValue;


            if (HeardBtnList.SelectedValue == "other")
            {
                Session["HeardChoice"] = txtother.Text;
            }
            else
            {

                Session["HeardChoice"] = HeardBtnList.SelectedItem;
            }

            int count2 = ReasonCheckList.Items.Count;
            List<string> values2 = new List<string>();
            for (int i = 0; i < count2; i++)
            {
                if (ReasonCheckList.Items[i].Selected)
                {
                    if (ReasonCheckList.Items[i].Text == "other")
                    {
                        values2.Add(otherchoice.Text);
                    }
                    else
                    {
                        values2.Add(ReasonCheckList.Items[i].Text);
                    }
                }
            }
            Session["Reason"] = string.Join("<br/>", values2.ToArray()); ;

            if (Note.Text == "") { Session["Note"] = "You have no note"; }
            else { Session["Note"] = Note.Text; }
            Response.Redirect("ThankYou.aspx");
        }
    }
}