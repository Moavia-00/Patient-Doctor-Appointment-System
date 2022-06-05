<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="homepage.aspx.cs" Inherits="WebApplication10.homepage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
   <script
  src="https://code.jquery.com/jquery-2.2.4.min.js"
  integrity="sha256-BbhdlvQf/xTY9gja0Dq3HiwQF8LaCRTXxZKRutelT44="
  crossorigin="anonymous"></script>
<script src="https://smtpjs.com/v3/smtp.js"></script>
 
<script>  

    function sendemail() {
        alert("hello");
        var name = $('#Name').val();
        var email = $('#Email').val();
        var subject = $('#Subject').val();
        var message = $('#Message').val();

        var Body = 'Name: ' + name + '<br>Email: ' + email + '<br>Subject: ' + subject + '<br>Message: ' + message;

        Email.send({
            SecureToken: "fbf31702-bb7f-4a4e-9c1c-4ccf17ee777f",
            To: 'lifecarelaboratorysystem@gmail.com',
            From: email,
            Subject: subject,
            Body: Body
        }).then(
            message => {
                if (message == 'OK') {
                    alert('Your mail has been send. Thank you for connecting.');
                }
                else {
                    console.error(message);
                    alert('There is error at sending message. ')

                }

            }
        );



    }
    function sendemail2() {
        alert("hello2");
        var name = $('#Name').val();
        var email = $('#Email').val();
        var subject = $('#Subject').val();
        var message = "Thanks for contacting us!Sortly We will be contact to you";

        var Body = 'Name: ' + name + '<br>Email: ' + email + '<br>Subject: ' + subject + '<br>Message: ' + message;

        Email.send({
            SecureToken: "fbf31702-bb7f-4a4e-9c1c-4ccf17ee777f",
            To: email,
            From: "lifecarelaboratorysystem@gmail.com",
            Subject: subject,
            Body: Body
        }).then(
            message => {
               

            }
        );





    }


</script>


   <meta charset="utf-8"/>
   <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
  
   <meta name="viewport" content="width=device-width, initial-scale=1"/>
   <meta name="viewport" content="initial-scale=1, maximum-scale=1"/>
   <!-- Site Metas -->
   <title>Life Care Laboratory Information System</title>
   <meta name="keywords" content=""/>
   <meta name="description" content=""/>
   <meta name="author" content=""/>
   <!-- Site Icons -->
   <script src='https://kit.fontawesome.com/a076d05399.js'></script>
   <link rel="shortcut icon" href="images/fevicon.ico.png" type="image/x-icon" />
   <link rel="apple-touch-icon" href="images/apple-touch-icon.png"/>
   <!-- Bootstrap CSS -->
   <link rel="stylesheet" href="css/bootstrap.min.css"/>
   <!-- Site CSS -->
   <link rel="stylesheet" href="style.css"/>
   <!-- Colors CSS -->
   <link rel="stylesheet" href="css/colors.css"/>
   <!-- ALL VERSION CSS -->
   <link rel="stylesheet" href="css/versions.css"/>
   <!-- Responsive CSS -->
   <link rel="stylesheet" href="css/responsive.css"/>
   <!-- Custom CSS -->
   <link rel="stylesheet" href="css/custom.css"/>
   <!-- Modernizer for Portfolio -->
   <script src="js/modernizer.js"></script>
   <!-- [if lt IE 9] -->

    <script>
        function redirect() {
            location.href = 'login_page.aspx';
        }
</script>



