<%--
  Created by IntelliJ IDEA.
  User: 袁媛
  Date: 2017/3/23
  Time: 23:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <script type="text/javascript">
        <c:if test="${cuisineDetailList==null}">
        <jsp:include page="selectCuisineDetail.action"></jsp:include>

        </c:if>
    </script>
</head>
<body>
<div class="agileits_header">
    <div class="container">
        <div class="w3l_offers">
            <p><a href="products.html"></a></p>
        </div>
        <div class="agile-login">
            <ul>
                <li><a href="register.jsp">注 册</a></li>
                <c:if test="${userId==null}">
                <li><a href="login.jsp">登 录</a></li>
                </c:if>
                <c:if test="${userId!=null}">
                    <li><a href="logOut.action">退 出 登 录</a></li>
                </c:if>

                <c:if test="${userId!=null}">
                    <li></li> <li></li>
                    <li><a>欢迎您！&nbsp;&nbsp;${userName}</a></li>
                </c:if>
            </ul>
        </div>
        <div class="product_list_header">
            <form action="#" method="post" class="last">
                <input type="hidden" name="cmd" value="_cart">
                <input type="hidden" name="display" value="1">
                <a href="/queryCart.action" style="color: white">购物车<i class="fa fa-cart-arrow-down" aria-hidden="true"></i></a>

            </form>
        </div>
        <div class="clearfix"> </div>
    </div>
</div>

<div class="logo_products">
    <div class="container">
        <div class="w3ls_logo_products_left1">
            <ul class="phone_email">
                <li><i class="fa fa-phone" aria-hidden="true"></i>在线电话 : (+86) 1234 567</li>

            </ul>
        </div>
        <div class="w3ls_logo_products_left">
            <h1><a href="index.jsp">四叶草餐厅</a></h1>
        </div>
        <div class="w3l_search">
            <form action="#" method="post">
                <input type="search" name="Search" placeholder="搜索菜品..." required="">
                <button type="submit" class="btn btn-default search" aria-label="Left Align">
                    <i class="fa fa-search" aria-hidden="true"> </i>
                </button>
                <div class="clearfix"></div>
            </form>
        </div>

        <div class="clearfix"> </div>
    </div>
</div>
<!-- //header -->
<!-- navigation -->
<div class="navigation-agileits">
    <div class="container">
        <nav class="navbar navbar-default">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header nav_2">
                <button type="button" class="navbar-toggle collapsed navbar-toggle1" data-toggle="collapse" data-target="#bs-megadropdown-tabs">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
            </div>
            <div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
                <ul class="nav navbar-nav">
                    <li class="active"><a href="index.jsp" class="act">主页</a></li>

                    <c:if test="${cuisineDetailList!=null}">
                        <c:forEach var="cuisine" items="${cuisineDetailList}">
                            <c:if test="${cuisine.detailList.size()!=0}">
                                <li class="dropdown">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">${cuisine.detailCuisineName}<b class="caret"></b></a>
                                    <ul class="dropdown-menu multi-column columns-3">
                                        <div class="row">
                                            <div class="multi-gd-img">
                                                <ul class="multi-column-dropdown">
                                                    <h6>All ${cuisine.detailCuisineName}</h6>
                                                    <c:forEach var="list" items="${cuisine.detailList}">
                                                        <li><a href='selectMenu.action?parentCuisineId=${list.detailId}&detailId=${list.detailId}'>${list.detailCuisineName}</a></li>
                                                    </c:forEach>
                                                </ul>
                                            </div>
                                        </div>
                                    </ul>
                                </li>
                            </c:if>
                            <c:if test="${cuisine.detailList.size()==0}">
                                <li><a href="selectMenu.action?detailId=${cuisine.detailId}">${cuisine.detailCuisineName}</a></li>
                            </c:if>
                        </c:forEach>
                    </c:if>
                    <%--<li><a href="gourmet.html">Gourmet</a></li>--%>
                    <%--<li><a href="offers.html">Offers</a></li>--%>
                    <li><a href="getOrders.action">我的订单</a></li>
                </ul>
            </div>
        </nav>
    </div>
</div>
</body>
</html>