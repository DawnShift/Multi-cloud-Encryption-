<%@ Page Language="C#" AutoEventWireup="true" CodeFile="cloud2data.aspx.cs" Inherits="index" %>

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
            width: 13%;
        }
        .style2
        {
            width: 9px;
        }
        .style3
        {
            width: 5px;
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
        <li><a href="cloud1.aspx" class="active">Home</a></li>        
        <li><a href="index.aspx">Logout</a></li>
      </ul>
    </div>
    <div class="sidebox" style="color:#FFF;">
      <p style="margin-bottom:5px;">Academic Project 2014 @ Sivaji College Of Engineering </p>
     </div>
  </div>
  <div id="content">
    <h1 class="title">Data Verification Area</h1>
    <div class="line">
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        <asp:TextBox ID="TextBox1" runat="server" Height="110px" TextMode="MultiLine" 
            Width="443px"></asp:TextBox>
        <br />
        <asp:CheckBox ID="CheckBox1" runat="server" AutoPostBack="True" 
            oncheckedchanged="CheckBox1_CheckedChanged" Text="View Data" />
        <asp:Label ID="Label2" runat="server"></asp:Label>
        <br />
        <table class="style1">
            <tr>
                <td class="style3">
                    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/pic/app.jpg" 
                        onclick="ImageButton1_Click" />
                </td>
                <td class="style2">
                    <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/pic/dn.jpg" 
                        onclick="ImageButton2_Click" />
                </td>
            </tr>
        </table>
        <br />
      </div>
  </div>
</div>
<div class="clear"></div>
<script src="style/js/scripts.js"></script>
<!--[if !IE]> -->
<script src="style/js/jquery.corner.js"></script>
<!-- <![endif]-->
</body>
</html>
</form>