</head>
<body class="clinic_version">
    <form id="form1" runat="server">
            <div id="preloader">
         <img class="preloader" src="images/loaders/heart-loading2.gif" alt=""/>
      </div>
      <!-- END LOADER -->
      <header>
         <div class="header-top wow fadeIn">
            <div class="container">
               <a class="navbar-brand" href="index.html"><img src="images/logo.png" alt="image"/><h1 class="">Laboratory System</h1></a>
               <div class="right-header">
                  <div class="header-info">
                     <div class="info-inner">
                        <span class="icontop"><img src="images/phone-icon.png" alt="#"></span>
                        <span class="iconcont"><a href="tel:300 123 456">300 123 456</a></span>	
                     </div>
                     <div class="info-inner">
                        <span class="icontop"><i class="fa fa-envelope" aria-hidden="true"></i></span>
                        <span class="iconcont"><a data-scroll href="mailto:info@yoursite.com">info@Lifecare.com</a></span>	
                     </div>
                     <div class="info-inner">
                        <span class="icontop"><i class="fa fa-clock" aria-hidden="true"></i></span>
                        <span class="iconcont"><a data-scroll href="#">Daily: 7:00am - 8:00pm</a></span>	
                     </div>
                     
                  </div>
               </div>
            </div>
         </div>
         <div class="header-bottom wow fadeIn">
            <div class="container-fluid" style="background: -webkit-linear-gradient(left,rgba(8, 230, 189, 0.6) 30%,rgba(29, 134, 222, 0.6) 80%);">
               <nav class="main-menu">
                  <div class="navbar-header">
                     <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar"><i class="fa fa-bars" aria-hidden="true"></i></button>
                  </div>
				  
                  <div id="navbar" class="navbar-collapse collapse">
                     <ul class="nav navbar-nav">
                        <li><a  href="index.html">Home</a></li>
                        <li><a data-scroll href="#about">About us</a></li>
                        <li><a data-scroll href="#service">Services</a></li>
                        <li><a data-scroll href="#doctors">Doctors</a></li>
						<li><a data-scroll href="#testimonials">Feedbacks</a></li>
                        <li><a data-scroll href="#getintouch">Contact</a></li>
                     </ul>
                  </div>
               </nav>
               <div class="serch-bar">
                  <div id="custom-search-input">
                     <div class="input-group col-md-12">
                        <input type="text" class="form-control input-lg" placeholder="Search" />
                        <span class="input-group-btn">
                        <button class="btn btn-info btn-lg" type="button">
                        <i class="fa fa-search" aria-hidden="true"></i>
                        </button>
                       
                        </span>
                     </div>
                     
                  </div>
                  
                   
               </div>
               <div id="custom-search-input"   style="width: 260px; margin-left:970px; margin-top:10px ;padding-top:6px;"  >
                   <asp:LinkButton CssClass="btn text-center" ID="LinkButton1" style="height:35px ;border-radius: 50px;"  runat="server" OnClick="LinkButton1_Click">Sign-in<i style="margin-left:160px;" class=' far fa-user-circle' style='font-size:26px;'></i></asp:LinkButton>
                       <%--<button   class=" btn btn-info btn-lg " style="height:40px ;font-style:inherit; "><a href="login_page.aspx"></a> Sign-in<i style="margin-left: 165px;" class=' far fa-user-circle' style='font-size:36px'></i></button>--%>
                    </div>






            </div>
         </div>
      </header>
      <div id="home" class="parallax first-section wow fadeIn" data-stellar-background-ratio="0.4" style="background-image:url('images/slider-bg.jpg');">
         <div class="container">
            <div class="row">
               <div class="col-md-12 col-sm-12">
                  <div class="text-contant">
                     <h2>
                        <span class="center"><span class="icon"><img src="images/icon-logo.png" alt="#" /></span></span>
                        <a href="" style="color:#0060b1;" class="typewrite" data-period="1000" data-type='[ "Welcome to Life Care Lab!" ,"We Give You Best results!", " Because We Care Your Health", "because We are Expert!" ]'>
                        <span class="wrap"></span>
                        </a>
                     </h2>
                  </div>
               </div>
            </div>
            <!-- end row -->
         </div>
         <!-- end container -->
      </div>
      <!-- end section -->
      <div id="time-table" class="time-table-section">
         <div class="container">
            <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
               <div class="row">
                  <div class="service-time one" style="background:#2895f1;">
                     <span class="info-icon"><i class="fa fa-ambulance" aria-hidden="true"></i></span>
                     <h3>Free Home Sampling</h3>
                     <p>Tired of spending hours waiting in queues at diagnostic labs?.LifeCare Lab is offering home sample service To book call 03-137 246 16.</p>
                  </div>
               </div>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
               <div class="row">
                  <div class="service-time middle" style="background:#0071d1;">
                     <span class="info-icon"><i class="fa fa-clock-o" aria-hidden="true"></i></span> 
                     <h3>Working Hours</h3>
                     <div class="time-table-section">
                        <ul>
                           <li><span class="left">Monday - Friday</span><span class="right">8:00am – 5:00pm</span></li>
                           <li><span class="left">Saturday</span><span class="right">8:00am – 4:00pm</span></li>
                           <li><span class="left">Sunday</span><span class="right">8:00am – 1:00pm</span></li>
                        </ul>
                     </div>
                  </div>
               </div>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
               <div class="row">
                  <div class="service-time three" style="background:#0060b1;">
                     <span class="info-icon"><i class="fa fa-hospital-o" aria-hidden="true"></i></span>
                     <h3> Medical Center</h3>
                     <p>Get Appointment with your doctor at LifeCare Medical Center.lifeCare Medical Center has vision to make a difference in people’s lives.</p>
                  </div>
               </div>
            </div>
         </div>
      </div>
      <div id="about" class="section wow fadeIn">
         <div class="container">
            <div class="heading">
               <span class="icon-logo"><img src="images/icon-logo.png" alt="#"></span>
               <h2>The Specialist Lab</h2>
            </div>
            <!-- end title -->
            <div class="row">
               <div class="col-md-6">
                  <div class="message-box">
                     <h4>What We Do</h4>
                     <h2>Lab Services</h2>
                     <p class="lead">LifeCare Lab has always focused on quality in order to earn the trust of patients and doctors. The lab uses only the latest automated and integrated instruments from manufactures of international repute. The lab is staffed by 20 pathologists and more than 70 BSc/MSc/MPhil lab technologists.</p>
                     <p> LifeCare Medical Center also providing blood bank safe blood and transfusion services to patients with blood disorders like thalassemia, hemophilia, leukemia, bone marrow failure, and patients undergoing bone marrow transplant. In addition to this, our service also extends to patients. The blood bank is ISO accredited and participates in external quality assurance programs like CAP to ensure that all international standards are met. The blood is screened for all transfusion-transmitted infections (TTI) i.e. Hepatitis B and C, HIV, syphilis and malaria using AABB and WHO recommended guidelines to provide the safest possible blood.  </p>
                     <a href="#services" data-scroll class="btn btn-light btn-radius btn-brd grd1 effect-1">Learn More</a>
                  </div>
                  <!-- end messagebox -->
               </div>
               <!-- end col -->
               <div class="col-md-6">
                  <div class="post-media wow fadeIn">
                     <img src="images/about_03.jpg" alt="" class="img-responsive">
                     <a href="https://www.youtube.com/watch?v=AqNAxCyTh-c" data-rel="prettyPhoto[gal]" class="playbutton"><i class="flaticon-play-button"></i></a>
                  </div>
                  <!-- end media -->
               </div>
               <!-- end col -->
            </div>
            <!-- end row -->
            <hr class="hr1">
            <div class="row">
               <div class="col-md-3 col-sm-6 col-xs-12">
                  <div class="service-widget">
                     <div class="post-media wow fadeIn">
                        <a href="images/clinic_01.jpg" data-rel="prettyPhoto[gal]" class="hoverbutton global-radius"><i class="flaticon-unlink"></i></a>
                        <img src="images/clinic_01.jpg" alt="" class="img-responsive">
                     </div>
                     <h3>Digital Control Center</h3>
                  </div>
                  <!-- end service -->
               </div>
               <div class="col-md-3 col-sm-6 col-xs-12">
                  <div class="service-widget">
                     <div class="post-media wow fadeIn">
                        <a href="images/clinic_02.jpg" data-rel="prettyPhoto[gal]" class="hoverbutton global-radius"><i class="flaticon-unlink"></i></a>
                        <img src="images/clinic_02.jpg" alt="" class="img-responsive">
                     </div>
                     <h3>Hygienic Testing Room</h3>
                  </div>
                  <!-- end service -->
               </div>
               <div class="col-md-3 col-sm-6 col-xs-12">
                  <div class="service-widget">
                     <div class="post-media wow fadeIn">
                        <a href="images/clinic_03.jpg" data-rel="prettyPhoto[gal]" class="hoverbutton global-radius"><i class="flaticon-unlink"></i></a>
                        <img src="images/clinic_03.jpg" alt="" class="img-responsive">
                     </div>
                     <h3>Specialist Physicians</h3>
                  </div>
                  <!-- end service -->
               </div>
               <div class="col-md-3 col-sm-6 col-xs-12">
                  <div class="service-widget">
                     <div class="post-media wow fadeIn">
                        <a href="images/clinic_01.jpg" data-rel="prettyPhoto[gal]" class="hoverbutton global-radius"><i class="flaticon-unlink"></i></a>
                        <img src="images/clinic_01.jpg" alt="" class="img-responsive">
                     </div>
                     <h3>Digital Control Center</h3>
                  </div>
                  <!-- end service -->
               </div>
            </div>
            <!-- end row -->
         </div>
         <!-- end container -->
      </div>
      <div id="service" class="services wow fadeIn">
         <div class="container">
            <div class="row">
               <div class="col-lg-6 col-md-4 col-sm-6 col-xs-12 ml-3">
                  <div class="appointment-form">
                     <h3><span>+</span> APPOINTMENT WITH LAB SPECIALIST</h3>
                     <div class="form">
                        
                           <fieldset>
                              <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                 <div class="row">
                                    <div class="form-group">
                                        <asp:TextBox ID="TextBox1" placeholder="Enter Your Name!" runat="server"></asp:TextBox>
                                       
                                    </div>
                                 </div>
                              </div>
                              <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                 <div class="row">
                                    <div class="form-group">
                                        <asp:TextBox ID="TextBox2" placeholder="Enter your Email Address!" runat="server"></asp:TextBox>
                                       
                                    </div>
                                 </div>
                              </div>
                              <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 select-section">
                                 <div class="row">
                                    
                                    
                                 </div>
                              </div>
                              <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                 <div class="row">
                                    <div class="form-group">
                                      


                                         <asp:TextBox ID="lab_cnic" placeholder="Enter Lab specialist Cnic" runat="server"></asp:TextBox>
                                        <span  style="color: red;">
                                             <asp:HyperLink 
