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
    
    public partial class Site1 : System.Web.UI.MasterPage
    {
       
        
        protected void Page_Load(object sender, EventArgs e)
        {
           
           
        }
        public string constring = "Data Source=DESKTOP-93APV36;Initial Catalog=dbproject;Integrated Security=True";

        protected void login_Click1(object sender, EventArgs e)
        {
            SqlConnection sqlCon = new SqlConnection(constring);
            sqlCon.Open();
            string p = null;
            if (sqlCon.State == System.Data.ConnectionState.Open)
            {

               
                    if (checkdoctor() == true)
                    {

                    Session["cnic_from_login_page"] = cnic.Text;
                   
                   
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Record Found Successfully! Doctor')", true);
                    Page.ClientScript.RegisterStartupScript(
this.GetType(), "OpenWindow", "window.open('doctor_home.aspx','_newtab');", true);




                }
                    else if(checkpatient()==true)
                {
                    Session["cnic_from_login_page_patient"] = cnic.Text;


                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Record Found Successfully! Patient')", true);

                    Page.ClientScript.RegisterStartupScript(
this.GetType(), "OpenWindow", "window.open('patient_home.aspx','_newtab');", true);

                }

                else if (checklab() == true)
                {
                    Session["cnic_from_login_page_lab"] = cnic.Text;


                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Record Found Successfully! Lab Attendent')", true);

                    Page.ClientScript.RegisterStartupScript(
this.GetType(), "OpenWindow", "window.open('lab_home.aspx','_newtab');", true);

                }

                else
                    {
                        ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Record Not Found!')", true);



                    }

                



               

            }
            sqlCon.Close();
        }
        


        private Boolean checkdoctor()
        {
            Boolean emailavailable = false;
            String mycon = "Data Source=DESKTOP-93APV36;Initial Catalog=dbproject;Integrated Security=True";
            String myquery = "Select * from doctor_basic where cnic= '" + cnic.Text.ToString() + "' and pasword= '"+password.Text+"' ";
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
            String myquery = "Select * from patient_basic where cnic= '" + cnic.Text.ToString() + "' and pasword= '" + password.Text + "' ";
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
            String myquery = "Select * from lab_basic where cnic= '" + cnic.Text.ToString() + "' and pasword= '" + password.Text + "' ";
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

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("homepage.aspx");
        }
       
    }
}