<%@ Page Language="C#" AutoEventWireup="true" CodeFile="usr_req.aspx.cs" Inherits="index" %>

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
        function chk()
{

    </style>
<script>
    function chk() {
        if (document.getElementById("CheckBox1").checked) {

            var z = document.getElementById("TextBox7").value;
            alert(z);
            var len = z.length;
            var k = parseInt(len / 4);
            var str = z.substr(0, k);
            document.getElementById("TextBox3").value = str;
            var str1 = z.substr(k, k);
            document.getElementById("TextBox4").value = str1;
            var str2 = z.substr(k * 2, k);
            document.getElementById("TextBox5").value = str2;
            var str3 = z.substr(k * 3);
            document.getElementById("TextBox6").value = str3;
        }
        else {
            document.getElementById("TextBox3").value = "";

            document.getElementById("TextBox4").value = "";

            document.getElementById("TextBox5").value = "";

            document.getElementById("TextBox6").value = "";
            
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
        <li><a href="ownerhome.aspx" class="active">Home</a></li>    
        <li><a href="usr_req.aspx" class="active">User Request</a></li>        
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
        <h2>User Request</h2>
        <p>
            <asp:Label ID="Label2" runat="server"></asp:Label>
        </p>
        <div class="fupload" >
        </div>
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