ID="HyperLink1"
runat="server"
Text="Check Lab Specialist Cnic?"
NavigateUrl="lab_profile.aspx"
></asp:HyperLink>
                                        </span>
                                        
                                         <asp:TextBox ID="labpatient_cnic" placeholder="Enter Your Cnic" runat="server"></asp:TextBox>
                                      

                                    </div>
                                 </div>
                              </div>
                              <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                 <div class="row">
                                    <div class="form-group">
                                        <asp:TextBox ID="TextBox5" TextMode="MultiLine"  class="form-control form-control-solid" placeholder="Give us detail..." runat="server" ></asp:TextBox>
                                      
                                    </div>

                                     
                                 </div>
                              </div>
                              <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                 <div class="row">
                                    <div class="form-group">
     
                                         <asp:LinkButton ID="LinkButton3" class="btn btn-primary text-white "    OnClick="Button2_Click" runat="server">Submit</asp:LinkButton>

                                    </div>
                                 </div>
                              </div>
                           </fieldset>
                       
                     </div>
                  </div>
               </div>
            
               <div class="col-lg-6 col-md-4 col-sm-6 col-xs-12">
                  <div class="appointment-form">
                     <h3><span>+</span> APPOINTMENT WITH DOCTOR</h3>
                     <div class="form">
                        
                           <fieldset>
                              <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                 <div class="row">
                                    <div class="form-group">
                                        <asp:TextBox ID="fullname" placeholder="Enter Your Name!" runat="server"></asp:TextBox>
                                       
                                    </div>
                                 </div>
                              </div>
                              <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                 <div class="row">
                                    <div class="form-group">
                                        <asp:TextBox ID="email" placeholder="Enter your Email Address!" runat="server"></asp:TextBox>
                                       
                                    </div>
                                 </div>
                              </div>
                              <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 select-section">
                                 <div class="row">
                                    
                                    
                                 </div>
                              </div>
                              <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                 <div class="row">
                                    <div class="form-group">
                                      


                                         <asp:TextBox ID="doc_cnic" placeholder="Enter Doctor Cnic" runat="server"></asp:TextBox>
                                        <span  style="color: red;">
                                             <asp:HyperLink 
