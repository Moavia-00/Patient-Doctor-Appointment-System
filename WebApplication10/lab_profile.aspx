<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="lab_profile.aspx.cs" Inherits="WebApplication10.lab_profile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Lab Attendent Profiles</title>
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
    <div class="row" style="margin-left:320px;margin-top:110px">
        <div class="col">
            <h1>Lab Specialist Profile</h1>
            <div>
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
        </div>
    </div>
        </div>
    </form>
</body>
</html>