<%--
  Created by IntelliJ IDEA.
  User: 袁媛
  Date: 2017/4/4
  Time: 18:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>菜品详情</title>
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
<!-- breadcrumbs -->
<div class="breadcrumbs">
    <div class="container">
        <ol class="breadcrumb breadcrumb1 animated wow slideInLeft" data-wow-delay=".5s">
            <li><a href="index.jsp"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>主页</a></li>
            <li class="active">${foods.foodName}</li>
        </ol>
    </div>
</div>
<!-- //breadcrumbs -->
<div class="products">
    <div class="container" >
        <div class="agileinfo_single" >
            <div class="col-md-4 agileinfo_single_left" >
                <img src="<%=request.getContextPath()%>/image.jsp?ppath=${foods.foodImage}"
                     alt=" " class="img-responsive" width="320" height="300">
            </div>
            <div class="col-md-8 agileinfo_single_right">
                <h2>${foods.foodName}</h2>
                <div class="rating1"><span>推荐指数:</span>
						<span class="starRating" >
              <c:forEach varStatus="i" begin="1" end="${foods.recommendRate}">
							<input id="rating5" type="radio" name="rating" >
							<label for="rating5">i</label>
              </c:forEach>
						</span>
                </div>
                <div class="w3agile_description">
                    <h4>介绍 :</h4>
                    <p>${foods.description}</p>
                </div>
                <div class="snipcart-item block">
                    <div class="snipcart-thumb agileinfo_single_right_snipcart">
                        <h4 class="m-sing">￥ ${foods.discountPrice}
                            <span>￥ ${foods.originalPrice}</span></h4>
                    </div>
                    <div class="snipcart-details agileinfo_single_right_details">
                       <input type="submit" name="submit" value="加入购物车"
                              onclick="addCart('${foods.foodId}','${userId}')" class="button">
                        <div style="position: absolute; z-index:99;color:#fe9126">
                            <span id="foodCart"></span></div>
                    </div>
                </div>
            </div>
            <div class="clearfix"> </div>
        </div>
    </div>
