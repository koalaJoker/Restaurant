<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
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
            <li><a href="index.html"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>Home</a></li>
            <li class="active">Products</li>
        </ol>
    </div>
</div>
<!-- //breadcrumbs -->
<!--- products --->
<div class="products" >
    <div class="container"  id="scroll">
        <div class="col-md-4 products-left">
            <div class="categories">
                <h2>菜单</h2>
                <ul class="cate">
                    <c:if test="${menulList!=null}">
                        <c:forEach var="menu" items="${menulList}">
                            <c:forEach var="cuisine" items="${menu.detailList}">
                                <li><a href="selectMenu.action?parentCuisineId=${menu.detailId}&detailId=${cuisine.detailId}"><i class="fa fa-arrow-right" aria-hidden="true"></i>${cuisine.detailCuisineName}</a></li>
                                <ul>
                                  <c:forEach var="food" items="${cuisine.foodList}">
                                      <li><a href="selectFoodById.action?foodId=${food.foodId}"><i class="fa fa-arrow-right" aria-hidden="true"></i>${food.foodName}</a></li>
                                  </c:forEach>
                              </ul>
                            </c:forEach>
                        </c:forEach>
                    </c:if>
                </ul>
            </div>
        </div>
        <%--<div class="w3l_search" style="margin-right: 38px">--%>
            <%--<form action="#" method="post">--%>
                <%--<input type="search" name="Search" placeholder="Search for a Product..." required="">--%>
                <%--<button type="submit" class="btn btn-default search" aria-label="Left Align">--%>
                    <%--<i class="fa fa-search" aria-hidden="true"> </i>--%>
                <%--</button>--%>
                <%--<div class="clearfix"></div>--%>
            <%--</form>--%>
        <%--</div>--%>
        <div class="col-md-8 products-right">
            <div class="products-right-grid" >
                <div class="products-right-grids">
                    <div class="sorting">
                        <select id="country" onchange="change_country(this.value)" class="frm-field required sect" style="width: 180px;">
                            <option value="null"><i class="fa fa-arrow-right" aria-hidden="true"></i>Default sorting</option>
                            <option value="null"><i class="fa fa-arrow-right" aria-hidden="true"></i>Sort by popularity</option>
                            <option value="null"><i class="fa fa-arrow-right" aria-hidden="true"></i>Sort by average rating</option>
                            <option value="null"><i class="fa fa-arrow-right" aria-hidden="true"></i>Sort by price</option>
                        </select>
                    </div>
                    <div class="sorting-left">
                        <select id="country1" onchange="change_country(this.value)" class="frm-field required sect" >
                            <option value="null"><i class="fa fa-arrow-right" aria-hidden="true"></i>Item on page 9</option>
                            <option value="null"><i class="fa fa-arrow-right" aria-hidden="true"></i>Item on page 18</option>
                            <option value="null"><i class="fa fa-arrow-right" aria-hidden="true"></i>Item on page 32</option>
                            <option value="null"><i class="fa fa-arrow-right" aria-hidden="true"></i>All</option>
                        </select>
                    </div>
                    <div class="clearfix"> </div>
                </div>
            </div>
            <div class="agile_top_brands_grids">
            <c:if test="${foodData.data!=null}">
                <c:forEach var="food" items="${foodData.data}" varStatus="j">
                     <div class="col-md-4 top_brand_left" style="margin-top: 30px">
                         <div class="hover14 column">
                             <div class="agile_top_brand_left_grid">
                                 <div class="agile_top_brand_left_grid_pos">
                                     <img src="images/offer.png" alt=" " class="img-responsive">
                                 </div>
                                 <div class="agile_top_brand_left_grid1" >

                                         <div class="snipcart-item block">
                                             <div class="snipcart-thumb">
                                                 <a href="selectFoodById.action?foodId=${food.foodId}"><img height="190px" width="170px" title=" " alt=" " src="<%=request.getContextPath()%>/image.jsp?ppath=${food.foodImage}"></a>
                                                 <p>${food.foodName}</p>
                                                 <h4>$${food.discountPrice}<span>$${food.originalPrice}</span></h4>
                                             </div>
                                             <div class="snipcart-details top_brand_home_details">
                                                         <input type="submit" id="submit" value="Add to cart" onclick="addCart('cart${j.count}',${food.foodId})" class="button">
                                                        <div style="position: absolute; z-index:99;color:#fe9126"><span id="cart${j.count}"></span></div>
                                                 </form>
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
            <nav class="numbering">
                <ul class="pagination paging">
                    <li >
                    <c:if test="${foodData.page==1}">
                        <a  aria-label="Previous" style="background-color: #dfe8cc">
                            <span aria-hidden="true">&laquo;</span>
                        </a>
                    </c:if>
                    <c:if test="${foodData.page!=1}">
                        <a  href="selectMenu.action?parentCuisineId=${foodData.cuisineDetail.parentCuisineId}&detailId=${foodData.cuisineDetail.detailId}&&foodName=${foodData.cuisineDetail.foodName}&&currentPage=1" aria-label="Previous" >
                            <span aria-hidden="true">&laquo;</span>
                        </a>
                    </c:if>
                    </li>

                        <c:forEach var="i" begin="1" end="${foodData.count}">
                            <c:if test="${i==foodData.page}">
                                <li class="active"><a href="#">${i}</a></li>
                            </c:if>
                            <c:if test="${i!=foodData.page}">
                                <li ><a href="selectMenu.action?parentCuisineId=${foodData.cuisineDetail.parentCuisineId}&detailId=${foodData.cuisineDetail.detailId}&&foodName=${foodData.cuisineDetail.foodName}&&currentPage=${i}">${i}</a></li>
                            </c:if>
                        </c:forEach>
                    <li>
                        <c:if test="${foodData.page==foodData.count}">
                            <a aria-label="Next" style="background-color: #dfe8cc">
                                <span aria-hidden="true">&raquo;</span>
                            </a>
                        </c:if>
                        <c:if test="${foodData.page!=foodData.count}">
                            <a href="selectMenu.action?parentCuisineId=${foodData.cuisineDetail.parentCuisineId}&detailId=${foodData.cuisineDetail.detailId}&&foodName=${foodData.cuisineDetail.foodName}&&currentPage=${foodData.count}" aria-label="Next">
                                <span aria-hidden="true">&raquo;</span>
                            </a>
                        </c:if>
                    </li>
                </ul>
            </nav>
        <div class="clearfix"> </div>
    </div>
</div>
<!--- products --->
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
                    <li><i class="fa fa-arrow-right" aria-hidden="true"></i><a href="groceries.html">Groceries</a></li>
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
<!-- //main slider-banner -->
<script>
$(function(){
$("html, body").scrollTop(0).animate({scrollTop: $("#scroll").offset().top});
})
function addCart(id,foodId) {
    $("#"+id).text("已加入购物车!").show(300).delay(1000).hide(300);
    //加入购物车
    $.ajax({
        url:"addToCart.action",
        dataType:"json",
        type:"POST",
        data:
            {"foodId":foodId,"userId":1,quantity:1},
        success:function (datas) {

        }

    })

}
</script>
    <script type="text/javascript">
        $(function(){
            $("#dianji").click(function(){
                $("#disappare").show().delay(3000).hide(300);
            });
        })
    </script>
</body>
</html>
