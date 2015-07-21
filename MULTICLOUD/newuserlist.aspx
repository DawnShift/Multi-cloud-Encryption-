<%@ Page Language="C#" AutoEventWireup="true" CodeFile="newuserlist.aspx.cs" Inherits="index" %>

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
        <li><a href="newuserlist.aspx" class="active">New Users</a></li>
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
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataSourceID="SqlDataSource1" 
            onselectedindexchanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:BoundField DataField="gnme" HeaderText="User Name" SortExpression="gnme" />
                <asp:BoundField DataField="eid" HeaderText="Email ID" SortExpression="eid" />
                <asp:BoundField DataField="lid" HeaderText="Login ID" SortExpression="lid" />
                <asp:HyperLinkField DataNavigateUrlFields="id" 
                    DataNavigateUrlFormatString="newuserlist.aspx?id={0}&amp;t=1" HeaderText="More" 
                    Text="Approve" />
                <asp:HyperLinkField DataNavigateUrlFields="id" 
                    DataNavigateUrlFormatString="newuserlist.aspx?id={0}&amp;t=2" 
                    HeaderText="Reject" Text="Deny" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:project_multicloudConnectionString2 %>" 
            SelectCommand="SELECT [id], [gnme], [eid], [lid], [userkey] FROM [user1_reg] WHERE ([userkey] = @userkey)">
            <SelectParameters>
                <asp:Parameter DefaultValue="0" Name="userkey" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
            DataSourceID="SqlDataSource2">
            <Columns>
                <asp:BoundField DataField="uid" HeaderText="uid" SortExpression="uid" />
                <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                    ReadOnly="True" SortExpression="id" />
                <asp:HyperLinkField DataNavigateUrlFields="uid" 
                    DataNavigateUrlFormatString="newuserlist.aspx?uid={0}&amp;t=1" 
                    HeaderText="More" Text="Approve" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:phoenixConnectionString2 %>" 
            SelectCommand="SELECT [uid], [title], [id] FROM [cloud_data]">
        </asp:SqlDataSource>
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

