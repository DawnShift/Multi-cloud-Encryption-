<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ownerhome.aspx.cs" Inherits="index" %>

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
            width: 50%;
            height: 154px;
            margin-right: 0px;
        }
        .style2
        {
            width: 371px;
        }
        .style3
        {
            width: 494px;
        }
        .style4
        {
            width: 494px;
            height: 38px;
        }
        .style5
        {
            width: 371px;
            height: 38px;
        }
        .style6
        {
            width: 69%;
        }
        .style7
        {
            width: 291px;
        }
        .style10
        {
            height: 98px;
        }
        .style11
        {
            width: 291px;
            height: 98px;
        }
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
        <h2>My Uploads</h2>
        <asp:Panel ID="Panel1" runat="server">
            <table class="style1">
                <tr>
                    <td class="style4">
                        File Title</td>
                    <td class="style5">
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style3">
                        Choose File</td>
                    <td class="style2">
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Button ID="Button1" runat="server" style="margin-left: 94px" Text="Button" 
                            Width="73px" onclick="Button1_Click" />
                    </td>
                </tr>
            </table>
        </asp:Panel>
        <p>
        </p>
        <asp:Panel ID="Panel2" runat="server" Visible="False" Height="677px">
            <table class="style6">
                <tr>
                    <td>
                        File Title</td>
                    <td class="style7">
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style10">
                        Your File</td>
                    <td class="style11">
                        <asp:TextBox ID="TextBox7" runat="server" Height="75px" TextMode="MultiLine" 
                            Width="241px"></asp:TextBox>
                        <br />
                        <asp:CheckBox ID="CheckBox1" runat="server" Onclick="chk()" 
                            Text="Click for partition" />
                    </td>
                </tr>
               
                <tr>
                    <td>
                        Cloud 1</td>
                    <td class="style7">
                        <asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine"></asp:TextBox>
                        <br />
                        <asp:CheckBox ID="CheckBox2" runat="server" Text="Encript" AutoPostBack="True" 
                            oncheckedchanged="CheckBox2_CheckedChanged" />
                        <asp:CheckBox ID="CheckBox6" runat="server" AutoPostBack="True" 
                            oncheckedchanged="CheckBox6_CheckedChanged" Text="Decrypt" Visible="False" />
                    </td>
                </tr>
                <tr>
                    <td>
                        Cloud 2</td>
                    <td class="style7">
                        <asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine"></asp:TextBox>
                        <br />
                        <asp:CheckBox ID="CheckBox3" runat="server" Text="Encript" AutoPostBack="True" 
                            oncheckedchanged="CheckBox3_CheckedChanged" />
                        <asp:CheckBox ID="CheckBox7" runat="server" AutoPostBack="True" 
                            oncheckedchanged="CheckBox7_CheckedChanged" Text="Decrypt" Visible="False" />
                    </td>
                </tr>
                <tr>
                    <td>
                        Cloud 3<br />
                    </td>
                    <td class="style7">
                        <asp:TextBox ID="TextBox5" runat="server" TextMode="MultiLine"></asp:TextBox>
                        <br />
                        <asp:CheckBox ID="CheckBox4" runat="server" Text="Encript" AutoPostBack="True" 
                            oncheckedchanged="CheckBox4_CheckedChanged" />
                        <asp:CheckBox ID="CheckBox8" runat="server" AutoPostBack="True" 
                            oncheckedchanged="CheckBox8_CheckedChanged" Text="Decrypt" Visible="False" />
                    </td>
                </tr>
                <tr>
                    <td>
                        Cloud 4</td>
                    <td class="style7">
                        <asp:TextBox ID="TextBox6" runat="server" TextMode="MultiLine"></asp:TextBox>
                        <br />
                        <asp:CheckBox ID="CheckBox5" runat="server" Text="Encript" AutoPostBack="True" 
                            oncheckedchanged="CheckBox5_CheckedChanged"/>
                        <asp:CheckBox ID="CheckBox9" runat="server" AutoPostBack="True" 
                            oncheckedchanged="CheckBox9_CheckedChanged" Text="Decrypt" Visible="False" />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td class="style7">
                        <asp:Button ID="Button2" runat="server" Text="upload" onclick="Button2_Click" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
            </table>
        </asp:Panel>
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

