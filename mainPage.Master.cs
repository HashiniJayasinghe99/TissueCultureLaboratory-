using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tissue_Culture_Lab_System
{
    public partial class mainPage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LinkButton10_Click(object sender, EventArgs e)
        {
            Response.Redirect("PrepUmenu1.aspx");

        }

        
    }
}

