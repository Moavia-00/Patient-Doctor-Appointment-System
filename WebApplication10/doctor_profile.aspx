<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="doctor_profile.aspx.cs" Inherits="WebApplication10.doctor_profile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <title>Doctor Profiles</title>
    <link href="bootstrap/bootstrap.css" rel="stylesheet" />
    <link href="css/style.css" rel="stylesheet"/>
    <style>
        .preloader {
    background-image:url('bootstrap/loader.gif');
    background-repeat:no-repeat;
    background-size:2650px 840px;
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
        <div class="container">
            <div class="row" style="margin-left:230px;margin-top:110px">
                 <div class="col-6 text-center" style="margin-left:70px">
                 <h1>Doctor Profiles</h1> 
             </div>  
            </div>
            <div class="row" style="margin-left:230px;">
            
                <div class="col-4 form-group">
                    <asp:Button ID="citybutton" CssClass="form-control" style="background-color:rgb(56, 124, 59);color:white" runat="server" Text="Check Doctor By It's City" OnClick="citybutton_Click" />
                  <asp:DropDownList ID="city" CssClass="form-control" runat="server" class="select2-hidden-accessible" OnSelectedIndexChanged="city_SelectedIndexChanged">
                                    <asp:ListItem Text="Lahore" Value="1"></asp:ListItem>
                                    <asp:ListItem Text="Faislabad" Value="2"></asp:ListItem>
                                    <asp:ListItem Text="Jhang" Value="3"></asp:ListItem>
                                    
                    

            </asp:DropDownList>
                </div>

                 <div class="col-4">
                    <asp:Button ID="Button1" runat="server" CssClass="form-control" style="background-color:rgb(56, 124, 59);color:white" Text="Check Doctor By It's Specialization" OnClick="categorybutton_Click" />

                        <asp:DropDownList ID="cateogory" CssClass="form-control" runat="server" class="select2-hidden-accessible">
                                    <asp:ListItem Text="Gynecologist" Value="1"></asp:ListItem>
                                    <asp:ListItem Text="Skin Specialist" Value="2"></asp:ListItem>
                                    <asp:ListItem Text="Child Specialist" Value="3"></asp:ListItem>
                                    <asp:ListItem Text="Dentist" Value="4"></asp:ListItem>
                           
                       </asp:DropDownList>

                </div>
                
            </div>
       
        
        <asp:GridView ID="view" runat="server" CssClass="table table-bordered" OnSelectedIndexChanged="view_SelectedIndexChanged" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4">
            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
            <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#330099" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
            <SortedAscendingCellStyle BackColor="#FEFCEB" />
            <SortedAscendingHeaderStyle BackColor="#AF0101" />
            <SortedDescendingCellStyle BackColor="#F6F0C0" />
            <SortedDescendingHeaderStyle BackColor="#7E0000" />
            </asp:GridView>
             </div>
    </form>
</body>
</html>