<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="patientsignup.aspx.cs" Inherits="WebApplication10.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

     
    <title>Login page</title>
        <script src="https://kit.fontawesome.com/yourcode.js"></script>
     <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link rel="stylesheet" href="bootstrap/bootstrap.css"/>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
    <link rel="stylesheet" href="style.css"/>
    <link rel="stylesheet" type="text/css" href="css/util.css"/>
    <link rel="stylesheet" type="text/css" href="css/main.css"/>
        <script src="https://kit.fontawesome.com/yourcode.js"></script>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
                <style>
        .preloader {
    background-image:url('bootstrap/patientcover.gif');
    background-repeat:no-repeat;
    background-size:2650px 1020px;
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
        <div class="container" style="opacity:0.8">
            <div class="row">
                <div class="col">
                       <div id="exampleModal ">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h3 class="modal-title  font-weight-bolder" id="exampleModalLabel">Patient Signup Form</h3>

                </div>

                <div class="container">
                    

                    <div class="row mt-md-4">
                        <div class="col-md-4 ">
                            <div class="form-group"><label for="names">Full Name <span style="color: red;">
                *</span></label><asp:TextBox ID="fullname"  class="form-control form-control-solid" runat="server"></asp:TextBox>
                                <div class="invalid-feedback" style="display: none;"><span>Required Field</span></div>
                            </div>
                                
                               

                        </div>
                        <div class="col-md-4">
                            <div class="form-group"><label for="father-nme"> Father's Name <span style="color: red;">
                *</span></label> <asp:TextBox ID="fathername"  class="form-control form-control-solid" runat="server"></asp:TextBox>
                                <div class="invalid-feedback" style="display: none;"><span>Required Field</span></div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group"><label for="cnic"> Cnic <span style="color: red;">
                *</span></label> <asp:TextBox ID="cnic"   class="form-control form-control-solid" runat="server"></asp:TextBox>
                                <div class="invalid-feedback" style="display: none;"><span>Required Field</span></div>
                            </div>
                        </div>


                    </div>
                    <div class="row mt-md-1">
                        <div class="col-md-4">
                           
                            <div class="form-group"><label for="city">City <span style="color: red;">
                *</span></label>  <asp:DropDownList ID="city" CssClass="form-control" runat="server" class="select2-hidden-accessible">
                                    <asp:ListItem Text="Lahore" Value="1"></asp:ListItem>
                                    <asp:ListItem Text="Faislabad" Value="2"></asp:ListItem>
                                    <asp:ListItem Text="Jhang" Value="3"></asp:ListItem>
                                    
                    

                                   


            </asp:DropDownList><span class="select2 select2-container select2-container--default" dir="ltr" data-select2-id="14" style="width: 100%;"><span class="selection"><span
                  class="select2-selection select2-selection--single" role="combobox" aria-haspopup="true"
                  aria-expanded="false" tabindex="0" aria-disabled="false"
                  aria-labelledby="select2-354w-container"><span class="select2-selection__rendered"
                    id="select2-354w-container" role="textbox" aria-readonly="true"></span><span class="select2-selection__arrow" role="presentation"><b
                      role="presentation"></b></span></span>
                                </span><span class="dropdown-wrapper" aria-hidden="true"></span></span>
                                <div class="invalid-feedback" style="display: none;"><span>Required Field</span></div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            
                            <div class="form-group"><label for="date">Date Of Birth <span style="color: red;">
                *</span></label><asp:TextBox ID="date" TextMode="Date"  class="form-control form-control-solid" runat="server"></asp:TextBox>
                                <div class="invalid-feedback" style="display: none;"><span>Required Field</span></div>
                            </div>
                                
                        </div>
                        <div class="col-md-4">
                            <div class="form-group"><label>Gender<span style="color: red;">
                *</span></label> <asp:DropDownList ID="gender" CssClass="form-control" runat="server" class="select2-hidden-accessible">
                                    <asp:ListItem Text="Male" Value="1"></asp:ListItem>
                                    <asp:ListItem Text="Female" Value="2"></asp:ListItem>
                                    <asp:ListItem Text="Other" Value="3"></asp:ListItem>
                                    
                    

                                   


            </asp:DropDownList><span class="select2 select2-container select2-container--default" dir="ltr" data-select2-id="276" style="width: 100%;"><span class="selection"><span
                  class="select2-selection select2-selection--single" role="combobox" aria-haspopup="true"
                  aria-expanded="false" tabindex="0" aria-disabled="false"
                  aria-labelledby="select2-dq7q-container"><span class="select2-selection__rendered"
                    id="select2-dq7q-container" role="textbox" aria-readonly="true"></span><span class="select2-selection__arrow" role="presentation"><b
                      role="presentation"></b></span></span>
                                </span><span class="dropdown-wrapper" aria-hidden="true"></span></span>
                                <div class="invalid-feedback" style="display: none;"><span>Required Field</span></div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <h3 class="heading">Contact Info</h3>
                            <div class="mt-md-2 text-danger"> Please enter your correct phone number and email address as this will be used to communicate your medical history to doctor and lab results.</div>
                        </div>
                    </div>
                    <div class="row mt-md-3">
                        <div class="col-md-4">
                            <div class="form-group"><label for="mobileno">Mobile No. <span style="color: red;">
                *</span></label>
                                <asp:TextBox ID="mobileno" TextMode="Phone" class="form-control form-control-solid" runat="server"></asp:TextBox>
                                <div class="invalid-feedback" style="display: none;">
                                    <!---->
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group"><label for="email">Email <span style="color: red;">
                *</span></label><asp:TextBox ID="email" TextMode="Email"  class="form-control form-control-solid" runat="server"></asp:TextBox>
                                <div class="invalid-feedback" style="display: none;"><span>Required Field</span>
                                    <!---->
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group"><label for="postal-address">Address <span style="color: red;">
                    *</span></label> <asp:TextBox ID="address" class="form-control form-control-solid" runat="server"></asp:TextBox></div>
                        </div>
                    </div>





                    <div class="row mt-md-3">
                        <div class="col-md-4">
                            <div class="form-group"><label for="age">Age <span style="color: red;">
          *</span></label> 
                                <asp:TextBox ID="age" TextMode="Number" class="form-control form-control-solid" runat="server"></asp:TextBox>
                                <div class="invalid-feedback " style="display: none;">
                                    <!---->
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">

                            


                            <div class="form-group"><label for="password">Password <span style="color: red;">
          *</span></label> <asp:TextBox ID="password" TextMode="Password"  class="form-control form-control-solid" runat="server"></asp:TextBox>
                                <div class="invalid-feedback" style="display: none;"><span>Required Field</span>
                                    <!---->
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group"><label for="confirmpassword">Confirm Password <span style="color: red;">
              *</span></label> <asp:TextBox ID="confirmpassword" TextMode="Password"  class="form-control form-control-solid" runat="server" ></asp:TextBox></div>
                        </div>
                    </div>
                    <div class="modal-footer mt-md-5">
                      
                          <asp:HyperLink CssClass=" btn btn-secondary text-white"
ID="HyperLink2"
runat="server"
Text="Back"
NavigateUrl="login_page.aspx"
></asp:HyperLink>
                       
                              <asp:Button ID="Button1" class="btn btn-primary text-white " runat="server" Text="Submit"   OnClick="Button1_Click"  />
                    </div>
                </div>
                </div>
            </div>
        </div>      





</form>

     <script>
              function password_check()
              {
                var x= document.getElementById('password').getAttribute('value');
                var y= document.getElementById('confirmpassword').getAttribute('value');
                if(x!=y)
                {
                    swal("Password Error", ", Your password not matched !", "error");
                    return 1;
                }
              }
     </script>

          
</body>
</html>
