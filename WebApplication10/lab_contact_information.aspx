<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="lab_contact_information.aspx.cs" Inherits="WebApplication10.lab_contact_information" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <title>Lab Attendent Contact Information</title>
    <link href="bootstrap/bootstrap.css" rel="stylesheet" />
    <link href="css/style.css" rel="stylesheet"/>
    <script>
        function textchange() {
            var name = '<%= Session["full"] %>';


            document.getElementById('text').innerHTML = name;
        }
    </script>
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
                       <asp:HyperLink CssClass=" btn btn-outline-primary btn-block text-primary"
ID="HyperLink4"
runat="server"
Text="HOME"
NavigateUrl="lab_home.aspx"
></asp:HyperLink>
                    </li>
                    <li class="list-group-item list-group-item-primary list-group-item-action">
 <asp:HyperLink CssClass=" btn btn-outline-primary btn-block text-primary"
ID="HyperLink1"
runat="server"
Text="APPOINTMENTS"
NavigateUrl="lab_home.aspx"
></asp:HyperLink>                    </li>
                    <li class="list-group-item list-group-item-primary list-group-item-action">
 <asp:HyperLink CssClass=" btn btn-outline-primary btn-block text-primary"
ID="HyperLink2"
runat="server"
Text="CONTACT INFORMATION"
NavigateUrl="lab_home.aspx"
></asp:HyperLink>                    </li>
                    <li class="list-group-item list-group-item-primary list-group-item-action">
 <asp:HyperLink CssClass=" btn btn-outline-primary btn-block text-primary"
ID="HyperLink3"
runat="server"
Text="CHANGE PASSWORD"
NavigateUrl="lab_home.aspx"
></asp:HyperLink>                    </li>
                </ul>
            </div>
            <div class="col-9" style="margin-top:40px">
                <h3 class="font-weight-bolder btn-block text-center" style="color:#1d86de;">
                    Contact Information
                </h3>
                <hr>
                <div class="row form-group">
                    <div class="col-6">
                        <label for="fullname" class="font-weight-bolder">FullName</label>
                        
                        <asp:TextBox ID="fullname" class="form-control" runat="server"></asp:TextBox>
                      
                    </div>
                    <div class="col-6">
                        <label for="cnic" class="font-weight-bolder">CNIC</label>
                        <asp:TextBox ID="cnic" class="form-control" runat="server"></asp:TextBox>
                    </div>

                    <div class="col-6">
                        <label for="email" class="font-weight-bolder">Email</label>
                  <asp:TextBox ID="email" class="form-control" runat="server"></asp:TextBox>

                    </div>
                    <div class="col-6">
                        <label for="phoneno" class="font-weight-bolder">Phone No</label>
                <asp:TextBox ID="phoneno" class="form-control" runat="server"></asp:TextBox>

                    </div>
                </div>

                <div class="col-12 ">
                    <asp:Button ID="Button1"   class="btn btn-block btn-primary" runat="server" Text="Save" OnClick="Button1_Click" />
                    
                </div>
            </div>

        </div>
    </div>
        </div>
    </form>
</body>
</html>
