﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace COMP229_Assign02
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            pageTitle.Text = Page.Title;
            pageTitle.Style.Add("font-size","40px");
            pageTitle.Style.Add("font-family", "'Amatic SC', cursive;");
            pageTitle.Style.Add("text-align", "center");
            pageTitle.Style.Add("padding-top", "150px");
        }
    }
}