using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Text.RegularExpressions;
using System.Web.UI;
using System.Web.UI.WebControls;
//using System.Data.SqlClient;
using System.Data.Sql;
using System.Data.SqlTypes;

namespace WebApplication10
{
    public partial class lab_password_change : System.Web.UI.Page
    {
        SqlConnection sqlCon = new SqlConnection("Data Source=DESKTOP-93APV36;Initial Catalog=dbproject;Integrated Security=True");
        public string constring = "Data Source=DESKTOP-93APV36;Initial Catalog=dbproject;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection sqlCon = new SqlConnection(constring);
            sqlCon.Open();
            string p = null;
            if (sqlCon.State == System.Data.ConnectionState.Open)
            {
                if (checkemail() == true)
                {
                    string x = password.Text;
                    string y = confirmpassword.Text;
                    if (x != y)
                    {
                        string s = "window.onload = function(){ alert('";
                        string m = "Password not matched!";
                        s += m;
                        s += "')};";
                        ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", s, true);
                        return;
                    }
                    p = "update lab_basic set pasword = '" + password.Text + "',confirmpasword = '" + confirmpassword.Text + "'where cnic = '" + cnic.Text + "'";
                    SqlCommand sqlCmd = new SqlCommand(p, sqlCon);
                    sqlCmd.ExecuteNonQuery();
                    string script = "window.onload = function(){ alert('";
                    string message = "Password Sucessfully Changed!";
                    script += message;
                    script += "')};";
                    ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);



                }
                else
                {
                    string s = "window.onload = function(){ alert('";
                    string m = "This Cnic Is Not regestered!";
                    s += m;
                    s += "')};";

                    ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", s, true);


                }

            }
            sqlCon.Close();
        }
            private Boolean checkemail()
            {
                Boolean emailavailable = false;
                String mycon = "Data Source=DESKTOP-93APV36;Initial Catalog=dbproject;Integrated Security=True";
                String myquery = "Select * from lab_basic where cnic='" + cnic.Text.ToString() + "'";
                SqlConnection con = new SqlConnection(mycon);
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = myquery;
                cmd.Connection = con;
                SqlDataAdapter da = new SqlDataAdapter();
                da.SelectCommand = cmd;
                DataSet ds = new DataSet();
                da.Fill(ds);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    emailavailable = true;

                }
                con.Close();

                return emailavailable;
            }
        }
    }
