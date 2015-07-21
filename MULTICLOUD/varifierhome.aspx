<%@ Page Language="C#" AutoEventWireup="true" CodeFile="varifierhome.aspx.cs" Inherits="index" %>

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
</head>
<body>
    <form id="form1" runat="server">
<div id="wrapper">
  <div id="sidebar">
    <div id="logo"><a href="index.html"><img src="style/images/logo.png" alt=""></a></div>
    <div id="menu" class="menu-v">
      <ul>
        <li><a href="varifierhome.aspx" class="active">Home</a></li>
        <li><a href="newuserlist.aspx">New Users</a></li>
                <li><a href="approveduser.aspx">Approved User</a></li>
        <li><a href="approvefile.aspx">File Verification</a></li>        
        <li><a href="home.aspx">LogOut</a></li>
      </ul>
    </div>
    <div class="sidebox" style="color:#FFF;">
      <p style="margin-bottom:5px;">Academic Project 2014 @ Sivaji College Of Engineering </p>
     </div>
  </div>
  <div id="content">
    <h1 class="title">Welcome Verifiyer</h1>
    <div class="line">
      <center>  <asp:Image ID="Image1" runat="server" 
            ImageUrl="~/pic/1Multi-Cloud-Strategies.jpg" Width="595px" />
            </center>
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

