using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tissue_Culture_Lab_System.content_folder
{
    public partial class PrepUFrom2 : System.Web.UI.Page
    {
        private string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        //update
        protected void submit2_Click(object sender, EventArgs e)
        {
            if (CheckIdExists())
            {
                UpdateBottleSetDetails();


            }
            else
            {
                Response.Write("<script>alert('Invalid  ID, try other ID');</script>");
            }

        }

        //bottele set id define method
        bool CheckIdExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from [BottleSetDetails] WHERE [bottle_set_id]='" + PrepUbotId.Text.Trim() + "' AND [variety_code]='" +PrepUvcode.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                return false;
            }
        }

        // view
        void UpdateBottleSetDetails()
        {
            if (CheckIdExists())
            {
                //Response.Write("<script>alert('Testing');</script>");
                 try
                {
                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }
                    SqlCommand cmd = new SqlCommand("UPDATE [dbo].[BottleSetDetails] SET [ending_time]='"+PrepUendTime.Text.Trim()+"',[power_cut]='"+PrepUY.Text.Trim()+"',[duration]='"+Prepudu.Text.Trim()+"',[status]='"+PrepUS.Text.Trim() +"' WHERE [bottle_set_id]='" + PrepUbotId.Text.Trim() + "' AND [variety_code]='" + PrepUvcode.Text.Trim()+ "' ;", con);
                    SqlCommand cmdd = new SqlCommand("UPDATE [dbo].[ab_assistanttttt] SET [status]='" + PrepUS.Text.Trim() + "' WHERE [bottle_set_id]='" + PrepUbotId.Text.Trim() + "' AND [variety_code]='" + PrepUvcode.Text.Trim() + "' ;", con);
                    cmd.ExecuteNonQuery();
                    cmdd.ExecuteNonQuery();
                    con.Close();
                
                    Response.Write("<script>alert(' Updated Successfully');</script>");
                    Response.Redirect("PrepUmenu1.aspx");


                    }
                    catch (Exception ex)
                    {
                       Response.Write("<script>alert('" + ex.Message + "');</script>");
                    }
       
                    }    
            
            else
            {
                Response.Write("<script>alert('Invalid  ID');</script>");
            }

        }

    }
}