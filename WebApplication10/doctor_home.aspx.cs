using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Text.RegularExpressions;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlTypes;
using System.Configuration;

namespace WebApplication10
{
    public partial class doctor_home : System.Web.UI.Page
    {
        SqlConnection sqlCon = new SqlConnection("Data Source=DESKTOP-93APV36;Initial Catalog=dbproject;Integrated Security=True");
        public string constring = "Data Source=DESKTOP-93APV36;Initial Catalog=dbproject;Integrated Security=True";
        public string p = "Data Source=DESKTOP-93APV36;Initial Catalog=dbproject;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                //string constr = ConfigurationManager.ConnectionStrings[constr].ConnectionString;
                using (SqlConnection con = sqlCon)
                {
                    using (SqlCommand cmd = new SqlCommand("select fullname,Profileviews,MyReviews,appointments_count from doctor_basic where cnic = '" + Session["cnic_from_login_page"] + "' "))
                    {
                        cmd.CommandType = CommandType.Text;
                        cmd.Connection = con;
                        //con.Open();
                        using (SqlDataReader sdr = cmd.ExecuteReader())
                        {
                            sdr.Read();
                            
                            profileview.Text = sdr["Profileviews"].ToString();




                            reviews.Text = sdr["MyReviews"].ToString() ;
                           appointment.Text = sdr["appointments_count"].ToString();
                            Session["apoitment_counts"] = appointment.Text;
                            Session["full"] = sdr["fullname"].ToString();
                            Response.Write(Session["full"]);
                            

                        }
                        con.Close();
                    }
                }
            }
        }

        protected void view_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void appointment_TextChanged(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("login_page.aspx");
        }
    }
}