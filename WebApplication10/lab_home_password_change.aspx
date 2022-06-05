<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="lab_home_password_change.aspx.cs" Inherits="WebApplication10.lab_home_password_change" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>Lab Attendent Change Password</title>
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
</head>
<body>
    <form id="form1" runat="server" class="preloader">
        <div class="container" style="margin-top:100px;opacity:0.85">
            <div class="row">
                <div class="col">
                    <div id="exampleModal ">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h3 lass="modal-title  font-weight-bolder"  font-weight-bolder" id="exampleModalLabel" style="color:#1d86de;">Password Reset Form</h3>

                </div>

                <div class=" container ">


                    <div class="ml-auto row mt-md-4">
                        <div class="col-md-4 ">
                            <div class="form-group"><label for="password">New Password <span style="color: red;">
                *</span></label> <asp:TextBox ID="password" TextMode="Password"  class="form-control form-control-solid" runat="server"></asp:TextBox>
                                <div class="invalid-feedback" style="display: none;"><span>Required Field</span></div>
                            </div>


                        </div>
                        <div class="col-md-4">
                            <div class="form-group"><label for="confirmpassword"> Confirm Password <span style="color: red;">
                *</span></label> <asp:TextBox ID="confirmpassword" TextMode="Password"  class="form-control form-control-solid" runat="server" ></asp:TextBox>
                                <div class="invalid-feedback" style="display: none;"><span>Required Field</span></div>
                            </div>
                       </div>

                       
                    <div class="modal-footer mt-md-5">
                       <asp:HyperLink CssClass=" btn btn-secondary text-white"
ID="HyperLink2"
runat="server"
Text="Back"
NavigateUrl="lab_home.aspx"
></asp:HyperLink>

                        <asp:Button ID="Button1" class="btn btn-primary text-white " runat="server" Text="Submit"   OnClick="Button1_Click"  />
                    </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
