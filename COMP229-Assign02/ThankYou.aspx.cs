using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace COMP229_Assign02
{
    public partial class ThankYou : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblEmail.Text     = Session["Email"].ToString();
            lblBirthday.Text  = Session["Birthday"].ToString();
            lblOrder.Text  = Session["Order"].ToString();
            lblReceive.Text = Session["Receive"].ToString();
            lblRecommend.Text = Session["Recommend"].ToString();
            lblHeard.Text    = Session["HeardChoice"].ToString();
            lblReason.Text     = Session["Reason"].ToString();
            lblNote.Text =      Session["Note"].ToString();





        }
    }
}