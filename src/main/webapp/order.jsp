<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>我的订单</title>

    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />

    <script src="js/jquery-1.11.1.min.js"></script>
    <!-- //js -->
    <link href='http://fonts.googleapis.com/css?family=Raleway:400,100,100italic,200,200italic,300,400italic,500,500italic,600,600italic,700,700italic,800,800italic,900,900italic' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
    <!-- start-smoth-scrolling -->
    <script type="text/javascript" src="js/move-top.js"></script>
    <script type="text/javascript" src="js/easing.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <link href="css/admin.css" rel="stylesheet" type="text/css">
    <link href="css/amazeui.css" rel="stylesheet" type="text/css">
    <link href="css/personal.css" rel="stylesheet" type="text/css">
    <link href="css/orstyle.css" rel="stylesheet" type="text/css">
    <link href="css/demo.css" rel="stylesheet" type="text/css" />
    <%--<script src="AmazeUI-2.4.2/assets/js/jquery.min.js"></script>--%>
    <link href="css/font-awesome.css" rel="stylesheet">
    <script src="js/amazeui.js"></script>
</head>

<body>
<!-- header -->
<%@ include file="header.jsp" %>
<div class="col-main1" style="margin-right: 100px;margin-left: 100px" >
    <div class="main-wrap1">

        <div class="user-order1">

            <!--标题 -->
            <div class="am-cf am-padding">
                <div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">订单管理</strong> / <small>Order</small></div>
            </div>
            <hr/>

            <div class="am-tabs am-tabs-d2 am-margin" data-am-tabs>

                <ul class="am-avg-sm-5 am-tabs-nav am-nav am-nav-tabs">
                    <li class="am-active"><a href="#tab1">所有订单</a></li>
                    <li><a href="#tab3">待发货</a></li>
                    <li><a href="#tab4">待收货</a></li>
                    <%--<li><a href="#tab5">待评价</a></li>--%>
                </ul>

                <div class="am-tabs-bd">
                    <div class="am-tab-panel am-fade am-in am-active" id="tab1">
                        <div class="order-top">
                            <div class="th th-item">
                                <td class="td-inner">商品</td>
                            </div>
                            <div class="th th-price">
                                <td class="td-inner">单价</td>
                            </div>
                            <div class="th th-number">
                                <td class="td-inner">数量</td>
                            </div>
                            <%--<div class="th th-operation">--%>
                                <%--<td class="td-inner">&nbsp;&nbsp;&nbsp;&nbsp;</td>--%>
                            <%--</div>--%>
                            <div class="th th-amount">
                                <td class="td-inner">合计</td>
                            </div>
                            <div class="th th-status">
                                <td class="td-inner">交易状态</td>
                            </div>
                            <div class="th th-change">
                                <td class="td-inner">交易操作</td>
                            </div>
                        </div>

                        <div class="order-main">
                            <div class="order-list">
                               <c:forEach items="${orders}" var="order">
                                <!--交易成功-->
                                   <c:if test="${order.status=='交易成功'}">
                                    <div class="order-status5">
                                        <div class="order-title">
                                            <div class="dd-num">订单编号：<a href="javascript:;">${order.serialNum}</a></div>
                                            <span>成交时间：<fmt:formatDate value="${order.creationDate}" pattern="yyyy-MM-dd hh:mm:ss"/></span>
                                        </div>
                                        <div class="order-content">
                                            <div class="order-left">
                                                <c:forEach items="${order.details}" var="detail">
                                                <ul class="item-list">
                                                    <li class="td td-item">
                                                        <div class="item-pic">
                                                            <a href="#" class="J_MakePoint">
                                                                <img height="80px" src="<%=request.getContextPath()%>/image.jsp?ppath=${detail.foods.foodImage}"  class="itempic J_ItemImg">
                                                            </a>
                                                        </div>
                                                        <div class="item-info">
                                                            <div class="item-basic-info" style="margin-top: 30px">
                                                                <a href="#">
                                                                    <p>${detail.foods.foodName}</p>
                                                                </a>
                                                            </div>
                                                        </div>
                                                    </li>
                                                    <li class="td td-price">
                                                        <div class="item-price">
                                                                ${detail.foods.discountPrice}
                                                        </div>
                                                    </li>
                                                    <li class="td td-number">
                                                        <div class="item-number">
                                                            <span>×</span>${detail.count}
                                                        </div>
                                                    </li>
                                                    <li class="td td-operation">
                                                        <div class="item-operation">

                                                        </div>
                                                    </li>
                                                </ul>
                                                </c:forEach>
                                            </div>
                                            <div class="order-right" >
                                                <li class="td td-amount">
                                                    <div class="item-amount">
                                                        合计：${order.totalPrice}
                                                    </div>
                                                </li>
                                                <div class="move-right">
                                                    <li class="td td-status">
                                                        <div class="item-status">
                                                            <p class="Mystatus">交易成功</p>
                                                            <%--<p class="order-info"><a href="orderinfo.html">订单详情</a></p>--%>
                                                            <%--<p class="order-info"><a href="logistics.html">查看物流</a></p>--%>
                                                        </div>
                                                    </li>
                                                    <li class="td td-change">
                                                        <div class="am-btn am-btn-danger anniu">
                                                            删除订单</div>
                                                    </li>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </c:if>
                                   <!--待发货-->
                                   <c:if test="${order.status=='待发货'}">
                                   <div class="order-status2">
                                           <div class="order-title">
                                               <div class="dd-num">订单编号：<a href="javascript:;">${order.serialNum}</a></div>
                                               <span>成交时间：<fmt:formatDate value="${order.creationDate}" pattern="yyyy-MM-dd hh:mm:ss"/></span>
                                           </div>
                                           <div class="order-content">
                                               <div class="order-left">
                                                   <c:forEach items="${order.details}" var="detail">
                                                       <ul class="item-list">
                                                           <li class="td td-item">
                                                               <div class="item-pic">
                                                                   <a href="#" class="J_MakePoint">
                                                                       <img height="80px" src="<%=request.getContextPath()%>/image.jsp?ppath=${detail.foods.foodImage}"  class="itempic J_ItemImg">
                                                                   </a>
                                                               </div>
                                                               <div class="item-info">
                                                                   <div class="item-basic-info" style="margin-top: 30px">
                                                                       <a href="#">
                                                                           <p>${detail.foods.foodName}</p>
                                                                       </a>
                                                                   </div>
                                                               </div>
                                                           </li>
                                                           <li class="td td-price">
                                                               <div class="item-price">
                                                                       ${detail.foods.discountPrice}
                                                               </div>
                                                           </li>
                                                           <li class="td td-number">
                                                               <div class="item-number">
                                                                   <span>×</span>${detail.count}
                                                               </div>
                                                           </li>
                                                           <li class="td td-operation">
                                                               <div class="item-operation">
                                                                   <a href="refund.html"></a>
                                                               </div>
                                                           </li>
                                                       </ul>
                                                   </c:forEach>
                                               </div>
                                               <div class="order-right">
                                                   <li class="td td-amount">
                                                       <div class="item-amount">
                                                           合计：${order.totalPrice}
                                                       </div>
                                                   </li>
                                                   <div class="move-right">
                                                       <li class="td td-status">
                                                           <div class="item-status">
                                                               <p class="Mystatus">买家已付款</p>
                                                               <%--<p class="order-info"><a href="orderinfo.html">订单详情</a></p>--%>
                                                           </div>
                                                       </li>
                                                       <li class="td td-change">
                                                           <div class="am-btn am-btn-danger anniu">
                                                               删除订单</div>
                                                       </li>
                                                   </div>
                                               </div>
                                           </div>
                                       </div>
                                   </c:if>
                                   <!--不同状态订单-->
                                   <c:if test="${order.status=='待收货'}">
                                     <div class="order-status3">
                                           <div class="order-title">
                                               <div class="dd-num">订单编号：<a href="javascript:;">${order.serialNum}</a></div>
                                               <span>成交时间：<fmt:formatDate value="${order.creationDate}" pattern="yyyy-MM-dd hh:mm:ss"/></span>
                                           </div>
                                           <div class="order-content">
                                               <div class="order-left">
                                                   <c:forEach items="${order.details}" var="detail">
                                                       <ul class="item-list">
                                                           <li class="td td-item">
                                                               <div class="item-pic">
                                                                   <a href="#" class="J_MakePoint">
                                                                       <img height="80px" src="<%=request.getContextPath()%>/image.jsp?ppath=${detail.foods.foodImage}" class="itempic J_ItemImg">
                                                                   </a>
                                                               </div>
                                                               <div class="item-info">
                                                                   <div class="item-basic-info" style="margin-top: 30px">
                                                                       <a href="#">
                                                                           <p>${detail.foods.foodName}</p>
                                                                       </a>
                                                                   </div>
                                                               </div>
                                                           </li>
                                                           <li class="td td-price">
                                                               <div class="item-price">
                                                                       ${detail.foods.discountPrice}
                                                               </div>
                                                           </li>
                                                           <li class="td td-number">
                                                               <div class="item-number">
                                                                   <span>×</span>${detail.count}
                                                               </div>
                                                           </li>
                                                           <%--<li class="td td-operation">--%>
                                                               <%--<div class="item-operation">--%>
                                                                   <%--<a href="refund.html">退款/退货</a>--%>
                                                               <%--</div>--%>
                                                           <%--</li>--%>
                                                       </ul>
                                                   </c:forEach>
                                               </div>
                                               <div class="order-right">
                                                   <li class="td td-amount">
                                                       <div class="item-amount">
                                                           合计：${order.totalPrice}
                                                       </div>
                                                   </li>
                                                   <div class="move-right">
                                                       <li class="td td-status">
                                                           <div class="item-status">
                                                               <p class="Mystatus">卖家已发货</p>
                                                               <%--<p class="order-info"><a href="orderinfo.html">订单详情</a></p>--%>
                                                               <%--<p class="order-info"><a href="logistics.html">查看物流</a></p>--%>
                                                               <%--<p class="order-info"><a href="#">延长收货</a></p>--%>
                                                           </div>
                                                       </li>
                                                       <li class="td td-change">
                                                           <div class="am-btn am-btn-danger anniu">
                                                               删除订单</div>
                                                       </li>
                                                   </div>
                                               </div>
                                           </div>
                                       </div>
                                   </c:if>
                                   <%--<c:if test="${order.status=='待评价'}">--%>
                                       <%--<!--不同状态的订单	-->--%>
                                       <%--<div class="order-status4">--%>
                                           <%--<div class="order-title">--%>
                                               <%--<div class="dd-num">订单编号：<a href="javascript:;">${order.serialNum}</a></div>--%>
                                               <%--<span>成交时间：<fmt:formatDate value="${order.creationDate}" pattern="yyyy-MM-dd hh:mm:ss"/></span>--%>

                                           <%--</div>--%>
                                           <%--<div class="order-content">--%>
                                               <%--<div class="order-left">--%>
                                                   <%--<c:forEach items="${order.details}" var="detail">--%>
                                                   <%--<ul class="item-list">--%>
                                                       <%--<li class="td td-item">--%>
                                                           <%--<div class="item-pic">--%>
                                                               <%--<a href="#" class="J_MakePoint">--%>
                                                                   <%--<img height="80px" src="<%=request.getContextPath()%>/image.jsp?ppath=${detail.foods.foodImage}" class="itempic J_ItemImg">--%>
                                                               <%--</a>--%>
                                                           <%--</div>--%>
                                                           <%--<div class="item-info">--%>
                                                               <%--<div class="item-basic-info">--%>
                                                                   <%--<a href="#">--%>
                                                                       <%--<p>${detail.foods.foodName}</p>--%>
                                                                   <%--</a>--%>
                                                               <%--</div>--%>
                                                           <%--</div>--%>
                                                       <%--</li>--%>
                                                       <%--<li class="td td-price">--%>
                                                           <%--<div class="item-price">--%>
                                                                   <%--${detail.foods.discountPrice}--%>
                                                           <%--</div>--%>
                                                       <%--</li>--%>
                                                       <%--<li class="td td-number">--%>
                                                           <%--<div class="item-number">--%>
                                                               <%--<span>×</span>${detail.count}--%>
                                                           <%--</div>--%>
                                                       <%--</li>--%>
                                                       <%--&lt;%&ndash;<li class="td td-operation">&ndash;%&gt;--%>
                                                           <%--&lt;%&ndash;<div class="item-operation">&ndash;%&gt;--%>
                                                               <%--&lt;%&ndash;<a href="refund.html">退款/退货</a>&ndash;%&gt;--%>
                                                           <%--&lt;%&ndash;</div>&ndash;%&gt;--%>
                                                       <%--&lt;%&ndash;</li>&ndash;%&gt;--%>
                                                   <%--</ul>--%>
                                                   <%--</c:forEach>--%>
                                               <%--</div>--%>
                                               <%--<div class="order-right">--%>
                                                   <%--<li class="td td-amount">--%>
                                                       <%--<div class="item-amount">--%>
                                                           <%--合计：${order.totalPrice}--%>
                                                       <%--</div>--%>
                                                   <%--</li>--%>
                                                   <%--<div class="move-right">--%>
                                                       <%--<li class="td td-status">--%>
                                                           <%--<div class="item-status">--%>
                                                               <%--<p class="Mystatus">交易成功</p>--%>
                                                               <%--<p class="order-info"><a href="orderinfo.html">订单详情</a></p>--%>
                                                               <%--<p class="order-info"><a href="logistics.html">查看物流</a></p>--%>
                                                           <%--</div>--%>
                                                       <%--</li>--%>
                                                       <%--<li class="td td-change">--%>
                                                           <%--<a href="commentlist.html">--%>
                                                               <%--<div class="am-btn am-btn-danger anniu">--%>
                                                                   <%--评价商品</div>--%>
                                                           <%--</a>--%>
                                                       <%--</li>--%>
                                                   <%--</div>--%>
                                               <%--</div>--%>
                                           <%--</div>--%>
                                       <%--</div>--%>
                                   <%--</c:if>--%>
                               </c:forEach>
                            </div>
                        </div>

                    </div>

                    <div class="am-tab-panel am-fade" id="tab3">
                        <div class="order-top">
                            <div class="th th-item">
                                <td class="td-inner">商品</td>
                            </div>
                            <div class="th th-price">
                                <td class="td-inner">单价</td>
                            </div>
                            <div class="th th-number">
                                <td class="td-inner">数量</td>
                            </div>
                            <%--<div class="th th-operation">--%>
                                <%--<td class="td-inner">商品操作</td>--%>
                            <%--</div>--%>
                            <div class="th th-amount">
                                <td class="td-inner">合计</td>
                            </div>
                            <div class="th th-status">
                                <td class="td-inner">交易状态</td>
                            </div>
                            <div class="th th-change">
                                <td class="td-inner">交易操作</td>
                            </div>
                        </div>

                        <div class="order-main">
                            <div class="order-list">
                                   <c:forEach items="${orders}" var="order">
                                <!--待发货-->
                                <c:if test="${order.status=='待发货'}">
                                    <div class="order-status2">
                                        <div class="order-title">
                                            <div class="dd-num">订单编号：<a href="javascript:;">${order.serialNum}</a></div>
                                            <span>成交时间：<fmt:formatDate value="${order.creationDate}" pattern="yyyy-MM-dd hh:mm:ss"/></span>
                                        </div>
                                        <div class="order-content">
                                            <div class="order-left">
                                                <c:forEach items="${order.details}" var="detail">
                                                    <ul class="item-list">
                                                        <li class="td td-item">
                                                            <div class="item-pic">
                                                                <a href="#" class="J_MakePoint">
                                                                    <img height="80px" src="<%=request.getContextPath()%>/image.jsp?ppath=${detail.foods.foodImage}" class="itempic J_ItemImg">
                                                                </a>
                                                            </div>
                                                            <div class="item-info">
                                                                <div class="item-basic-info" style="margin-top: 30px">
                                                                    <a href="#">
                                                                        <p>${detail.foods.foodName}</p>
                                                                    </a>
                                                                </div>
                                                            </div>
                                                        </li>
                                                        <li class="td td-price">
                                                            <div class="item-price">
                                                                    ${detail.foods.discountPrice}
                                                            </div>
                                                        </li>
                                                        <li class="td td-number">
                                                            <div class="item-number">
                                                                <span>×</span>${detail.count}
                                                            </div>
                                                        </li>
                                                        <%--<li class="td td-operation">--%>
                                                            <%--<div class="item-operation">--%>
                                                                <%--<a href="refund.html">退款</a>--%>
                                                            <%--</div>--%>
                                                        <%--</li>--%>
                                                    </ul>
                                                </c:forEach>
                                            </div>
                                            <div class="order-right">
                                                <li class="td td-amount">
                                                    <div class="item-amount">
                                                        合计：${order.totalPrice}
                                                    </div>
                                                </li>
                                                <div class="move-right">
                                                    <li class="td td-status">
                                                        <div class="item-status">
                                                            <p class="Mystatus">买家已付款</p>
                                                            <%--<p class="order-info"><a href="orderinfo.html">订单详情</a></p>--%>
                                                        </div>
                                                    </li>
                                                    <li class="td td-change">
                                                        <div class="am-btn am-btn-danger anniu">
                                                            删除订单</div>
                                                    </li>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </c:if>

                                   </c:forEach>
                            </div>
                        </div>
                    </div>
                    <div class="am-tab-panel am-fade" id="tab4">
                        <div class="order-top">
                            <div class="th th-item">
                                <td class="td-inner">商品</td>
                            </div>
                            <div class="th th-price">
                                <td class="td-inner">单价</td>
                            </div>
                            <div class="th th-number">
                                <td class="td-inner">数量</td>
                            </div>
                            <%--<div class="th th-operation">--%>
                                <%--<td class="td-inner">商品操作</td>--%>
                            <%--</div>--%>
                            <div class="th th-amount">
                                <td class="td-inner">合计</td>
                            </div>
                            <div class="th th-status">
                                <td class="td-inner">交易状态</td>
                            </div>
                            <div class="th th-change">
                                <td class="td-inner">交易操作</td>
                            </div>
                        </div>
                        <div class="order-main">
                            <div class="order-list">
                               <c:forEach items="${orders}" var="order">
                                <!--不同状态订单-->
                                <c:if test="${order.status=='待收货'}">
                                    <div class="order-status3">
                                        <div class="order-title">
                                            <div class="dd-num">订单编号：<a href="javascript:;">${order.serialNum}</a></div>
                                            <span>成交时间：<fmt:formatDate value="${order.creationDate}" pattern="yyyy-MM-dd hh:mm:ss"/></span>
                                        </div>
                                        <div class="order-content">
                                            <div class="order-left">
                                                <c:forEach items="${order.details}" var="detail">
                                                    <ul class="item-list">
                                                        <li class="td td-item">
                                                            <div class="item-pic">
                                                                <a href="#" class="J_MakePoint">
                                                                    <img height="80px" src="<%=request.getContextPath()%>/image.jsp?ppath=${detail.foods.foodImage}" class="itempic J_ItemImg">
                                                                </a>
                                                            </div>
                                                            <div class="item-info">
                                                                <div class="item-basic-info" style="margin-top: 30px">
                                                                    <a href="#">
                                                                        <p>${detail.foods.foodName}</p>
                                                                    </a>
                                                                </div>
                                                            </div>
                                                        </li>
                                                        <li class="td td-price">
                                                            <div class="item-price">
                                                                    ${detail.foods.discountPrice}
                                                            </div>
                                                        </li>
                                                        <li class="td td-number">
                                                            <div class="item-number">
                                                                <span>×</span>${detail.count}
                                                            </div>
                                                        </li>
                                                        <%--<li class="td td-operation">--%>
                                                            <%--<div class="item-operation">--%>
                                                                <%--<a href="refund.html">退款/退货</a>--%>
                                                            <%--</div>--%>
                                                        <%--</li>--%>
                                                    </ul>
                                                </c:forEach>
                                            </div>
                                            <div class="order-right">
                                                <li class="td td-amount">
                                                    <div class="item-amount">
                                                        合计：${order.totalPrice}
                                                    </div>
                                                </li>
                                                <div class="move-right">
                                                    <li class="td td-status">
                                                        <div class="item-status">
                                                            <p class="Mystatus">卖家已发货</p>
                                                            <%--<p class="order-info"><a href="orderinfo.html">订单详情</a></p>--%>
                                                            <%--<p class="order-info"><a href="logistics.html">查看物流</a></p>--%>
                                                            <%--<p class="order-info"><a href="#">延长收货</a></p>--%>
                                                        </div>
                                                    </li>
                                                    <li class="td td-change">
                                                        <div class="am-btn am-btn-danger anniu">
                                                            删除订单</div>
                                                    </li>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </c:if>
                               </c:forEach>
                            </div>
                        </div>
                    </div>

                    <%--<div class="am-tab-panel am-fade" id="tab5">--%>
                        <%--<div class="order-top">--%>
                            <%--<div class="th th-item">--%>
                                <%--<td class="td-inner">商品</td>--%>
                            <%--</div>--%>
                            <%--<div class="th th-price">--%>
                                <%--<td class="td-inner">单价</td>--%>
                            <%--</div>--%>
                            <%--<div class="th th-number">--%>
                                <%--<td class="td-inner">数量</td>--%>
                            <%--</div>--%>
                            <%--<div class="th th-operation">--%>
                                <%--<td class="td-inner">商品操作</td>--%>
                            <%--</div>--%>
                            <%--<div class="th th-amount">--%>
                                <%--<td class="td-inner">合计</td>--%>
                            <%--</div>--%>
                            <%--<div class="th th-status">--%>
                                <%--<td class="td-inner">交易状态</td>--%>
                            <%--</div>--%>
                            <%--<div class="th th-change">--%>
                                <%--<td class="td-inner">交易操作</td>--%>
                            <%--</div>--%>
                        <%--</div>--%>

                        <%--<div class="order-main">--%>
                            <%--<div class="order-list">--%>
                                <%--<c:forEach items="${orders}" var="order">--%>
                                    <%--<c:if test="${order.status=='待评价'}">--%>
                                <%--<!--不同状态的订单	-->--%>
                                <%--<div class="order-status4">--%>
                                    <%--<div class="order-title">--%>
                                        <%--<div class="dd-num">订单编号：<a href="javascript:;">${order.serialNum}</a></div>--%>
                                        <%--<span>成交时间：<fmt:formatDate value="${order.creationDate}" pattern="yyyy-MM-dd hh:mm:ss"/></span>--%>
                                    <%--</div>--%>
                                    <%--<div class="order-content">--%>
                                        <%--<div class="order-left">--%>
                                            <%--<c:forEach items="${order.details}" var="detail">--%>
                                            <%--<ul class="item-list">--%>
                                                <%--<li class="td td-item">--%>
                                                    <%--<div class="item-pic">--%>
                                                        <%--<a href="#" class="J_MakePoint">--%>
                                                            <%--<img height="80px" src="<%=request.getContextPath()%>/image.jsp?ppath=${detail.foods.foodImage}" class="itempic J_ItemImg">--%>
                                                        <%--</a>--%>
                                                    <%--</div>--%>
                                                    <%--<div class="item-info">--%>
                                                        <%--<div class="item-basic-info">--%>
                                                            <%--<a href="#">--%>
                                                                <%--<p>${detail.foods.foodName}</p>--%>
                                                            <%--</a>--%>
                                                        <%--</div>--%>
                                                    <%--</div>--%>
                                                <%--</li>--%>
                                                <%--<li class="td td-price">--%>
                                                    <%--<div class="item-price">--%>
                                                            <%--${detail.foods.discountPrice}--%>
                                                    <%--</div>--%>
                                                <%--</li>--%>
                                                <%--<li class="td td-number">--%>
                                                    <%--<div class="item-number">--%>
                                                        <%--<span>×</span>${detail.count}--%>
                                                    <%--</div>--%>
                                                <%--</li>--%>
                                                <%--<li class="td td-operation">--%>
                                                    <%--<div class="item-operation">--%>
                                                        <%--<a href="refund.html">退款/退货</a>--%>
                                                    <%--</div>--%>
                                                <%--</li>--%>
                                            <%--</ul>--%>
                                            <%--</c:forEach>--%>
                                        <%--</div>--%>
                                        <%--<div class="order-right">--%>
                                            <%--<li class="td td-amount">--%>
                                                <%--<div class="item-amount">--%>
                                                    <%--合计：${order.totalPrice}--%>
                                                <%--</div>--%>
                                            <%--</li>--%>
                                            <%--<div class="move-right">--%>
                                                <%--<li class="td td-status">--%>
                                                    <%--<div class="item-status">--%>
                                                        <%--<p class="Mystatus">交易成功</p>--%>
                                                        <%--<p class="order-info"><a href="orderinfo.html">订单详情</a></p>--%>
                                                        <%--<p class="order-info"><a href="logistics.html">查看物流</a></p>--%>
                                                    <%--</div>--%>
                                                <%--</li>--%>
                                                <%--<li class="td td-change">--%>
                                                    <%--<a href="commentlist.html">--%>
                                                        <%--<div class="am-btn am-btn-danger anniu">--%>
                                                            <%--评价商品</div>--%>
                                                    <%--</a>--%>
                                                <%--</li>--%>
                                            <%--</div>--%>
                                        <%--</div>--%>
                                    <%--</div>--%>
                                <%--</div>--%>
                                    <%--</c:if>--%>
                                <%--</c:forEach>--%>

                            <%--</div>--%>

                        <%--</div>--%>

                    <%--</div>--%>
                </div>

            </div>
        </div>
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
    </div>

</div>

</body>
</html>
