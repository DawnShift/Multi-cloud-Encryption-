<%@ Page Language="C#" AutoEventWireup="true" CodeFile="filelist.aspx.cs" Inherits="index" %>

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
<script>
    function loaddata(str) {
        var xmlhttp = new XMLHttpRequest();

        xmlhttp.open("GET", "gethint.aspx?q=" + str, true);
        xmlhttp.send();

        xmlhttp.onreadystatechange = function () {
            if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
                document.getElementById("fl").innerHTML = xmlhttp.responseText;
            }
        }
        
    }
</script>
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
        <h2>Search File Here</h2>
        <p>
            <asp:TextBox ID="TextBox1" runat="server" Width="465px" placeholder="Enter file title for Search" onkeyup="loaddata(this.value)"></asp:TextBox>
        </p><hr />
        <span id="fl">
        <asp:Label ID="Label2" runat="server"></asp:Label>
        </span>
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

