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

    public partial class homepage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        SqlConnection sqlCon = new SqlConnection("Data Source=DESKTOP-93APV36;Initial Catalog=dbproject;Integrated Security=True");
        public string constring = "Data Source=DESKTOP-93APV36;Initial Catalog=dbproject;Integrated Security=True";
        public string p = "Data Source=DESKTOP-93APV36;Initial Catalog=dbproject;Integrated Security=True";



        private Boolean checkdoctor()
        {
            Boolean emailavailable = false;
            String mycon = "Data Source=DESKTOP-93APV36;Initial Catalog=dbproject;Integrated Security=True";
            String myquery = " Select * from doctor_basic where cnic= '" + doc_cnic.Text.ToString() + "' ";
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

        private Boolean checkpatient()
        {
            Boolean emailavailable = false;
            String mycon = "Data Source=DESKTOP-93APV36;Initial Catalog=dbproject;Integrated Security=True";
            String myquery = "Select * from patient_basic where cnic= '" + labpatient_cnic.Text.ToString() + "'  ";
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


        private Boolean checkpatientdoctor()
        {
            Boolean emailavailable = false;
            String mycon = "Data Source=DESKTOP-93APV36;Initial Catalog=dbproject;Integrated Security=True";
            String myquery = "Select * from patient_basic where cnic= '" + pat_cnic.Text.ToString() + "'  ";
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

        private Boolean checklab()
        {
            Boolean emailavailable = false;
            String mycon = "Data Source=DESKTOP-93APV36;Initial Catalog=dbproject;Integrated Security=True";
            String myquery = "Select * from lab_basic where cnic= '" + lab_cnic.Text.ToString() + "'  ";
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


        protected void Button1_Click(object sender, EventArgs e)
        {
            ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Record Found Successfully! Doctor')", true);


            SqlConnection sqlCon = new SqlConnection(constring);
            sqlCon.Open();
            string p = null;
            if (sqlCon.State == System.Data.ConnectionState.Open)
            {


                if (checkdoctor() == true && checkpatientdoctor() == true)
                {

                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Record Found Successfully! Doctor')", true);


                    p = "insert into all_appointment(doctor_id,patient_cnic)values('" + doc_cnic.Text.ToString() + "','" + pat_cnic.Text.ToString() + "')";
                    SqlCommand sqlCmd = new SqlCommand(p, sqlCon);
                    sqlCmd.ExecuteNonQuery();

                    SqlCommand cmd3 = new SqlCommand("update doctor_basic set appointments_count = appointments_count +1 where cnic= '" + doc_cnic.Text.ToString() + "'", sqlCon);
                    cmd3.ExecuteNonQuery();

                    SqlCommand cmd4 = new SqlCommand("update patient_basic set appointments_count = appointments_count +1  where cnic= '" + pat_cnic.Text.ToString() + "'", sqlCon);
                    cmd4.ExecuteNonQuery();
                    doc_cnic.Text = " ";
                    pat_cnic.Text = " ";
                    return;


                }
                else if (checkdoctor() == false)
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('You Enter Wrong Cnic Of Doctor')", true);
                }

                else if (checkpatient() == false)
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('You Enter Your Cnic Wrong!')", true);
                }











            }
            sqlCon.Close();

        }

        protected void Button2_Click(object sender, EventArgs e)
        {


            SqlConnection sqlCon = new SqlConnection(constring);
            sqlCon.Open();
            string p = null;
            if (sqlCon.State == System.Data.ConnectionState.Open)
            {


                if (checklab() == true && checkpatient() == true)
                {

                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Record Found Successfully! lab')", true);


                    p = "insert into all_appointment2(lab_id,patient_cnic)values('" + lab_cnic.Text.ToString() + "','" + labpatient_cnic.Text.ToString() + "')";
                    SqlCommand sqlCmd = new SqlCommand(p, sqlCon);
                    sqlCmd.ExecuteNonQuery();

                    SqlCommand cmd3 = new SqlCommand("update lab_basic set appointment_count=appointment_count +1 where cnic= '" + lab_cnic.Text.ToString() + "'", sqlCon);
                    cmd3.ExecuteNonQuery();

                    SqlCommand cmd4 = new SqlCommand("update patient_basic set appointments_count=appointments_count +1  where cnic= '" + labpatient_cnic.Text.ToString() + "'", sqlCon);
                    cmd4.ExecuteNonQuery();
                    lab_cnic.Text = " ";
                    labpatient_cnic.Text = " ";
                    return;


                }
                else if (checklab() == false)
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('You Enter Wrong Cnic Of Lab Specialist!')", true);
                }

                else if (checkpatient() == false)
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('You Enter Your Cnic Wrong!')", true);
                }




            }

            sqlCon.Close();

        }
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("login_page.aspx");
        }
        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "CallMyFunction", "sendemail()", true);
        }

    }
    }