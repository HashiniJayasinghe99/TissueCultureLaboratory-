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
    public partial class PrepUForm1 : System.Web.UI.Page
    {
        private string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void PrepUButton11_Click1(object sender, EventArgs e)
        {
            

            if (CheckIdExists())
            {

                Response.Write("<script>alert('Bottle Set Id Already Exist with this Member ID, try other ID');</script>");
            }
            else
            {
                AddBottleSetDetails();
                Response.Redirect("PrepUmenu1.aspx");
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
                SqlCommand cmd = new SqlCommand("SELECT * from [BottleSetDetails] WHERE [bottle_set_id]='" + PrepUbsid.Text.Trim() + "';", con);
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

        void AddBottleSetDetails()
        {
            //Response.Write("<script>alert('Testing');</script>");
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO [dbo].[BottleSetDetails]([bottle_set_id],[variety_code],[date],[month],[year],[starting_time],[lab_assistant],[autoclave_mno]) VALUES(@bottle_set_id,@variety_code,@date,@month,@year,@starting_time,@lab_assistant,@autoclave_mno)", con);
                SqlCommand cmdd=new SqlCommand("INSERT INTO [dbo].[lab_assistanttttt]([bottle_set_id],[variety_code],[date],[month],[year],[lab_assistant]) VALUES(@bottle_set_id,@variety_code,@date,@month,@year,@lab_assistant)", con);
                cmd.Parameters.AddWithValue("@bottle_set_id",PrepUbsid.Text);
                cmd.Parameters.AddWithValue("@variety_code",PrepUvcode.Text);
                cmd.Parameters.AddWithValue("@date",PrepUdate.Text);
                cmd.Parameters.AddWithValue("@month",PrepUmonth.Text);
                cmd.Parameters.AddWithValue("@year",PrepUyear.Text);
                cmd.Parameters.AddWithValue("@starting_time",PrepUstartTime.Text);
                cmd.Parameters.AddWithValue("@lab_assistant",PrepULabAssi.Text);
                cmd.Parameters.AddWithValue("@autoclave_mno",PrepUautoMNo.Text);
                
                cmdd.Parameters.AddWithValue("@bottle_set_id", PrepUbsid.Text);
                cmdd.Parameters.AddWithValue("@variety_code", PrepUvcode.Text);
                cmdd.Parameters.AddWithValue("@date", PrepUdate.Text);
                cmdd.Parameters.AddWithValue("@month", PrepUmonth.Text);
                cmdd.Parameters.AddWithValue("@year", PrepUyear.Text);
                cmdd.Parameters.AddWithValue("@lab_assistant", PrepULabAssi.Text);

                cmdd.ExecuteNonQuery();
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Store data Successfully.Next store data after the autoclave machine cycle');</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }




    }
}