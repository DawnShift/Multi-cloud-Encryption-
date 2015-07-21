<%@ Page Language="C#" AutoEventWireup="true" CodeFile="approvefile.aspx.cs" Inherits="index" %>

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
        <li><a href="varifierhome.aspx">Home</a></li>
        <li><a href="newuserlist.aspx">New Users</a></li>
                <li><a href="approveduser.aspx">Approved User</a></li>
        <li><a href="approvefile.aspx" class="active">File Verification</a></li>        
        <li><a href="home.aspx">LogOut</a></li>
      </ul>
    </div>
    <div class="sidebox" style="color:#FFF;">
      <p style="margin-bottom:5px;">Academic Project 2014 @ Sivaji College Of Engineering </p>
     </div>
  </div>
  <div id="content">
    <h1 class="title">File Verification Zone</h1>
    <div class="line">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" 
            GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                    ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="uid" HeaderText="uid" SortExpression="uid" />
                <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
                <asp:HyperLinkField DataNavigateUrlFields="id" 
                    DataNavigateUrlFormatString="approvefile.aspx?did={0}&amp;t=1" 
                    HeaderText="More" Text="Verify" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:project_multicloudConnectionString7 %>" 
            SelectCommand="SELECT [id], [uid], [title] FROM [cloud_data] WHERE (([s1appr] = @s1appr) AND ([s2appr] = @s2appr) AND ([s3appr] = @s3appr) AND ([s4appr] = @s4appr) AND ([vappr] = @vappr))">
            <SelectParameters>
                <asp:Parameter DefaultValue="Yes" Name="s1appr" Type="String" />
                <asp:Parameter DefaultValue="Yes" Name="s2appr" Type="String" />
                <asp:Parameter DefaultValue="Yes" Name="s3appr" Type="String" />
                <asp:Parameter DefaultValue="Yes" Name="s4appr" Type="String" />
                <asp:Parameter DefaultValue="No" Name="vappr" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
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

