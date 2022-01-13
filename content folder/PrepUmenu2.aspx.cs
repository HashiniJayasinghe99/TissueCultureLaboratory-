using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tissue_Culture_Lab_System.content_folder
{
    public partial class PrepUmenu2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void PrepButton5_Click(object sender, EventArgs e)
        {
            Response.Redirect("PrepUForm1.aspx");
        }

        protected void PrepButton6_Click(object sender, EventArgs e)
        {
            Response.Redirect("PrepUForm2.aspx");
        }
    }
}