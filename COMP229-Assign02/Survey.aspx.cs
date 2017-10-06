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
            else
            {
                Submit.Text = "Not Valid";

            }
        }

        protected void SendData()
        {
            Session["Email"] = EmailTxtBox.Text;
            Session["Password"] = PasswordTxtBox.Text;
            Session["Birthday"] = BirthdayTxtBox.Text;
            Session["Recommend"] = RecommendDropList.SelectedValue;
            Session["Note"] = Note.Text;

            //ArrayList checkedList = new ArrayList(ReasonCheckList.Items);
            //Session.Add("Reason", checkedList);
            Session["HeardChoice"] = HeardBtnList.SelectedItem;

            int count2 = ReasonCheckList.Items.Count;
            List<string> values2 = new List<string>();
            for (int i = 0; i < count2; i++)
            {
                if (ReasonCheckList.Items[i].Selected)
                {
                    values2.Add(ReasonCheckList.Items[i].Text);
                }
            }
            Session["Reason"] = string.Join("<br/>", values2.ToArray()); ;

            Response.Redirect("ThankYou.aspx");
        }
    }
}