ID="HyperLink2"
runat="server"
Text="Check Doctor Cnic?"
NavigateUrl="doctor_profile.aspx"
></asp:HyperLink>
                                        </span>
                                        
                                         <asp:TextBox ID="pat_cnic" placeholder="Enter Your Cnic" runat="server"></asp:TextBox>
                                      

                                    </div>
                                 </div>
                              </div>
                              <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                 <div class="row">
                                    <div class="form-group">
                                        <asp:TextBox ID="textarea_message" TextMode="MultiLine"  class="form-control form-control-solid" placeholder="Give us detail..." runat="server" ></asp:TextBox>
                                      
                                    </div>

                                     
                                 </div>
                              </div>
                              <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                 <div class="row">
                                    <div class="form-group">

                                        <asp:LinkButton ID="LinkButton2"  class="btn btn-primary text-white "  OnClick="Button1_Click" runat="server">Submit</asp:LinkButton>
                                    </div>
                                 </div>
                              </div>
                           </fieldset>
                       
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
      <!-- end section -->
	  
	  <!-- doctor -->
	  
	  <div id="doctors" class="parallax section db" data-stellar-background-ratio="0.4" style="background:#fff;" data-scroll-id="doctors" tabindex="-1">
        <div class="container">
		
		<div class="heading">
               <span class="icon-logo"><img src="images/icon-logo.png" alt="#"></span>
               <h2>The Specialist Lab</h2>
            </div>

            <div class="row dev-list text-center">
                <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 wow fadeIn" data-wow-duration="1s" data-wow-delay="0.2s" style="visibility: visible; animation-duration: 1s; animation-delay: 0.2s; animation-name: fadeIn;">
                    <div class="widget clearfix">
                        <img src="images/doctor_01.jpg" alt="" class="img-responsive img-rounded">
                        <div class="widget-title">
                            <h3>Soren Bo Bostian</h3>
                            <small>Lab Owner</small>
                        </div>
                        <!-- end title -->
                        <p>Hello guys, I am Soren from Sirbistana. I am senior art director and founder of Violetta.</p>

                        <div class="footer-social">
                            <a href="#" class="btn grd1"><i class="fa fa-facebook"></i></a>
                            <a href="#" class="btn grd1"><i class="fa fa-github"></i></a>
                            <a href="#" class="btn grd1"><i class="fa fa-twitter"></i></a>
                            <a href="#" class="btn grd1"><i class="fa fa-linkedin"></i></a>
                        </div>
                    </div><!--widget -->
                </div><!-- end col -->

                <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 wow fadeIn" data-wow-duration="1s" data-wow-delay="0.4s" style="visibility: visible; animation-duration: 1s; animation-delay: 0.4s; animation-name: fadeIn;">
                    <div class="widget clearfix">
                        <img src="images/doctor_02.jpg" alt="" class="img-responsive img-rounded">
                        <div class="widget-title">
                            <h3>Bryan Saftler</h3>
                            <small>Internal Diseases</small>
                        </div>
                        <!-- end title -->
                        <p>Hello guys, I am Soren from Sirbistana. I am senior art director and founder of Violetta.</p>

                        <div class="footer-social">
                            <a href="#" class="btn grd1"><i class="fa fa-facebook"></i></a>
                            <a href="#" class="btn grd1"><i class="fa fa-github"></i></a>
                            <a href="#" class="btn grd1"><i class="fa fa-twitter"></i></a>
                            <a href="#" class="btn grd1"><i class="fa fa-linkedin"></i></a>
                        </div>
                    </div><!--widget -->
                </div><!-- end col -->

                <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 wow fadeIn">
                    <div class="widget clearfix">
                        <img src="images/doctor_03.jpg" alt="" class="img-responsive img-rounded">
                        <div class="widget-title">
                            <h3>Matthew Bayliss</h3>
                            <small>Orthopedics Expert</small>
                        </div>
                        <!-- end title -->
                        <p>Hello guys, I am Soren from Sirbistana. I am senior art director and founder of Violetta.</p>

                        <div class="footer-social">
                            <a href="#" class="btn grd1"><i class="fa fa-facebook"></i></a>
                            <a href="#" class="btn grd1"><i class="fa fa-github"></i></a>
                            <a href="#" class="btn grd1"><i class="fa fa-twitter"></i></a>
                            <a href="#" class="btn grd1"><i class="fa fa-linkedin"></i></a>
                        </div>
                    </div><!--widget -->
                </div><!-- end col -->

            </div><!-- end row -->
        </div><!-- end container -->
    </div>
	  
	
	  
	  <!-- end doctor section -->
	  
      <div id="testimonials" class="section wb wow fadeIn">
         <div class="container">
            <div class="heading">
               <span class="icon-logo"><img src="images/icon-logo.png" alt="#"></span>
               <h2>Public Feedback</h2>
            </div>
            <!-- end title -->
            <div class="row">
               <div class="col-md-6 col-sm-12 wow fadeIn" data-wow-duration="1s" data-wow-delay="0.2s">
                  <div class="testimonial clearfix">
                     <div class="desc">
                        <h3><i class="fa fa-quote-left"></i> The amazing lab! Wonderful Support!</h3>
                        <p class="lead">They have got my project on time with the competition with a sed highly skilled, and experienced & professional team.</p>
                     </div>
                     <div class="testi-meta">
                        <img src="images/testi_01.png" alt="" class="img-responsive alignleft">
                        <h4>James Fernando <small>- Manager of Racer</small></h4>
                     </div>
                     <!-- end testi-meta -->
                  </div>
                  <!-- end testimonial -->
               </div>
               <!-- end col -->
               <div class="col-md-6 col-sm-12 wow fadeIn" data-wow-duration="1s" data-wow-delay="0.4s">
                  <div class="testimonial clearfix">
                     <div class="desc">
                        <h3><i class="fa fa-quote-left"></i> Thanks for Help us!</h3>
                        <p class="lead">They have got my project on time with the competition with a sed highly skilled, and experienced & professional team.</p>
                     </div>
                     <div class="testi-meta">
                        <img src="images/testi_02.png" alt="" class="img-responsive alignleft">
                        <h4>Andrew Atkinson <small>- LifeCare Manager</small></h4>
                     </div>
                     <!-- end testi-meta -->
                  </div>
                  <!-- end testimonial -->
               </div>
               <!-- end col -->
            </div>
            <!-- end row -->
            <hr class="invis">
            <div class="row">
               <div class="col-md-6 col-sm-12 wow fadeIn" data-wow-duration="1s" data-wow-delay="0.6s">
                  <div class="testimonial clearfix">
                     <div class="desc">
                        <h3><i class="fa fa-quote-left"></i> The amazing Lab! Wonderful Support!</h3>
                        <p class="lead">They have got my project on time with the competition with a sed highly skilled, and experienced & professional team.</p>
                     </div>
                     <div class="testi-meta">
                        <img src="images/testi_03.png" alt="" class="img-responsive alignleft">
                        <h4>Amanda DOE <small>- Manager of Racer</small></h4>
                     </div>
                     <!-- end testi-meta -->
                  </div>
                  <!-- end testimonial -->
               </div>
               <!-- end col -->
               <div class="col-md-6 col-sm-12 wow fadeIn" data-wow-duration="1s" data-wow-delay="0.8s">
                  <div class="testimonial clearfix">
                     <div class="desc">
                        <h3><i class="fa fa-quote-left"></i> Thanks for Help us!</h3>
                        <p class="lead">They have got my project on time with the competition with a sed highly skilled, and experienced & professional team.</p>
                     </div>
                     <div class="testi-meta">
                        <img src="images/testi_01.png" alt="" class="img-responsive alignleft">
                        <h4>Martin Johnson <small>- Founder of Goosilo</small></h4>
                     </div>
                     <!-- end testi-meta -->
                  </div>
                  <!-- end testimonial -->
               </div>
               <!-- end col -->
            </div>
            <!-- end row -->
         </div>
         <!-- end container -->
      </div>
      <!-- end section -->
      <div id="getintouch" class="section wb wow fadeIn" style="padding-bottom:0;">
         <div class="container">
            <div class="heading">
               <span class="icon-logo"><img src="images/icon-logo.png" alt="#"></span>
               <h2>Get in Touch</h2>
            </div>
         </div>
         <div class="contact-section">
            <div class="form-contant">
              <form id="ajax-contact" >
                  <div class="row">
                     <div class="col-md-6">
                        <div class="form-group in_name">
                            <input type="text" class="form-control" id="Name" placeholder="Name" required="required"/>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <div class="form-group in_email">
                           <input type="email" class="form-control" id="Email" placeholder="Enter Your E-mail" required="required"/>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <div class="form-group in_email">
                             <input type="tel" class="form-control" id="phone" placeholder="Phone" required="required"/>
                        </div>
                     </div>
                     <div class="col-md-6">
                        <div class="form-group in_email">
                             <input type="text" class="form-control" id="Subject" placeholder="Subject" required="required"/>
                        </div>
                     </div>
                     <div class="col-md-12">
                        <div class="form-group in_message"> 
                           <textarea class="form-control" id="Message" rows="5" placeholder="Message" required="required"></textarea>
                        </div>
                       <div class="actions">

                           <button  id="submitButton"   class="btn small" style="height:45px ;border-radius: 50px;"  onclick="sendemail();sendemail2()">Submit Your Message!</button>
                        </div>
                     </div>
                  </div>
               </form>
            </div>
            <div id="googleMap" style="width:100%;height:450px;"></div>
         </div>
      </div>
      <footer id="footer" class="footer-area wow fadeIn">
         <div class="container">
            <div class="row">
               <div class="col-md-4">
                  <div class="logo padding">
                     <a href=""><img src="images/logo.png" alt=""></a>
                     <p>We bring world class medical care into our patient’s home and aim to make primary healthcare not only more accessible, but also more affordable and accountable to our patients needs. We provide homecare services to patients from some of the leading hospitals in Pakistan.</p>
                  </div>
               </div>
               <div class="col-md-4">
                  <div class="footer-info padding">
                     <h3>CONTACT US</h3>
                     <p><i class="fa fa-map-marker" aria-hidden="true"></i> Office# 23 Old Grain Market Dilkhush Garden,، Ayub Colony, Faisalabad, Punjab</p>
                     <p><i class="fa fa-paper-plane" aria-hidden="true"></i> info@gmail.com</p>
                     <p><i class="fa fa-phone" aria-hidden="true"></i> (+92) 137 024 616</p>
                  </div>
               </div>
               <div class="col-md-4">
                  <div class="subcriber-info">
                     <h3>SUBSCRIBE</h3>
                     <p>Get healthy news, tip and solutions to your problems from our experts.</p>
                     <div class="subcriber-box">
                        <form id="mc-form" class="mc-form">
                           <div class="newsletter-form">
                              <input type="email" autocomplete="off" id="mc-email" placeholder="Email address" class="form-control" name="EMAIL">
                              <button class="mc-submit" type="submit"><i class="fa fa-paper-plane"></i></button> 
                              <div class="clearfix"></div>
                              <div class="mailchimp-alerts">
                                 <div class="mailchimp-submitting"></div>
                                 <div class="mailchimp-success"></div>
                                 <div class="mailchimp-error"></div>
                              </div>
                           </div>
                        </form>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </footer>
      <div class="copyright-area wow fadeIn">
         <div class="container">
            <div class="row">
               <div class="col-md-8">
                  <div class="footer-text">
                     <p>© 2020 Lifecare Laboratory Management System. All Rights Reserved.</p>
                  </div>
               </div>
               <div class="col-md-4">
                  <div class="social">
                     <ul class="social-links">
                        <li><a href=""><i class="fa fa-rss"></i></a></li>
                        <li><a href=""><i class="fa fa-facebook"></i></a></li>
                        <li><a href=""><i class="fa fa-twitter"></i></a></li>
                        <li><a href=""><i class="fa fa-google-plus"></i></a></li>
                        <li><a href=""><i class="fa fa-youtube"></i></a></li>
                        <li><a href=""><i class="fa fa-pinterest"></i></a></li>
                     </ul>
                  </div>
               </div>
            </div>
         </div>
      </div>
      <!-- end copyrights -->
      <a href="#home" data-scroll class="dmtop global-radius"><i class="fa fa-angle-up"></i></a>
      <!-- all js files -->
      <script src="js/all.js"></script>
      <!-- all plugins -->
      <script src="js/custom.js"></script>
      <!-- map -->
     <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCNUPWkb4Cjd7Wxo-T4uoUldFjoiUA1fJc&callback=myMap"></script>
    </form>
</body>
</html>