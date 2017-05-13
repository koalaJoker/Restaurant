<%--
  Created by IntelliJ IDEA.
  User: 袁媛
  Date: 2017/5/3
  Time: 22:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>支付成功</title>
    <!-- for-mobile-apps -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
    function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!-- //for-mobile-apps -->
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
    <!-- font-awesome icons -->
    <link href="css/font-awesome.css" rel="stylesheet">
    <!-- //font-awesome icons -->
    <!-- js -->
    <script src="js/jquery-1.11.1.min.js"></script>
    <!-- //js -->
    <link href='http://fonts.googleapis.com/css?family=Raleway:400,100,100italic,200,200italic,300,400italic,500,500italic,600,600italic,700,700italic,800,800italic,900,900italic' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
    <script src="js/bootstrap.min.js"></script>
    <link rel="stylesheet"  type="text/css" href="css/amazeui.css"/>
    <link href="css/admin.css" rel="stylesheet" type="text/css">
    <link href="css/demo.css" rel="stylesheet" type="text/css" />
    <link href="css/sustyle.css" rel="stylesheet" type="text/css" />
</head>
<body>

<%@ include file="header.jsp" %>

<div class="breadcrumbs">
    <div class="container">
        <ol class="breadcrumb breadcrumb1 animated wow slideInLeft" data-wow-delay=".5s">
            <li><a href="index.jsp"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>主页</a></li>
            <li class="active">成功</li>
        </ol>
    </div>
</div>

<div class="take-delivery">
<div class="status">
    <h2>您已成功付款</h2>
    <div class="successInfo">
        <ul>
            <li>付款金额<em>${totalPrice}</em></li>
            <div class="user-info">
                <p>收货人：${address.receiver}</p>
                <p>联系电话：${address.telephone}</p>
                <p>送餐地址：${address.address}</p>
            </div>
            请认真核对您的收货信息，如有错误请拨打电话：1234567
        </ul>
        <div class="option">
            <span class="info">您可以</span>
            <a href="getOrders.action" class="J_MakePoint">查看<span>我的订单</span></a>
        </div>
    </div>
</div>
</div>
<%--<div class="footer">--%>
    <%--<div class="container">--%>
        <%--<div class="w3_footer_grids">--%>
            <%--<div class="col-md-3 w3_footer_grid">--%>
                <%--<h3>Contact</h3>--%>

                <%--<ul class="address">--%>
                    <%--<li><i class="glyphicon glyphicon-map-marker" aria-hidden="true"></i>1234k Avenue, 4th block, <span>New York City.</span></li>--%>
                    <%--<li><i class="glyphicon glyphicon-envelope" aria-hidden="true"></i><a href="mailto:info@example.com">info@example.com</a></li>--%>
                    <%--<li><i class="glyphicon glyphicon-earphone" aria-hidden="true"></i>+1234 567 567</li>--%>
                <%--</ul>--%>
            <%--</div>--%>
            <%--<div class="col-md-3 w3_footer_grid">--%>
                <%--<h3>Information</h3>--%>
                <%--<ul class="info">--%>
                    <%--<li><i class="fa fa-arrow-right" aria-hidden="true"></i><a href="about.html">About Us</a></li>--%>
                    <%--<li><i class="fa fa-arrow-right" aria-hidden="true"></i><a href="contact.html">Contact Us</a></li>--%>
                    <%--<li><i class="fa fa-arrow-right" aria-hidden="true"></i><a href="short-codes.html">Short Codes</a></li>--%>
                    <%--<li><i class="fa fa-arrow-right" aria-hidden="true"></i><a href="faq.html">FAQ's</a></li>--%>
                    <%--<li><i class="fa fa-arrow-right" aria-hidden="true"></i><a href="products.html">Special Products</a></li>--%>
                <%--</ul>--%>
            <%--</div>--%>
            <%--<div class="col-md-3 w3_footer_grid">--%>
                <%--<h3>Category</h3>--%>
                <%--<ul class="info">--%>
                    <%--<li><i class="fa fa-arrow-right" aria-hidden="true"></i><a href="groceries.html">Groceries</a></li>--%>
                    <%--<li><i class="fa fa-arrow-right" aria-hidden="true"></i><a href="household.html">Household</a></li>--%>
                    <%--<li><i class="fa fa-arrow-right" aria-hidden="true"></i><a href="personalcare.html">Personal Care</a></li>--%>
                    <%--<li><i class="fa fa-arrow-right" aria-hidden="true"></i><a href="packagedfoods.html">Packaged Foods</a></li>--%>
                    <%--<li><i class="fa fa-arrow-right" aria-hidden="true"></i><a href="beverages.html">Beverages</a></li>--%>
                <%--</ul>--%>
            <%--</div>--%>
            <%--<div class="col-md-3 w3_footer_grid">--%>
                <%--<h3>Profile</h3>--%>
                <%--<ul class="info">--%>
                    <%--<li><i class="fa fa-arrow-right" aria-hidden="true"></i><a href="products.html">Store</a></li>--%>
                    <%--<li><i class="fa fa-arrow-right" aria-hidden="true"></i><a href="checkout.html">My Cart</a></li>--%>
                    <%--<li><i class="fa fa-arrow-right" aria-hidden="true"></i><a href="login.html">Login</a></li>--%>
                    <%--<li><i class="fa fa-arrow-right" aria-hidden="true"></i><a href="registered.html">Create Account</a></li>--%>
                <%--</ul>--%>


            <%--</div>--%>
            <%--<div class="clearfix"> </div>--%>
        <%--</div>--%>
    <%--</div>--%>

    <%--<div class="footer-copy">--%>

        <%--<div class="container">--%>
            <%--<p>Copyright &copy; 2017.Company name All rights reserved.<a target="_blank" href="http://www.htmlsucai.com/">&#72;&#84;&#77;&#76;&#32032;&#26448;&#32593;</a></p>--%>
        <%--</div>--%>
    <%--</div>--%>

<%--</div>--%>
<%--<div class="footer-botm1">--%>
    <%--<div class="container">--%>
        <%--<div class="&#72;&#84;&#77;&#76;&#32032;&#26448;&#32593;-foot">--%>
            <%--<ul>--%>
                <%--<li><a href="#" class="w3_agile_facebook"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>--%>
                <%--<li><a href="#" class="agile_twitter"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>--%>
                <%--<li><a href="#" class="w3_agile_dribble"><i class="fa fa-dribbble" aria-hidden="true"></i></a></li>--%>
                <%--<li><a href="#" class="w3_agile_vimeo"><i class="fa fa-vimeo" aria-hidden="true"></i></a></li>--%>
            <%--</ul>--%>
        <%--</div>--%>
        <%--<div class="payment-w3ls">--%>
            <%--<img src="images/card.png" alt=" " class="img-responsive">--%>
        <%--</div>--%>
        <%--<div class="clearfix"> </div>--%>
    <%--</div>--%>
</div>
</body>
</html>
