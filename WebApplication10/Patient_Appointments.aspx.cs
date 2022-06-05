using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Text.RegularExpressions;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data.Sql;
using System.Data.SqlTypes;

namespace WebApplication10
{
    public partial class Doctor_Appointments : System.Web.UI.Page
    {
        SqlConnection sqlCon = new SqlConnection("Data Source=DESKTOP-93APV36;Initial Catalog=dbproject;Integrated Security=True");
        public string constring = "Data Source=DESKTOP-93APV36;Initial Catalog=dbproject;Integrated Security=True";
        public string p = "Data Source=DESKTOP-93APV36;Initial Catalog=dbproject;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {
            sqlCon.Open();
            string s = " select fullname,email,mobileno,cnic from doctor_basic where doctor_basic.cnic in (select doctor_id from all_appointment where all_appointment.patient_cnic='" + Session["cnic_from_login_page_patient"] + "')";
            SqlDataAdapter adp = new SqlDataAdapter(s, sqlCon);
            DataSet ds = new DataSet();
            adp.Fill(ds);
            view.DataSource = ds;
            view.DataBind();
            sqlCon.Close();
        }
        protected void popup(object sender, EventArgs e)
        {
            sqlCon.Open();

            int value = Convert.ToInt32(popup_text.Text);
            double percent = Convert.ToDouble(popup_text.Text);
            popup_text.Text = ((value * percent) / 10 + value).ToString();
            SqlCommand cmd3 = new SqlCommand("update doctor_basic set MyReviews=MyReviews+'" + popup_text.Text + "' where cnic='" + text.Text + "'", sqlCon);
            cmd3.ExecuteNonQuery();
        }
        protected void delete_Click(object sender, EventArgs e)
        {
            
            sqlCon.Open();
            SqlCommand cmd = new SqlCommand("delete from all_appointment where doctor_id='" + text.Text + "'", sqlCon);
            SqlCommand cmd2 = new SqlCommand("update patient_basic set appointments_count=appointments_count-1 where cnic='" + Session["cnic_from_login_page_patient"] + "'", sqlCon);
            SqlCommand cmd4 = new SqlCommand("update doctor_basic set appointments_count=appointments_count-1 where cnic='" + text.Text + "'", sqlCon);

            cmd.ExecuteNonQuery();
            cmd2.ExecuteNonQuery();
            cmd4.ExecuteNonQuery();
            text.Text = " ";
        }

    }
}