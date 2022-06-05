<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="lab_appointment.aspx.cs" Inherits="WebApplication10.lab_appointment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>Lab Attendent Appointments</title>
    <link href="bootstrap/bootstrap.css" rel="stylesheet" />
    <link href="css/style.css" rel="stylesheet"/>
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
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







 
<script  src="https://code.jquery.com/jquery-3.2.1.min.js" integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4="   crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
     <script type="text/javascript">
         function getConfirmation(sender, title, message) {
             $("#spnTitle").text(title);
             $("#spnMsg").text(message);
             $('#modalPopUp').modal('show');
             
             $('#btnConfirm').attr('onclick', "$('#modalPopUp').modal('hide');setTimeout(function(){" + $(sender).prop('href') + "}, 50);");
             
             return false;
         }
     </script>
</head>
<body class="preloader" >
   
    <form id="form1"  runat="server" >
        <div class="container">
            <div class="row" style="margin-left:350px;margin-top:70px" >
                <div class="col-6 form-group">
                    <h2 class="text-center" style="color:#1d86de;">Delete Lab Appointment</h2>
                    <asp:TextBox ID="text" placeholder="Enter Patient CNIC" CssClass="form-control"  runat="server"></asp:TextBox>

                       <asp:LinkButton ID="lnkDelete" runat="server" CssClass="btn btn-danger form-control" OnClientClick="return getConfirmation(this, '','Do you want to give review to patient?');"  OnClick="delete_Click" ><i class="glyphicon glyphicon-trash"></i>&nbsp;Delete
                          
                       </asp:LinkButton>          <br />

                   
                </div>
            </div>
            
            <asp:GridView ID="view" CssClass="table table-light table-bordered" runat="server"></asp:GridView>


             <div id="modalPopUp" class="modal fade" role="dialog">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                            <h4 class="modal-title">
                                <span id="spnTitle">
                                </span>
                            </h4>
                        </div>
                        <div class="modal-body">
                            <p>
                                <span id="spnMsg">
                                </span>                                .
                            </p>
                        </div>
                        <div class="modal-footer">
                            <asp:TextBox ID="popup_text" placeholder="Enter Points Out Of 10" TextMode="Number"  runat="server"></asp:TextBox>
                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                            <asp:Button ID="btnConfirm"  class="btn btn-danger" runat="server" OnClick="popup" Text="Yes" />
                        </div>
                    </div>
                </div>
            </div>

            <asp:Literal ID="litMsg" runat="server"></asp:Literal>



        </div>
    </form>
        
</body>
</html>
