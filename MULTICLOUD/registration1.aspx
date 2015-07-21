<%@ Page Language="C#" AutoEventWireup="true" CodeFile="registration1.aspx.cs" Inherits="index" %>

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
    function chkgnme() {

        var a = document.getElementById("TextBox1").value;
        if (a == "" || a == null) {
            document.getElementById("n").innerHTML = "<font color='red'>***FIELD IS MANDATORY</font>";
            document.getElementById("TextBox1").style.borderColor = "red";
        }
        else {
            document.getElementById("n").innerHTML = "";
            document.getElementById("TextBox1").style.borderColor = "green";
        }
    }
    function chksnme()
     {
         var b = document.getElementById("TextBox2").value;
         if (b == "" || b == null)
          {
              document.getElementById("m").innerHTML = "<font color='red'>***FIELD IS MANDATORY</font>";
               document.getElementById("TextBox2").style.borderColor = "red";
         }
         else {
             document.getElementById("m").innerHTML = "";
             document.getElementById("TextBox2").style.borderColor = "green";
         }
     }
     function dob() 
     {
         var c = document.getElementById("TextBox3").value;
         if (c == "" || c == null) {
             document.getElementById("o").innerHTML = "<font color='red'>***Field is mandatory</font>";
             document.getElementById("TextBox3").style.borderColor = "red";
         }
         else {
             document.getElementById("o").innerHTML = "";
             document.getElementById("TextBox3").style.borderColor = "green";
         }
     }
     function gndr()
      {
          var d = document.getElementById("RadioButtonList1").value;
          if (d == "" || d == null) {
              document.getElementById("d").innerHTML = "<font color='red'>***Field is mandatory</font>";
              document.getElementById("RadioButtonList1").style.borderColor = "red";
          }
          else {
              document.getElementById("d").innerHTML = "";
              document.getElementById("RadioButtonList1").style.borderColor = "green";
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
        <li><a href="home.aspx" class="active">Home</a></li>
        <li><a href="user.aspx">User</a></li>
        <li><a href="owner.aspx">Owner</a></li>
        <li><a href="verifiyer.aspx">Verifiyer</a></li>
        <li><a href="cloud.aspx">Cloud</a></li>
      </ul>
    </div>
    
    <div class="sidebox" style="color:#FFF;">
      <p style="margin-bottom:5px;">Academic Project 2014 @ Sivaji College Of Engineering </p>
     </div>
  </div>
  <div id="content">
    <h1 class="title">Welcome</h1>
    <div class="line">
        <table class="style1">
            <tr>
                <td class="style3">
                    Given&nbsp; Name</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Height="21px" onblur="chkgnme()"></asp:TextBox><span id="n"></span>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    Surname</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Height="19px" onblur="chksnme()"></asp:TextBox><span id="m"></span>
                </td>
            </tr>
            <tr>
                <td class="style4">
                    Date Of Birth</td>
                <td class="style5">
                    <asp:TextBox ID="TextBox3" runat="server" Height="19px" onblur="dob()"></asp:TextBox><span id="o"></span> 
                </td>
            </tr>
            <tr>
                <td class="style8">
                    Gender</td>
                <td class="style9">
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
                        RepeatDirection="Horizontal" Height="26px" onblur="gndr()">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:RadioButtonList><span id="p"></span>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    Nationality</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem>Indian</asp:ListItem>
                        <asp:ListItem>American</asp:ListItem>
                        <asp:ListItem>Pakistan</asp:ListItem>
                        <asp:ListItem>Africa</asp:ListItem>
                        <asp:ListItem>Indonesia</asp:ListItem>
                        <asp:ListItem>Russia</asp:ListItem>
                        <asp:ListItem>China</asp:ListItem>
                        <asp:ListItem>Singapoor</asp:ListItem>
                        <asp:ListItem>Arabia</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    Address</td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server" Height="22px" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style6">
                    E-mail id</td>
                <td class="style7">
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    Login id</td>
                <td>
                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    Password</td>
                <td>
                    <asp:TextBox ID="TextBox7" runat="server" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    Confirm Password</td>
                <td>
                    <asp:TextBox ID="TextBox8" runat="server" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    Contact Number</td>
                <td>
                    <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    Photo</td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
            </tr>
            <tr>
                <td class="style3">
                    Hint Question</td>
                <td>
                    <asp:DropDownList ID="DropDownList2" runat="server">
                        <asp:ListItem>--select--</asp:ListItem>
                        <asp:ListItem>Birth city</asp:ListItem>
                        <asp:ListItem>Favourite Teacher</asp:ListItem>
                        <asp:ListItem>Favourite Food</asp:ListItem>
                        <asp:ListItem>Favorite Dancer</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    Hint Answer</td>
                <td>
                    <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2" colspan="2">
                    <asp:Button ID="Button1" runat="server" style="margin-left: 208px" Text="Register" 
                        Width="65px" onclick="Button1_Click" />
                    <asp:Button ID="Button2" runat="server" Text="Clear" />
                </td>
            </tr>
        </table>
      </div>
    <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
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

