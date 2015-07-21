<%@ Page Language="C#" AutoEventWireup="true" CodeFile="cloud2.aspx.cs" Inherits="index" %>

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
        <li><a href="cloud1.aspx" class="active">Home</a></li>        
        <li><a href="index.aspx">Logout</a></li>
      </ul>
    </div>
    <div class="sidebox" style="color:#FFF;">
      <p style="margin-bottom:5px;">Academic Project 2014 @ Sivaji College Of Engineering </p>
     </div>
  </div>
  <div id="content">
    <h1 class="title">Welcome</h1>
    <div class="line">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" 
            GridLines="None">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="uid" HeaderText="uid" SortExpression="uid" />
                <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
                <asp:HyperLinkField DataNavigateUrlFields="id" 
                    DataNavigateUrlFormatString="cloud2data.aspx?did={0}" HeaderText="More Action" 
                    Text="Approve / Deny" />
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:project_multicloudConnectionString3 %>" 
            
            SelectCommand="SELECT [uid], [title], [s2appr], [id] FROM [cloud_data] WHERE ([s2appr] = @s2appr)">
            <SelectParameters>
                <asp:Parameter DefaultValue="No" Name="s2appr" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
      </div>
    <div class="one-half">
      <p>Vestibulum id ligula porta felis euismod semper. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus sagittis lacus vel augue laoreet rutrum faucibus.</p>
    </div>
    <div class="one-half last">
      <h3><img src="style/images/icon-pack.png" alt="">Package Design</h3>
      <p>Nulla vitae elit libero, a pharetra augue. Cum sociis natoque penatibus et magnis dis parturient montes, posuere velit aliquet. Donec id elit non mi porta gravida. </p>
    </div>
    <div class="clear"></div>
    <div class="line"></div>
    <h2>Latest Works</h2>
    <div class="carousel">
      <div id="carousel-scroll"><a href="#" id="prev"></a><a href="#" id="next"></a></div>
      <ul>
        <li> <a href="#"> <span class="overlay details"></span><img src="style/images/art/p1.jpg" alt=""></a></li>
        <li> <a href="#"> <span class="overlay details"></span><img src="style/images/art/p2.jpg" alt=""></a></li>
        <li> <a href="#"> <span class="overlay details"></span><img src="style/images/art/p3.jpg" alt=""></a></li>
        <li> <a href="#"> <span class="overlay details"></span><img src="style/images/art/p4.jpg" alt=""></a></li>
        <li> <a href="#"> <span class="overlay details"></span><img src="style/images/art/p5.jpg" alt=""></a></li>
        <li> <a href="#"> <span class="overlay details"></span><img src="style/images/art/p6.jpg" alt=""></a></li>
        <li> <a href="#"> <span class="overlay details"></span><img src="style/images/art/p7.jpg" alt=""></a></li>
        <li> <a href="#"> <span class="overlay details"></span><img src="style/images/art/p8.jpg" alt=""></a></li>
        <li> <a href="#"> <span class="overlay details"></span><img src="style/images/art/p9.jpg" alt=""></a></li>
        <li> <a href="#"> <span class="overlay details"></span><img src="style/images/art/p10.jpg" alt=""></a></li>
        <li> <a href="#"> <span class="overlay details"></span><img src="style/images/art/p11.jpg" alt=""></a></li>
        <li> <a href="#"> <span class="overlay details"></span><img src="style/images/art/p12.jpg" alt=""></a></li>
      </ul>
    </div>
    <div class="line"></div>
    <h3>Malesuada Condimentum Inceptos Vehicula</h3>
    <p>Sed posuere consectetur est at lobortis. Donec sed odio dui. Etiam porta sem malesuada magna mollis euismod. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.</p>
    <ul>
      <li>Sed posuere consectetur est at lobortis, Nullam id dolor id nibh ultricies vehicula. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</li>
      <li>Lorem ipsum dolor sit amet, consectetur adipiscing elit. </li>
      <li>Maecenas sed diam eget risus varius blandit sit amet non magna.</li>
    </ul>
    <div id="footer">
      <div class="footer-box one-third">
        <h3>Popular Posts</h3>
        <ul class="popular-posts">
          <li> <a href="#"><img src="style/images/art/s1.jpg" alt=""></a>
            <h5><a href="#">Dolor Commodo Consectetur</a></h5>
            <span>26 Aug 2011 | <a href="#">21 Comments</a></span> </li>
          <li> <a href="#"><img src="style/images/art/s2.jpg" alt=""></a>
            <h5><a href="#">Dolor Commodo Consectetur</a></h5>
            <span>26 Aug 2011 | <a href="#">21 Comments</a></span> </li>
          <li> <a href="#"><img src="style/images/art/s3.jpg" alt=""></a>
            <h5><a href="#">Dolor Commodo Consectetur</a></h5>
            <span>26 Aug 2011 | <a href="#">21 Comments</a></span> </li>
        </ul>
      </div>
      <div class="footer-box one-third">
        <h3>About</h3>
        <p>Donec id elit non mi porta gravida at eget metus. Donec ullamcorper nulla non metus auctor fringilla.</p>
        <p>Lorem Ipsum Dolor Sit Moon Avenue No:11/21 Planet City, Earth<br>
          <br>
          <span class="lite1">Fax:</span> +555 797 534 01<br>
          <span class="lite1">Tel:</span> +555 636 646 62<br>
          <span class="lite1">E-mail:</span> name@domain.com</p>
      </div>
      <div class="footer-box one-third last">
        <h3>Custom Text</h3>
        <p>Nullam quis risus eget urna mollis ornare vel eu leo. Maecenas faucibus mollis interdum. Etiam porta sem malesuada magna mollis euismod. Nulla vitae elit. </p>
        <p>Donec ullamcorper nulla non metus auctor fringilla. Maecenas faucibus mollis interdum. Curabitur blandit tempus porttitor.</p>
      </div>
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

