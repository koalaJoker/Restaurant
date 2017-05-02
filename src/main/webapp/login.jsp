<%--
  Created by IntelliJ IDEA.
  User: 袁媛
  Date: 2017/3/21
  Time: 13:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Login</title>
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
    <!-- start-smoth-scrolling -->
    <script type="text/javascript" src="js/move-top.js"></script>
    <script type="text/javascript" src="js/easing.js"></script>
    <script type="text/javascript">
        jQuery(document).ready(function($) {
            $(".scroll").click(function(event){
                event.preventDefault();
                $('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
            });
        });
    </script>
    <%
        String phoneAndPass="";
        if(null != request.getCookies()){
            Cookie[] cookie = request.getCookies();
            for(int i = 0; i < cookie.length; i++)
            {
                if(cookie[i].getName().equals("phone#password"))
                {
                    phoneAndPass = cookie[i].getValue();
                    String[] aa=phoneAndPass.split(",");
                    request.setAttribute("phone",aa[0]);
                    request.setAttribute("password",aa[1]);
                    break;
                }
            }
        }
    %>
    <!-- start-smoth-scrolling -->
</head>

<body>
<!-- header -->
<%@ include file="header.jsp" %>
<!-- //navigation -->
<!-- breadcrumbs -->
<div class="breadcrumbs">
    <div class="container" id="scroll">
        <ol class="breadcrumb breadcrumb1 animated wow slideInLeft" data-wow-delay=".5s">
            <li><a href="index.html"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>Home</a></li>
            <li class="active">Login Page</li>
        </ol>
    </div>
</div>
<!-- //breadcrumbs -->
<!-- login -->
<div class="login">
    <div class="container">
        <h2>登 录</h2>

        <div class="login-form-grids animated wow slideInUp" data-wow-delay=".5s">
            <form action="/login.action" method="post">
                <input type="phone" id="phone" name="phone" value="${phone}"  placeholder="手机号" required=" " class="k-textbox">
                <input type="password"  id="password" name="password" value="${password}" placeholder="密码" required=" " >
                <div class="forgot">
                    <a href="#" style="color: #d3dbc1">忘记密码?</a>
                    <div class="pull-right" style="margin-right: 10px"> <input id="remberme" name="remberme" type="checkbox" onclick="rember()"/>记住密码</div>
                </div>
                <input type="submit" value="登  录">
                <span>${errorTip}</span>
            </form>
        </div>
        <h4>For New People</h4>
        <p><a href="registered.html">注 册</a> (Or) go back to <a href="index.html">主 页<span class="glyphicon glyphicon-menu-right" aria-hidden="true"></span></a></p>
    </div>
</div>
<!-- //login -->
<!-- //footer -->
<div class="footer">
    <div class="container">
        <div class="w3_footer_grids">
            <div class="col-md-3 w3_footer_grid">
                <h3>Contact</h3>

                <ul class="address">
                    <li><i class="glyphicon glyphicon-map-marker" aria-hidden="true"></i>1234k Avenue, 4th block, <span>New York City.</span></li>
                    <li><i class="glyphicon glyphicon-envelope" aria-hidden="true"></i><a href="mailto:info@example.com">info@example.com</a></li>
                    <li><i class="glyphicon glyphicon-earphone" aria-hidden="true"></i>+1234 567 567</li>
                </ul>
            </div>
            <div class="col-md-3 w3_footer_grid">
                <h3>Information</h3>
                <ul class="info">
                    <li><i class="fa fa-arrow-right" aria-hidden="true"></i><a href="about.html">About Us</a></li>
                    <li><i class="fa fa-arrow-right" aria-hidden="true"></i><a href="contact.html">Contact Us</a></li>
                    <li><i class="fa fa-arrow-right" aria-hidden="true"></i><a href="short-codes.html">Short Codes</a></li>
                    <li><i class="fa fa-arrow-right" aria-hidden="true"></i><a href="faq.html">FAQ's</a></li>
                    <li><i class="fa fa-arrow-right" aria-hidden="true"></i><a href="products.html">Special Products</a></li>
                </ul>
            </div>
            <div class="col-md-3 w3_footer_grid">
                <h3>Category</h3>
                <ul class="info">
                    <li><i class="fa fa-arrow-right" aria-hidden="true"></i><a href="food.html">Groceries</a></li>
                    <li><i class="fa fa-arrow-right" aria-hidden="true"></i><a href="household.html">Household</a></li>
                    <li><i class="fa fa-arrow-right" aria-hidden="true"></i><a href="personalcare.html">Personal Care</a></li>
                    <li><i class="fa fa-arrow-right" aria-hidden="true"></i><a href="packagedfoods.html">Packaged Foods</a></li>
                    <li><i class="fa fa-arrow-right" aria-hidden="true"></i><a href="beverages.html">Beverages</a></li>
                </ul>
            </div>
            <div class="col-md-3 w3_footer_grid">
                <h3>Profile</h3>
                <ul class="info">
                    <li><i class="fa fa-arrow-right" aria-hidden="true"></i><a href="products.html">Store</a></li>
                    <li><i class="fa fa-arrow-right" aria-hidden="true"></i><a href="checkout.html">My Cart</a></li>
                    <li><i class="fa fa-arrow-right" aria-hidden="true"></i><a href="login.html">Login</a></li>
                    <li><i class="fa fa-arrow-right" aria-hidden="true"></i><a href="registered.html">Create Account</a></li>
                </ul>


            </div>
            <div class="clearfix"> </div>
        </div>
    </div>

    <div class="footer-copy">

        <div class="container">
            <p>Copyright &copy; 2017.Company name All rights reserved.<a target="_blank" href="http://www.htmlsucai.com/">&#72;&#84;&#77;&#76;&#32032;&#26448;&#32593;</a></p>
        </div>
    </div>

</div>
<div class="footer-botm">
    <div class="container">
        <div class="&#72;&#84;&#77;&#76;&#32032;&#26448;&#32593;-foot">
            <ul>
                <li><a href="#" class="w3_agile_facebook"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                <li><a href="#" class="agile_twitter"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                <li><a href="#" class="w3_agile_dribble"><i class="fa fa-dribbble" aria-hidden="true"></i></a></li>
                <li><a href="#" class="w3_agile_vimeo"><i class="fa fa-vimeo" aria-hidden="true"></i></a></li>
            </ul>
        </div>
        <div class="payment-w3ls">
            <img src="images/card.png" alt=" " class="img-responsive">
        </div>
        <div class="clearfix"> </div>
    </div>
</div>
<!-- //footer -->
<!-- Bootstrap Core JavaScript -->
<script src="js/bootstrap.min.js"></script>
<!-- top-header and slider -->
<!-- here stars scrolling icon -->
<script type="text/javascript">
    $(document).ready(function() {
        /*
         var defaults = {
         containerID: 'toTop', // fading element id
         containerHoverID: 'toTopHover', // fading element hover id
         scrollSpeed: 1200,
         easingType: 'linear'
         };
         */

        $().UItoTop({ easingType: 'easeOutQuart' });

    });
</script>
<!-- //here ends scrolling icon -->

<!-- main slider-banner -->
<script src="js/skdslider.min.js"></script>
<link href="css/skdslider.css" rel="stylesheet">
<script type="text/javascript">
    jQuery(document).ready(function(){
        jQuery('#demo1').skdslider({'delay':5000, 'animationSpeed': 2000,'showNextPrev':true,'showPlayButton':true,'autoSlide':true,'animationType':'fading'});

        jQuery('#responsive').change(function(){
            $('#responsive_wrapper').width(jQuery(this).val());
        });

    });
</script>
<!-- //main slider-banner -->
<script>
    $(function(){
        $("html, body").scrollTop(0).animate({scrollTop: $("#scroll").offset().top});
    })
</script>
<script type="text/javascript">
    function rember() {
         if ($("input[type='checkbox']").is(':checked')){
             $("input[type='checkbox']").value(1);
         }else {
             $("input[type='checkbox']").value(0);
         }
    }

</script>
</body>
</html>
