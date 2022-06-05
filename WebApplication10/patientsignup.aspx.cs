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
   
    public partial class WebForm3 : System.Web.UI.Page
    {
        SqlConnection sqlCon = new SqlConnection("Data Source=DESKTOP-93APV36;Initial Catalog=dbproject;Integrated Security=True");
        public string constring = "Data Source=DESKTOP-93APV36;Initial Catalog=dbproject;Integrated Security=True";
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection sqlCon = new SqlConnection(constring);
            sqlCon.Open();
            string p = null;
      
            if (sqlCon.State == System.Data.ConnectionState.Open)
            {
                if (checkemail() == true)
                {
                    
                    string s = "window.onload = function(){ alert('";
                    string m= "This Cnic Is Already regestered!";
                    s += m;
                    s += "')};";
                    
                    ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", s, true);

                }
                else
                {
                    string x = password.Text;
                    string y = confirmpassword.Text;
                    if(x!=y)
                    {
                        string s = "window.onload = function(){ alert('";
                        string m = "Password not matched!";
                        s += m;
                        s += "')};";
                        ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", s, true);
                        return;
                    }

                    p = "insert into patient_basic(fullname,fathername,cnic,city,dateofbirth,gender,mobileno,email,address,age,pasword,confirmpasword,Myreviews,patient_history,appointments_count)values('" + fullname.Text + "','" + fathername.Text + "','" + cnic.Text.ToString() + "','" + city.SelectedItem.Value + "','" + date.Text + "','" + gender.SelectedItem.Value + "','" + mobileno.Text + "','" + email.Text + "','" + address.Text + "','" + age.Text.ToString() + "','" + password.Text + "','" + confirmpassword.Text + "','" + 0 + "','" + 0 + "','" + 0 + "')"; SqlCommand sqlCmd = new SqlCommand(p, sqlCon);
                    sqlCmd.ExecuteNonQuery();
                    string script = "window.onload = function(){ alert('";
                    string message = "Record Inserted Sucessfully!";
                    script += message;
                    script += "')};";
                    ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);
                    fullname.Text = " ";
                    fathername.Text = " ";
                    cnic.Text = " ";
                    city.SelectedItem.Value = " ";
                    date.Text = " ";
                    gender.SelectedItem.Value = " ";
                    mobileno.Text = " ";
                    email.Text = " ";
                    address.Text = " ";
                    age.Text = " ";
                    password.Text = " ";
                    confirmpassword.Text = " ";
                }
               
                }

            sqlCon.Close();

        }

        private Boolean checkemail()
        {
            Boolean emailavailable = false;
            String mycon = "Data Source=DESKTOP-93APV36;Initial Catalog=dbproject;Integrated Security=True";
            String myquery = "Select * from patient_basic where cnic='" + cnic.Text.ToString() + "'";
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