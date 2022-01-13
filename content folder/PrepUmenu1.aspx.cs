using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tissue_Culture_Lab_System.content_folder
{
    public partial class PrepUmenu1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void PrepButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("PrepInstructions.aspx");
        }
        protected void PrepButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("PrepUmenu2.aspx");
        }
        protected void PrepButton3_Click(object sender, EventArgs e)
        {
            Response.Redirect("PrepUForm3.aspx");
        }
        protected void PrepButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("PreparationReport.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("labAssistant.aspx");
        }
    }
}