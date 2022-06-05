<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="doctor_home.aspx.cs" Inherits="WebApplication10.doctor_home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Doctor_Home</title>
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
        ul{
            color:white;
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
            <div class="col-3  " >
                <div style="background-color:cornflowerblue;font-size:30px" class="font-italic text-center">
                    Welcome,<span id="text"></span>
                    
                </div>
                <ul class=" list-group rounded ">
                    <li class="   list-group-item list-group-item-primary list-group-item-action">
                       <asp:HyperLink CssClass=" btn btn-outline-primary  btn-block "
   ID="HyperLink4"
runat="server"
Text="HOME"
NavigateUrl="doctor_home.aspx"
></asp:HyperLink>
                    </li>
                    <li class="list-group-item list-group-item-primary list-group-item-action">
 <asp:HyperLink CssClass=" btn btn-outline-primary btn-block  HyperLink1"
ID="HyperLink1"
     
runat="server"
Text="APPOINTMENTS"
NavigateUrl="Doctor_appointment.aspx"
></asp:HyperLink>                    </li>
                    <li class="list-group-item list-group-item-primary list-group-item-action">
 <asp:HyperLink CssClass=" btn btn-outline-primary btn-block  "
ID="HyperLink2"
runat="server"
Text="CONTACT INFORMATION"
NavigateUrl="Doctor_Contact_Information.aspx"
></asp:HyperLink>                    </li>
                    <li class="list-group-item list-group-item-primary list-group-item-action">
 <asp:HyperLink CssClass=" btn btn-outline-primary btn-block "
ID="HyperLink3"
runat="server"
Text="CHANGE PASSWORD"
NavigateUrl="doctor_home_password_change.aspx"
></asp:HyperLink>                    </li>
                </ul>
                 <div class="mt-2">
                    <asp:Button CssClass="btn btn-block  btn-primary" ID="Button2" runat="server" Text="Sign Out" OnClick="Button1_Click" />
                </div>
            </div>

            <div class="col-9 form-inline" style="margin-top:-190px">
                <div class="row">
                    
                    <div class="col-3  form-group ">
                        <label for="fullname" class="font-weight-bolder text-center">Profile Views</label>
                        <asp:TextBox  ReadOnly="true" ID="profileview" class="form-control" runat="server"></asp:TextBox>
                    </div>

                    <div class="col-3">
                         <label for="fullname" class="font-weight-bolder text-center mx-1">My Reviews</label>
                        <asp:TextBox ReadOnly="true" ID="reviews" class="form-control text-center small "  runat="server"></asp:TextBox>
                    </div>

                    <div class="col-4">
                        <label for="fullname" class="font-weight-bolder">Appointments With Patient</label>
                        <asp:TextBox ReadOnly="true" ID="appointment" class="form-control w-100 " runat="server" OnTextChanged="appointment_TextChanged"></asp:TextBox>
                    </div>
                    

                </div>
                   
                        
                        
                
                 
                        
                        
                 
                 
                        
                        
                  
                         
                 
                
               
            </div>
        </div>
    </div>
    </form>
</body>
</html>
