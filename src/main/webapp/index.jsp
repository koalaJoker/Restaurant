<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>主页面</title>
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
    <link href="css/demo.css" rel="stylesheet" type="text/css" />
    <link href="css/personal.css" rel="stylesheet" type="text/css">
    <script type="text/javascript">
        jQuery(document).ready(function($) {
            $(".scroll").click(function(event){
                event.preventDefault();
                $('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
            });
        });
    </script>
    <!-- start-smoth-scrolling -->
</head>

<body>
<!-- header -->

<%@ include file="header.jsp" %>
<!-- //navigation -->
<!-- main-slider -->
<ul id="demo1">
    <li>
        <img src="images/eat2.jpg" alt="" />
        <!--Slider Description example-->
        <div class="slide-desc">
            <h3>温 暖 你 的 是 服 务，感 动 你 的 是 美 食</h3>
        </div>
    </li>
    <li>
        <img src="images/eat1.jpg" alt="" />
        <div class="slide-desc">
            <h3>你 是 生 命 中 醉 美 的 遇 见</h3>
        </div>
    </li>

    <li>
        <img src="images/eat3.jpg" alt="" />
        <div class="slide-desc">
            <h3>爱 在 这 里，爱 在 四 叶 草</h3>
        </div>
    </li>
</ul>
<!-- //main-slider -->
<!-- //top-header and slider -->
<!-- top-brands -->
<div class="top-brands">
    <div class="container">
        <h2>推&nbsp;&nbsp;&nbsp;&nbsp;荐</h2>
        <div class="grid_3 grid_5">
            <div class="bs-example bs-example-tabs" role="tabpanel" data-example-id="togglable-tabs">
                <ul id="myTab" class="nav nav-tabs" role="tablist">
                    <li role="presentation" class="active"><a href="#expeditions" id="expeditions-tab" role="tab" data-toggle="tab" aria-controls="expeditions" aria-expanded="true">销 量 榜</a></li>
                    <li role="presentation"><a href="#tours" role="tab" id="tours-tab" data-toggle="tab" aria-controls="tours">特 价 菜 品</a></li>
                </ul>
                <div id="myTabContent" class="tab-content">
                    <div role="tabpanel" class="tab-pane fade in active" id="expeditions" aria-labelledby="expeditions-tab">
                        <div class="agile-tp">
                            <h5>--- 四 叶 草 餐 厅</h5>
                            <p class="w3l-ad">温暖你的是服务，感动你的是美食。我们期待给你不一样的惊喜！</p>
                        </div>
                        <div class="agile_top_brands_grids">

                            <c:if test="${saleVolumefoodsList!=null}">
                                <c:forEach items="${saleVolumefoodsList}" var="food" varStatus="status">
                            <div class="col-md-4 top_brand_left" style="margin-top: 30px">
                                <div class="hover14 column">
                                    <div class="agile_top_brand_left_grid">
                                        <div class="agile_top_brand_left_grid_pos">
                                            <img src="images/offer.png" alt=" " class="img-responsive" />
                                        </div>
                                        <div class="agile_top_brand_left_grid1">

                                                <div class="snipcart-item block" >
                                                    <div class="snipcart-thumb">
                                                        <a href="selectFoodById.action?foodId=${food.foodId}"><img height="190px" width="170px" title=" " alt=" " src="<%=request.getContextPath()%>/image.jsp?ppath=${food.foodImage}" /></a>
                                                        <p>${food.foodName}</p>
                                                        <div class="stars">
                                                     <c:forEach varStatus="i" begin="1" end="${food.recommendRate}">
                                                            <i class="fa fa-star blue-star" aria-hidden="true"></i>
                                                      </c:forEach>
                                                            <c:forEach varStatus="i" begin="1" end="${5-food.recommendRate}">
                                                                <i class="fa fa-star gray-star" aria-hidden="true"></i>
                                                            </c:forEach>
                                                        </div>
                                                        <h4>￥ ${food.discountPrice}<span>￥ ${food.originalPrice}</span></h4>
                                                    </div>
                                                    <div class="snipcart-details top_brand_home_details">
                                                                <input type="submit" name="submit" value="加入购物车" class="button" onclick="addCart('cart${food.foodId}','${food.foodId}','${userId}')"/>
                                                                <div style="position: absolute; z-index:99;color:#fe9126"><span id="cart${food.foodId}"></span></div>
                                                    </div>
                                                </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                                    <c:if test="${status.count==saleVolumefoodsList.size()}">
                                        <div class="clearfix"></div>
                                    </c:if>
                            </c:forEach>
                            </c:if>
                        </div>
                    </div>
                    <div role="tabpanel" class="tab-pane fade" id="tours" aria-labelledby="tours-tab">
                        <div class="agile-tp">
                            <h5>--- 四 叶 草 餐 厅</h5>
                            <p class="w3l-ad">温暖你的是服务，感动你的是美食。我们期待给你不一样的惊喜！</p>
                        </div>
                        <div class="agile_top_brands_grids">
                        <c:if test="${salePriceList!=null}">
                        <c:forEach var="food" items="${salePriceList}" varStatus="j">
                            <div class="col-md-4 top_brand_left"  style="margin-top: 30px">
                                <div class="hover14 column">
                                    <div class="agile_top_brand_left_grid">
                                        <div class="agile_top_brand_left_grid_pos">
                                            <img src="images/offer.png" alt=" " class="img-responsive" />
                                        </div>
                                        <div class="agile_top_brand_left_grid1">

                                                <div class="snipcart-item block" >
                                                    <div class="snipcart-thumb">
                                                        <a  href="selectFoodById.action?foodId=${food.foodId}"><img height="190px" width="170px" title=" " alt=" " src="<%=request.getContextPath()%>/image.jsp?ppath=${food.foodImage}"/></a>
                                                        <p>${food.foodName}</p>
                                                        <div class="stars">
                                                    <c:forEach varStatus="i" begin="1" end="${food.recommendRate}">
                                                        <i class="fa fa-star blue-star" aria-hidden="true"></i>
                                                    </c:forEach>
                                                    <c:forEach varStatus="i" begin="1" end="${5-food.recommendRate}">
                                                        <i class="fa fa-star gray-star" aria-hidden="true"></i>
                                                    </c:forEach>
                                                        </div>
                                                        <h4>￥${food.discountPrice} <span>￥${food.originalPrice}</span></h4>
                                                    </div>
                                                    <div class="snipcart-details top_brand_home_details">

                                                                <input type="submit" name="submit" value="加入购物车" class="button" onclick="addCart('saleCart${j.count}','${food.foodId}','${userId}')"/>
                                                          <div style="position: absolute; z-index:99;color:#fe9126"><span id="saleCart${j.count}"></span></div>
                                                    </div>
                                                </div>

                                        </div>
                                    </div>
                                </div>
                            </div>
                            <c:if test="${j.count==foodData.data.size()}">
                                <div class="clearfix"></div>
                            </c:if>
                        </c:forEach>
                        </c:if>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- //top-brands -->
<!-- Carousel
   ================================================== -->

<!--banner-bottom-->
<div class="ban-bottom-w3l">
    <div class="container">
        <div class="col-md-6 ban-bottom3">
            <div class="ban-top">
                <img src="images/res1.jpg" class="img-responsive" alt=""/>

            </div>
            <div class="ban-img">
                <div class=" ban-bottom1">
                    <div class="ban-top">
                        <img src="images/res3.jpg" class="img-responsive" alt=""/>

                    </div>
                </div>
                <div class="ban-bottom2">
                    <div class="ban-top">
                        <img src="images/res4.jpg" class="img-responsive" alt=""/>

                    </div>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
        <div class="col-md-6 ban-bottom">
            <div class="ban-top">
                <img src="images/res2.jpg"  class="img-responsive" alt=""/>

                <img src="images/res2.jpg"  class="img-responsive" alt=""/>
            </div>
        </div>

        <div class="clearfix"></div>
    </div>
</div>
<!--banner-bottom-->
<!--brands-->

<!-- //new -->
<!-- //footer -->
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
<%--<div class="footer-botm">--%>
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
<%--</div>--%>
<div class="footer">
    <div class="footer-hd ">
        <p>
            &nbsp;&nbsp;&nbsp;四叶草餐厅，给你做好的选择。
        </p>
    </div>
    <div class="footer-bd ">
        <p>
            <a href="# ">关于四叶草</a>
            <a href="# ">合作伙伴</a>
            <a href="# ">联系我们</a>
            <em>(c) 2015-2025 yuanyuan.com 版权所有</em>
        </p>
    </div>
</div>
<!-- //footer -->
<!-- Bootstrap Core JavaScript -->
<script src="js/bootstrap.min.js"></script>

<!-- top-header and slider -->
<!-- here stars scrolling icon -->
<script type="text/javascript">
    $(document).ready(function() {


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
<script>
    function addCart(id,foodId,userId) {
        if(userId!=''){
            $("#"+id).text("已加入购物车!").show(300).delay(1000).hide(300);
            //加入购物车
            $.ajax({
                url:"addToCart.action",
                dataType:"json",
                type:"POST",
                data:
                    {"foodId":foodId,"userId":userId,quantity:1},
            })
        }else{
            location.href="login.jsp";
        }
    }
</script>
</body>
</html>
