<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Shoping.aspx.cs" Inherits="FruitsprojectPractice.Shoping" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Dashboard</title>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>

    <style type="text/css">
        .auto-style1 {
            text-align: justify;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">

         
        <nav class="navbar navbar-expand-sm bg-info navbar-light">
    <ul class="navbar-nav">
   
     
       <li class="nav-item active">
      <a class="nav-link " href="login.aspx">Login as Admin</a>
    </li>

             <li class="nav-item">
      <a class="nav-link " href="Report.aspx">View Report</a>
    </li>

    </ul>
        </nav>

        <div class="container my-5 p-5">

            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                               
                <ContentTemplate>
                                      
            <asp:Timer ID="Timer1" runat="server" Interval="1000" OnTick="Timer1_Tick"></asp:Timer>

            <asp:Label ID="Label9" runat="server" Text="Now" ></asp:Label>
                     
                    <br />
                    <br />
                     
                </ContentTemplate>

            </asp:UpdatePanel>
           
           
        <div class="container my-5 p-3">

        <div>
            <asp:Image ID="Image1" runat="server" AlternateText="Graps" BorderColor="#0099FF" BorderStyle="Groove" Height="200px" ImageUrl="~/Img/graps.jpg" Width="250px" />
        </div>
        <p>
            <asp:Label ID="Label1" runat="server" BackColor="#0066CC" ForeColor="White" Text="Graps(Black)" Height="35px" Width="103px"></asp:Label> &nbsp &nbsp &nbsp &nbsp
            <asp:ImageButton ID="ImageButton9" runat="server" Height="25px" ImageUrl="~/Img/cart.jpg" style="margin-left: 0px; margin-top: 0px" Width="80px" />
        </p>

        <div>
            <asp:Image ID="Image2" runat="server" AlternateText="Graps" BorderColor="#0099FF" BorderStyle="Groove" Height="200px" ImageUrl="~/Img/Lichi.jpg" Width="250px" />
        </div>
        <p>
            <asp:Label ID="Label2" runat="server" BackColor="#0066CC" ForeColor="White" Text="Fresh Lichi" Height="35px" Width="103px"></asp:Label> &nbsp &nbsp &nbsp &nbsp
            <asp:ImageButton ID="ImageButton10" runat="server" Height="25px" ImageUrl="~/Img/cart.jpg" style="margin-left: 0px; margin-top: 0px" Width="80px" />
        </p>

          <div>
            <asp:Image ID="Image3" runat="server" AlternateText="Graps" BorderColor="#0099FF" BorderStyle="Groove" Height="200px" ImageUrl="~/Img/mango.jpg" Width="250px" />
        </div>
        <p>
            <asp:Label ID="Label3" runat="server" BackColor="#0066CC" ForeColor="White" Text="Alphonso Mango" Height="54px" Width="116px" style="margin-top: 34px"></asp:Label> &nbsp &nbsp &nbsp &nbsp
            <asp:ImageButton ID="ImageButton3" runat="server" Height="25px" ImageUrl="~/Img/cart.jpg" style="margin-left: 0px; margin-top: 0px" Width="80px" />
        </p>

          <div>
            <asp:Image ID="Image4" runat="server" AlternateText="Graps" BorderColor="#0099FF" BorderStyle="Groove" Height="200px" ImageUrl="~/Img/tulip1.jpg" Width="250px" />
        </div>
        <p>
            <asp:Label ID="Label4" runat="server" BackColor="#0066CC" ForeColor="White" Text="Tulips Violet" Height="35px" Width="103px"></asp:Label> &nbsp &nbsp &nbsp &nbsp
            <asp:ImageButton ID="ImageButton11" runat="server" Height="25px" ImageUrl="~/Img/cart.jpg" style="margin-left: 0px; margin-top: 0px" Width="80px" />
        </p>

          <div>
            <asp:Image ID="Image5" runat="server" AlternateText="Graps" BorderColor="#0099FF" BorderStyle="Groove" Height="200px" ImageUrl="~/Img/flower2.jpg" Width="250px" />
        </div>
        <p>
            <asp:Label ID="Label5" runat="server" BackColor="#0066CC" ForeColor="White" Text="Flora Devine" Height="35px" Width="103px"></asp:Label> &nbsp &nbsp &nbsp &nbsp
            <asp:ImageButton ID="ImageButton12" runat="server" Height="25px" ImageUrl="~/Img/cart.jpg" style="margin-left: 0px; margin-top: 0px" Width="80px" />
        </p>

          <div>
            <asp:Image ID="Image6" runat="server" AlternateText="Graps" BorderColor="#0099FF" BorderStyle="Groove" Height="200px" ImageUrl="~/Img/flower3.jpg" Width="250px" />
        </div>
        <p class="auto-style1">
            <asp:Label ID="Label6" runat="server" BackColor="#0066CC" ForeColor="White" Text="Purify Heart" Height="35px" Width="103px"></asp:Label> &nbsp &nbsp &nbsp &nbsp
            <asp:ImageButton ID="ImageButton13" runat="server" Height="25px" ImageUrl="~/Img/cart.jpg" style="margin-left: 0px; margin-top: 0px" Width="80px" />
        </p>

          <div>
            <asp:Image ID="Image7" runat="server" AlternateText="Graps" BorderColor="#0099FF" BorderStyle="Groove" Height="200px" ImageUrl="~/Img/flower5.jpg" Width="250px" />
        </div>
        <p>
            <asp:Label ID="Label7" runat="server" BackColor="#0066CC" ForeColor="White" Text="Forest Beauty" Height="35px" Width="103px"></asp:Label> &nbsp &nbsp &nbsp &nbsp
            <asp:ImageButton ID="ImageButton14" runat="server" Height="25px" ImageUrl="~/Img/cart.jpg" style="margin-left: 0px; margin-top: 0px" Width="80px" />
        </p>

          <div>
            <asp:Image ID="Image8" runat="server" AlternateText="Graps" BorderColor="#0099FF" BorderStyle="Groove" Height="200px" ImageUrl="~/Img/Gerbera2.jpg" Width="250px" />
        </div>
        <p>
            <asp:Label ID="Label8" runat="server" BackColor="#0066CC" ForeColor="White" Text="Gerbera RED" Height="35px" Width="103px"></asp:Label> &nbsp &nbsp &nbsp &nbsp
            <asp:ImageButton ID="ImageButton15" runat="server" Height="25px" ImageUrl="~/Img/cart.jpg" style="margin-left: 0px; margin-top: 0px" Width="80px" />
        </p>
        </div>
        </div>
    </form>
</body>
</html>
