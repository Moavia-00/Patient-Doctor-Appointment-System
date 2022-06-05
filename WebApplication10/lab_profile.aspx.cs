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
    public partial class lab_profile : System.Web.UI.Page
    {
        SqlConnection sqlCon = new SqlConnection("Data Source=DESKTOP-93APV36;Initial Catalog=dbproject;Integrated Security=True");
        public string constring = "Data Source=DESKTOP-93APV36;Initial Catalog=dbproject;Integrated Security=True";
        public string p = "Data Source=DESKTOP-93APV36;Initial Catalog=dbproject;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {
            sqlCon.Open();
            string s = " select fullname,email,mobileno,cnic from lab_basic ";
            SqlDataAdapter adp = new SqlDataAdapter(s, sqlCon);
            DataSet ds = new DataSet();
            adp.Fill(ds);
            view.DataSource = ds;
            view.DataBind();
            sqlCon.Close();
        }

        protected void view_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}