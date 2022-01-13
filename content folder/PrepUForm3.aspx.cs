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
    

    public partial class PrepUForm3 : System.Web.UI.Page
    {
        private string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        //view
        protected void PrepUview_Click(object sender, EventArgs e)
        {
            if (CheckIdExists())
            {
                getBottleSetByID();



            }
            else
            {
                Response.Write("<script>alert('Invalid Bottle Set Id, try other ID');</script>");
            }
        }
        //update
        protected void PrepUpdate_Click(object sender, EventArgs e)
        {   
            

            UpdateBottleSetDetails();
        }
        //delete b
        protected void PrepUdel_Click(object sender, EventArgs e)
        {
            deletebottlesetByID();
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

        //view
        void getBottleSetByID()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();

                }
                SqlCommand cmd = new SqlCommand("Select * from [dbo].[BottleSetDetails]WHERE [bottle_set_id]='" + PrepUbsid.Text.Trim() + "';", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        PrepUvcode.Text = dr.GetValue(1).ToString();
                        PrepUdate.Text = dr.GetValue(2).ToString();
                        prepMonth.Text = dr.GetValue(3).ToString();
                        prepYear.Text = dr.GetValue(4).ToString();
                        PrepUstartTime.Text = dr.GetValue(5).ToString();
                        PrepUendTime.Text = dr.GetValue(6).ToString();
                        PrepULabAssi.Text = dr.GetValue(8).ToString();
                        PrepUY.Text = dr.GetValue(9).ToString();
                        duration.Text = dr.GetValue(10).ToString();
                        success.Text = dr.GetValue(11).ToString();
                        Automno.Text = dr.GetValue(7).ToString();
                    }

                }
                else
                {
                    Response.Write("<script>alert('Invalid credentials');</script>");
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }


        //update
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
                    SqlCommand cmd = new SqlCommand("UPDATE [dbo].[BottleSetDetails] SET [ending_time]='" + PrepUendTime.Text.Trim() + "',[power_cut]='" + PrepUY.Text.Trim() + "',[duration]='" + duration.Text.Trim() + "',[status]='" + success.Text.Trim() + "' WHERE [bottle_set_id]='" + PrepUbsid.Text.Trim() + "' AND [variety_code]='" + PrepUvcode.Text.Trim() + "' ;", con);

                    cmd.ExecuteNonQuery();
                    con.Close();

                    Response.Write("<script>alert(' Updated Successfully');</script>");
                    
                }


                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Invalid Member ID');</script>");
            }
        }
            
            //delete
            void deletebottlesetByID()
            {
                if (CheckIdExists())
                {
                    try
                    {
                        SqlConnection con = new SqlConnection(strcon);
                        if (con.State == ConnectionState.Closed)
                        {
                            con.Open();
                        }

                        SqlCommand cmd = new SqlCommand("DELETE from [dbo].[BottleSetDetails] WHERE [bottle_set_id]='" + PrepUbsid.Text.Trim() + "'", con);

                        cmd.ExecuteNonQuery();
                        con.Close();
                        Response.Write("<script>alert('Deleted Successfully');</script>");

                    }
                     

                    catch (Exception ex)
                    {
                        Response.Write("<script>alert('" + ex.Message + "');</script>");
                    }
                   

                }
                else
                {
                    Response.Write("<script>alert('Invalid Member ID');</script>");
                }
            }





        


    }

}

