<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="patient_home.aspx.cs" Inherits="WebApplication10.WebForm8" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Patient_Home</title>
    <link href="bootstrap/bootstrap.css" rel="stylesheet" />
    <link href="css/style.css" rel="stylesheet"/>
    <style>
        .preloader {
    background-image:url('images/slider-bg.jpg');
    background-repeat:no-repeat;
    background-size:100%;
    width:auto;
    height:auto;
    top: 0;
    right: 0;
    bottom: 0;
    left: 0;
    position:fixed;
    overflow-y:scroll;
    
}
    </style>
    <script>
        function textchange() {
            var name = '<%= Session["full"] %>';


           document.getElementById('text').innerHTML = name;
       }
    </script>
</head>
<body onload="textchange()">
    <form id="form1" runat="server" class="preloader">
       <div class="container">
        <div class="row">
            <div class="col-3  ">
                <div style="background-color:cornflowerblue;font-size:30px" class="font-italic text-center">
                    Welcome,<span id="text"></span>
                    
                </div>
                <ul class=" list-group">
                    <li class="   list-group-item list-group-item-primary list-group-item-action  ">
                       <asp:HyperLink CssClass=" btn btn-block btn-outline-primary text-primary"
ID="HyperLink4"
runat="server"
Text="HOME"
NavigateUrl="patient_home.aspx"
></asp:HyperLink>
                    </li>
                    <li class="list-group-item list-group-item-primary list-group-item-action">
 <asp:HyperLink CssClass=" btn btn-outline-primary text-primary btn-block"
ID="HyperLink1"
runat="server"
Text="APPOINTMENTS WITH DOCTOR"
NavigateUrl="Patient_Appointments.aspx"
></asp:HyperLink>                    </li>

                    <li class="list-group-item list-group-item-primary list-group-item-action">
 <asp:HyperLink CssClass=" btn btn-outline-primary text-primary btn-block"
ID="HyperLink5"
runat="server"
Text="APPOINTMENTS WITH LAB ATTENDENT"
NavigateUrl="patientlab_appointment.aspx"
></asp:HyperLink>                    </li>
                    <li class="list-group-item list-group-item-primary list-group-item-action">
 <asp:HyperLink CssClass=" btn btn-outline-primary text-primary btn-block"
ID="HyperLink2"
runat="server"
Text="CONTACT INFORMATION"
NavigateUrl="patient_Contact_Information.aspx"
></asp:HyperLink>                    </li>
                    <li class="list-group-item list-group-item-primary list-group-item-action">
 <asp:HyperLink CssClass=" btn btn-outline-primary text-primary btn-block"
ID="HyperLink3"
runat="server"
Text="CHANGE PASSWORD"
NavigateUrl="patient_home_password_change.aspx"
></asp:HyperLink>                    </li>
                </ul>
                 <div class="mt-2">
                    <asp:Button CssClass="btn btn-block  btn-primary" ID="Button3" runat="server" Text="Sign Out" OnClick="Button1_Click" />
                </div>
                <div class="mt-2">
                    <asp:Button CssClass="btn btn-block  btn-warning" ID="Button1" runat="server" Text="For Book Appointments" OnClick="Button1_Click" />
                </div>
                  
            </div>

            <div class="col-6 form-inline" style="margin-top:-330px">
                
                <div class="row">
                    

                    <div class="col-5">
                         <label for="fullname" class="font-weight-bolder text-center">Reviews On MyProfile</label>
                        <asp:TextBox ReadOnly="true" ID="reviews"  class="form-control " runat="server"></asp:TextBox>
                    </div>

                    <div class="col-7">
                        <label for="fullname" class="font-weight-bolder text-center">Pending Appointments With Doctor</label>
                        <asp:TextBox ReadOnly="true" ID="appointment" class="form-control w-100 " runat="server"></asp:TextBox>
                    </div>

                </div>
                   
     
            </div>
        </div>
    </div>
    </form>
</body>
</html>