</div>
<!-- new -->
<div class="newproducts-w3agile">
    <div class="container">
        <h3>New offers</h3>
        <div class="agile_top_brands_grids">
            <div class="col-md-3 top_brand_left-1">
                <div class="hover14 column">
                    <div class="agile_top_brand_left_grid">
                        <div class="agile_top_brand_left_grid_pos">
                            <img src="images/offer.png" alt=" " class="img-responsive">
                        </div>
                        <div class="agile_top_brand_left_grid1">
                            <figure>
                                <div class="snipcart-item block">
                                    <div class="snipcart-thumb">
                                        <a href="products.html"><img title=" " alt=" " src="images/14.png"></a>
                                        <p>Fried-gram</p>
                                        <div class="stars">
                                            <i class="fa fa-star blue-star" aria-hidden="true"></i>
                                            <i class="fa fa-star blue-star" aria-hidden="true"></i>
                                            <i class="fa fa-star blue-star" aria-hidden="true"></i>
                                            <i class="fa fa-star blue-star" aria-hidden="true"></i>
                                            <i class="fa fa-star gray-star" aria-hidden="true"></i>
                                        </div>
                                        <h4>$35.99 <span>$55.00</span></h4>
                                    </div>
                                    <div class="snipcart-details top_brand_home_details">
                                        <form action="#" method="post">
                                            <fieldset>
                                                <input type="hidden" name="cmd" value="_cart">
                                                <input type="hidden" name="add" value="1">
                                                <input type="hidden" name="business" value=" ">
                                                <input type="hidden" name="item_name" value="Fortune Sunflower Oil">
                                                <input type="hidden" name="amount" value="35.99">
                                                <input type="hidden" name="discount_amount" value="1.00">
                                                <input type="hidden" name="currency_code" value="USD">
                                                <input type="hidden" name="return" value=" ">
                                                <input type="hidden" name="cancel_return" value=" ">
                                                <input type="submit" name="submit" value="Add to cart" class="button">
                                            </fieldset>
                                        </form>
                                    </div>
                                </div>
                            </figure>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-3 top_brand_left-1">
                <div class="hover14 column">
                    <div class="agile_top_brand_left_grid">
                        <div class="agile_top_brand_left_grid_pos">
                            <img src="images/offer.png" alt=" " class="img-responsive">
                        </div>
                        <div class="agile_top_brand_left_grid1">
                            <figure>
                                <div class="snipcart-item block">
                                    <div class="snipcart-thumb">
                                        <a href="products.html"><img title=" " alt=" " src="images/15.png"></a>
                                        <p>Navaratan-dal</p>
                                        <div class="stars">
                                            <i class="fa fa-star blue-star" aria-hidden="true"></i>
                                            <i class="fa fa-star blue-star" aria-hidden="true"></i>
                                            <i class="fa fa-star blue-star" aria-hidden="true"></i>
                                            <i class="fa fa-star blue-star" aria-hidden="true"></i>
                                            <i class="fa fa-star gray-star" aria-hidden="true"></i>
                                        </div>
                                        <h4>$30.99 <span>$45.00</span></h4>
                                    </div>
                                    <div class="snipcart-details top_brand_home_details">
                                        <form action="#" method="post">
                                            <fieldset>
                                                <input type="hidden" name="cmd" value="_cart">
                                                <input type="hidden" name="add" value="1">
                                                <input type="hidden" name="business" value=" ">
                                                <input type="hidden" name="item_name" value="basmati rise">
                                                <input type="hidden" name="amount" value="30.99">
                                                <input type="hidden" name="discount_amount" value="1.00">
                                                <input type="hidden" name="currency_code" value="USD">
                                                <input type="hidden" name="return" value=" ">
                                                <input type="hidden" name="cancel_return" value=" ">
                                                <input type="submit" name="submit" value="Add to cart" class="button">
                                            </fieldset>
                                        </form>
                                    </div>
                                </div>
                            </figure>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-3 top_brand_left-1">
                <div class="hover14 column">
                    <div class="agile_top_brand_left_grid">
                        <div class="agile_top_brand_left_grid_pos">
                            <img src="images/offer.png" alt=" " class="img-responsive">
                        </div>
                        <div class="agile_top_brand_left_grid_pos">
                            <img src="images/offer.png" alt=" " class="img-responsive">
                        </div>
                        <div class="agile_top_brand_left_grid1">
                            <figure>
                                <div class="snipcart-item block">
                                    <div class="snipcart-thumb">
                                        <a href="products.html"><img src="images/16.png" alt=" " class="img-responsive"></a>
                                        <p>White-peasmatar</p>
                                        <div class="stars">
                                            <i class="fa fa-star blue-star" aria-hidden="true"></i>
                                            <i class="fa fa-star blue-star" aria-hidden="true"></i>
                                            <i class="fa fa-star blue-star" aria-hidden="true"></i>
                                            <i class="fa fa-star blue-star" aria-hidden="true"></i>
                                            <i class="fa fa-star gray-star" aria-hidden="true"></i>
                                        </div>
                                        <h4>$80.99 <span>$105.00</span></h4>
                                    </div>
                                    <div class="snipcart-details top_brand_home_details">
                                        <form action="#" method="post">
                                            <fieldset>
                                                <input type="hidden" name="cmd" value="_cart">
                                                <input type="hidden" name="add" value="1">
                                                <input type="hidden" name="business" value=" ">
                                                <input type="hidden" name="item_name" value="Pepsi soft drink">
                                                <input type="hidden" name="amount" value="80.00">
                                                <input type="hidden" name="discount_amount" value="1.00">
                                                <input type="hidden" name="currency_code" value="USD">
                                                <input type="hidden" name="return" value=" ">
                                                <input type="hidden" name="cancel_return" value=" ">
                                                <input type="submit" name="submit" value="Add to cart" class="button">
                                            </fieldset>
                                        </form>
                                    </div>
                                </div>
                            </figure>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-3 top_brand_left-1">
                <div class="hover14 column">
                    <div class="agile_top_brand_left_grid">
                        <div class="agile_top_brand_left_grid_pos">
                            <img src="images/offer.png" alt=" " class="img-responsive">
                        </div>
                        <div class="agile_top_brand_left_grid1">
                            <figure>
                                <div class="snipcart-item block">
                                    <div class="snipcart-thumb">
                                        <a href="products.html"><img title=" " alt=" " src="images/17.png"></a>
                                        <p>Channa-dal</p>
                                        <div class="stars">
                                            <i class="fa fa-star blue-star" aria-hidden="true"></i>
                                            <i class="fa fa-star blue-star" aria-hidden="true"></i>
                                            <i class="fa fa-star blue-star" aria-hidden="true"></i>
                                            <i class="fa fa-star blue-star" aria-hidden="true"></i>
                                            <i class="fa fa-star gray-star" aria-hidden="true"></i>
                                        </div>
                                        <h4>$35.99 <span>$55.00</span></h4>
                                    </div>
                                    <div class="snipcart-details top_brand_home_details">
                                        <form action="#" method="post">
                                            <fieldset>
                                                <input type="hidden" name="cmd" value="_cart">
                                                <input type="hidden" name="add" value="1">
                                                <input type="hidden" name="business" value=" ">
                                                <input type="hidden" name="item_name" value="Fortune Sunflower Oil">
                                                <input type="hidden" name="amount" value="35.99">
                                                <input type="hidden" name="discount_amount" value="1.00">
                                                <input type="hidden" name="currency_code" value="USD">
                                                <input type="hidden" name="return" value=" ">
                                                <input type="hidden" name="cancel_return" value=" ">
                                                <input type="submit" name="submit" value="Add to cart" class="button">
                                            </fieldset>
                                        </form>
                                    </div>
                                </div>
                            </figure>
                        </div>
                    </div>
                </div>
            </div>
            <div class="clearfix"> </div>
        </div>
    </div>
</div>
<!-- //new -->
<!-- //footer -->
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
    function addCart(foodId,userId) {
        if(userId!=''){
            $("#foodCart").text("已加入购物车!").show(300).delay(1000).hide(300);
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
