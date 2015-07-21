<%@ Page Language="C#" AutoEventWireup="true" CodeFile="userprofile.aspx.cs" Inherits="index" %>

<!DOCTYPE HTML>
<html lang="en">
<head>
<title>ID-DPDP</title>
<meta charset="UTF-8">
<link rel="shortcut icon" type="image/x-icon" href="style/images/favicon.png">
<link rel="stylesheet" type="text/css" href="style/css/style.css" media="all">
<link href='http://fonts.googleapis.com/css?family=Amaranth' rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Droid+Serif:400,400italic,700,700italic' rel='stylesheet' type='text/css'>
<!--[if IE 7]>
<link rel="stylesheet" type="text/css" href="style/css/ie7.css" media="all">
<![endif]-->
<!--[if IE 8]>
<link rel="stylesheet" type="text/css" href="style/css/ie8.css" media="all">
<![endif]-->
<!--[if IE 9]>
<link rel="stylesheet" type="text/css" href="style/css/ie9.css" media="all">
<![endif]-->
<script src="style/js/jquery-1.6.4.min.js"></script>
<script src="style/js/ddsmoothmenu.js"></script>
<script src="style/js/jquery.jcarousel.js"></script>
<script src="style/js/jquery.prettyPhoto.js"></script>
<script src="style/js/carousel.js"></script>
<script src="style/js/jquery.flexslider-min.js"></script>
<script src="style/js/jquery.masonry.min.js"></script>
<script src="style/js/jquery.slickforms.js"></script>
    <style type="text/css">
        .style1
        {
            width: 40%;
            height: 89px;
        }
        .style2
        {
            width: 150px;
        }
        .style3
        {
            width: 47%;
            height: 66px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
<div id="wrapper">
  <div id="sidebar">
    <div id="logo"><a href="index.html"><img src="style/images/logo.png" alt=""></a></div>
    <div id="menu" class="menu-v">
      <ul>
        <li><a href="userhome.aspx" class="active">Home</a></li>
        <li><a href="userprofile.aspx">My Profile</a></li>
        <li><a href="filelist.aspx">File List</a></li>
        <li><a href="myfile.aspx">My File</a></li>
        <li><a href="home.aspx">Logout</a></li>
      </ul>
    </div>
    <div class="sidebox" style="color:#FFF;">
      <p style="margin-bottom:5px;">Academic Project 2014 @ Sivaji College Of Engineering </p>
     </div>
  </div>
  <div id="content">
    <h1 class="title">&nbsp;</h1>
    <div class="line">
    <div style="float:right;">
        <asp:Label ID="Label1" runat="server"></asp:Label>
        
        </div>
        <h2>
            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
        </h2>
        <asp:Panel ID="Panel1" runat="server">
            <table class="style1">
                <tr>
                    <td class="style2">
                        Login ID</td>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                        Address</td>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                        Contact</td>
                    <td>
                        <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                        Email</td>
                    <td>
                        <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                        Date of Birth</td>
                    <td>
                        <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                        &nbsp;</td>
                    <td>
                        <asp:ImageButton ID="ImageButton1" runat="server" 
                            ImageUrl="~/pic/edit_my_profile.gif" onclick="ImageButton1_Click" />
                    </td>
                </tr>
            </table>
        </asp:Panel>
        <asp:Panel ID="Panel2" runat="server" Visible="False">
            <table class="style3">
                <tr>
                    <td>
                        Login ID</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" ReadOnly="True"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        Address</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        Contact</td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        Email</td>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                            Text="Update Profile" />
                    </td>
                </tr>
            </table>
        </asp:Panel>
      </div>
    <div id="slider">
    </div>
    <div class="clear"></div>
    <div class="carousel">
        <div id="carousel-scroll"><a href="#" id="prev"></a><a href="#" id="next"></a></div>
    </div>
  </div>
</div>
<script src="style/js/scripts.js"></script>
<!--[if !IE]> -->
<script src="style/js/jquery.corner.js"></script>
<!-- <![endif]-->
</body>
</html>
</form>

