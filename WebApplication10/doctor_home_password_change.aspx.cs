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
    public partial class doctor_home_password_change : System.Web.UI.Page
    {
        SqlConnection sqlCon = new SqlConnection("Data Source=DESKTOP-93APV36;Initial Catalog=dbproject;Integrated Security=True");
        public string constring = "Data Source=DESKTOP-93APV36;Initial Catalog=dbproject;Integrated Security=True";
        public string p = "Data Source=DESKTOP-93APV36;Initial Catalog=dbproject;Integrated Security=True";
        public string UserName { get { return Session["cnic_from_login_page"].ToString(); } }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                //string constr = ConfigurationManager.ConnectionStrings[constr].ConnectionString;
                using (SqlConnection con = sqlCon)
                {
                    using (SqlCommand cmd = new SqlCommand("select pasword,confirmpasword from doctor_basic where cnic = '" + Session["cnic_from_login_page"] + "' "))
                    {
                        cmd.CommandType = CommandType.Text;
                        cmd.Connection = con;
                        con.Open();
                        using (SqlDataReader sdr = cmd.ExecuteReader())
                        {
                            sdr.Read();

                            password.Text = sdr["pasword"].ToString();
                            confirmpassword.Text = sdr["confirmpasword"].ToString();
                            
                        }
                        con.Close();
                    }
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection sqlCon = new SqlConnection(p);
            sqlCon.Open();
            string s = "update doctor_basic set pasword='" + password.Text + "',confirmpasword='" + confirmpassword.Text + "' from doctor_basic where cnic = '" + Session["cnic_from_login_page"] + "' ";
            SqlCommand sqlCmd = new SqlCommand(s, sqlCon);
            sqlCmd.ExecuteNonQuery();
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Record Successfully! Updated')", true);

        }
    }
}