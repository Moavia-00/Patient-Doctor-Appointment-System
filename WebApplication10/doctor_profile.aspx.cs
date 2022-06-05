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

namespace WebApplication10
{
    public partial class doctor_profile : System.Web.UI.Page
    {
        SqlConnection sqlCon = new SqlConnection("Data Source=DESKTOP-93APV36;Initial Catalog=dbproject;Integrated Security=True");
        public string constring = "Data Source=DESKTOP-93APV36;Initial Catalog=dbproject;Integrated Security=True";
        public string p = "Data Source=DESKTOP-93APV36;Initial Catalog=dbproject;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {
            sqlCon.Open();
            string s = " select fullname,email,mobileno,cnic from doctor_basic ";
            SqlDataAdapter adp = new SqlDataAdapter(s, sqlCon);
            DataSet ds = new DataSet();
            adp.Fill(ds);
            view.DataSource = ds;
            view.DataBind();
            sqlCon.Close();
        }



        protected void city_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void view_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void citybutton_Click(object sender, EventArgs e)
        {
            sqlCon.Open();
            string s = " select fullname,email,mobileno,cnic from doctor_basic where city ='" + city.SelectedItem.Value + "' ";
            SqlDataAdapter adp = new SqlDataAdapter(s, sqlCon);
            DataSet ds = new DataSet();
            adp.Fill(ds);
            view.DataSource = ds;
            view.DataBind();
            sqlCon.Close();
        }

        protected void categorybutton_Click(object sender, EventArgs e)
        {
            sqlCon.Open();
            string s = " select fullname,email,mobileno,cnic from doctor_basic where doctor_category ='" + cateogory.SelectedItem.Value + "' ";
            SqlDataAdapter adp = new SqlDataAdapter(s, sqlCon);
            DataSet ds = new DataSet();
            adp.Fill(ds);
            view.DataSource = ds;
            view.DataBind();
            sqlCon.Close();
        }
    }
}