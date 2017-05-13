<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>结算</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="" />
    <link href="css/amazeui.css" rel="stylesheet" type="text/css" />
    <link href="css/demo.css" rel="stylesheet" type="text/css" />
    <link href="css/cartstyle.css" rel="stylesheet" type="text/css" />
    <link href="css/jsstyle.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="js/address.js"></script>
    <!-- for-mobile-apps -->
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
    <script src="js/bootstrap.min.js"></script>
    <script type="text/javascript">
        jQuery(document).ready(function($) {
            $(".scroll").click(function(event){
                event.preventDefault();
                $('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
            });
        });
    </script>
</head>
<body>
<%@ include file="header.jsp" %>

    <div class="breadcrumbs">
        <div class="container">
            <ol class="breadcrumb breadcrumb1 animated wow slideInLeft" data-wow-delay=".5s">
                <li><a href="index.jsp"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>主页</a></li>
                <li class="active">下单</li>
            </ol>
        </div>
    </div>
<div class="concent">
    <!--地址 -->
    <form id="orderForm" action="submitOrder.action" method="post">
    <div class="paycont">
        <div class="address">
            <h3>确认送餐地址 </h3>
            <div class="control">
                <div class="tc-btn createAddr theme-login am-btn am-btn-danger" onclick="newAddress()">使用新地址</div>
            </div>
            <div class="clear"></div>
            <ul>
                <c:forEach items="${addressList}" var="address">
                    <c:if test="${address.defaultFlag=='Y'}">
                <div class="per-border"></div>
                <li class="user-addresslist defaultAddr" onclick="changeAddress('${address.addressId}','${address.receiver}','${address.telephone}','${address.address}')">
                    <div class="address-left">
                        <div class="user DefaultAddr">
                            <span class="buy-address-detail">
                               <span class="buy-user">${address.receiver}</span>
                                <span class="buy-phone">${address.telephone}</span>
							</span>
                        </div>
                        <div class="default-address DefaultAddr">
                            <span class="buy-line-title buy-line-title-type">送餐地址：</span>
                            <span class="buy--address-detail">
							<span class="street">${address.address}</span>
							</span>
                            </span>
                        </div>
                        <ins class="deftip">默认地址</ins>
                    </div>
                    <div class="address-right">
                        <a href="person/address.html">
                            <span class="am-icon-angle-right am-icon-lg"></span></a>
                    </div>
                    <div class="clear"></div>

                    <div class="new-addr-btn">
                        <a href="#" class="hidden">设为默认</a>
                        <span class="new-addr-bar hidden">|</span>
                        <a href="#" onclick="editAddress('${address.addressId}')">编辑</a>
                        <span class="new-addr-bar">|</span>
                        <a href="javascript:void(0);" onclick="deleteAddress('${address.addressId}')">删除</a>
                    </div>

                </li></c:if></c:forEach>
                <c:forEach items="${addressList}" var="address">
                    <c:if test="${address.defaultFlag=='N'}">
                <div class="per-border"></div>
                <li class="user-addresslist" onclick="changeAddress('${address.addressId}','${address.receiver}','${address.telephone}','${address.address}')">
                    <div class="address-left">
                        <div class="user DefaultAddr">

										<span class="buy-address-detail">
                   <span class="buy-user">${address.receiver}</span>
										<span class="buy-phone">${address.telephone}</span>
										</span>
                        </div>
                        <div class="default-address DefaultAddr">
                            <span class="buy-line-title buy-line-title-type">送餐地址：</span>
                            <span class="buy--address-detail">

										<span class="street">${address.address}</span>
										</span>

                            </span>
                        </div>
                        <ins class="deftip hidden">默认地址</ins>
                    </div>
                    <div class="address-right">
                        <span class="am-icon-angle-right am-icon-lg"></span>
                    </div>
                    <div class="clear"></div>

                    <div class="new-addr-btn">
                        <a href="#" onclick="setDefault('${address.addressId}')">设为默认</a>
                        <span class="new-addr-bar">|</span>
                        <a href="#" onclick="editAddress('${address.addressId}')">编辑</a>
                        <span class="new-addr-bar">|</span>
                        <a href="javascript:void(0);"  onclick="deleteAddress('${address.addressId}')">删除</a>
                    </div>

                </li>
                    </c:if>
                </c:forEach>
            </ul>

            <div class="clear"></div>
        </div>


            <!--订单 -->
        <div class="concent" >
            <div id="payTable">
                <h3>确认订单信息</h3>
                <div class="cart-table-th">
                    <div class="wp">

                        <div class="th th-item">
                            <div class="td-inner">商品信息</div>
                        </div>
                        <div class="th th-price">
                            <div class="td-inner">单价</div>
                        </div>
                        <div class="th th-amount">
                            <div class="td-inner">数量</div>
                        </div>
                        <div class="th th-sum">
                            <div class="td-inner">金额</div>
                        </div>
                    </div>
                </div>
                <div class="clear"></div>

                <c:forEach items="${cartList}" var="order" varStatus="status">
                <tr class="item-list">
                    <div class="bundle  bundle-last">
                        <div class="bundle-main">
                            <ul class="item-content clearfix">
                                <div class="pay-phone">
                                    <li class="td td-item">
                                        <input type="hidden"  name="details[${status.index}].foodId" value="${order.foods.foodId}">
                                        <div class="item-pic">
                                            <a href="#" class="J_MakePoint">
                                                <img height="80px" width="80px" src="<%=request.getContextPath()%>/image.jsp?ppath=${order.foods.foodImage}" class="itempic J_ItemImg"></a>
                                        </div>
                                        <div class="item-info">
                                            <div class="item-basic-info" style="margin-top: 50px">
                                                <a href="#" >${order.foods.foodName}</a>
                                            </div>
                                        </div>
                                    </li>

                                    <li class="td td-price">
                                        <div class="item-price price-promo-promo">
                                            <div class="price-content">
                                                <em class="J_Price price-now" id="price${order.cartId}">${order.foods.discountPrice}</em>
                                            </div>
                                        </div>
                                    </li>
                                </div>
                                <li class="td td-amount">
                                    <div class="amount-wrapper ">
                                        <div class="item-amount ">
                                            <span class="phone-title">购买数量</span>
                                            <div class="sl">
                                                <input class="min am-btn" name="" type="button" value="-" />
                                                <input class="text_box"   name="details[${status.index}].count" type="text" value="${order.quantity}" style="width:30px;" lang="${order.cartId}"/>
                                                <input class="add am-btn" name="" type="button" value="+" />
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li class="td td-sum">
                                    <div class="td-inner">
                                        <em tabindex="0" class="J_ItemSum number" id="count${order.cartId}">${order.quantity*order.foods.discountPrice}</em>
                                    </div>
                                </li>
                            </ul>
                            <div class="clear"></div>

                        </div>
                </tr>
                <div class="clear"></div>
            </div>
            </c:forEach>

        </div>
        <div class="clear"></div>
        <div class="pay-total">
            <!--留言-->
            <div class="order-extra">
                <div class="order-user-info">
                    <div id="holyshit257" class="memo">
                        <label>买家留言：</label>
                        <input id="remark" name="customerRemark" type="text" title="选填,对本次交易的说明（建议填写已经和卖家达成一致的说明）" placeholder="选填,建议填写和卖家达成一致的说明" class="memo-input J_MakePoint c2c-text-default memo-close">
                        <div class="msg hidden J-msg">
                            <p class="error">最多输入500个字符</p>
                        </div>
                    </div>
                </div>

            </div>
            <div class="clear"></div>
        </div>


        <!--信息 -->
        <div class="order-go clearfix">
            <div class="pay-confirm clearfix">
                <div class="box">
                    <div tabindex="0" id="holyshit267" class="realPay"><em class="t">实付款：</em>
                        <span class="price g_price ">
                                    <em class="style-large-bold-red " id="sum" >
                                        <c:set var="sum" value="0"></c:set>
                                        <c:forEach items="${cartList}" var="vvv">
                                            <c:set var="sum" value="${sum+vvv.quantity*vvv.foods.discountPrice}"></c:set>
                                        </c:forEach>
                                       ${sum}
                                    </em>
                            <input id="hiddenSum" name="totalPrice" type="hidden" value="${sum}">
									</span>
                    </div>
                    <div id="holyshit268" class="pay-address">
                   <c:forEach items="${addressList}" var="address">
                      <c:if test="${address.defaultFlag=='Y'}">
                       <input id="hiddenAddress" name="addressId" type="hidden" value="${address.addressId}">
                        <p class="buy-footer-address">
                            <span class="buy-line-title buy-line-title-type">送餐至：</span>
                            <span class="buy--address-detail">
							<span class="street" id="addressInfo">${address.address}</span>
							</span>
                            </span>
                        </p>
                        <p class="buy-footer-address">
                            <span class="buy-line-title">收货人：</span>
                            <span class="buy-address-detail">
                                   <span class="buy-user" id="receiverInfo">${address.receiver} </span>
									<span class="buy-phone" id="phoneInfo">${address.telephone}</span>
									</span>
                        </p>
                      </c:if>
                   </c:forEach>
                    </div>
                </div>

                <div id="holyshit269" class="submitOrder">
                    <div class="go-btn-wrap">
                        <a id="J_Go" href="#"  onclick="submitOrder()"  class="btn-go" tabindex="0" title="点击此按钮，提交订单">提交订单</a>
                    </div>
                </div>
                <div class="clear"></div>
            </div>
        </div>
    </div>
    </form>
    <div class="clear"></div>
</div>

<div class="theme-popover-mask"></div>
<%--<div class="theme-popover" id="newAddress">--%>

    <%--<!--标题 -->--%>
    <%--<div class="am-cf am-padding">--%>
        <%--<div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">新增地址</strong> / <small>Add address</small></div>--%>
    <%--</div>--%>
    <%--<hr/>--%>

    <%--<div class="am-u-md-12">--%>
        <%--<form class="am-form am-form-horizontal">--%>

            <%--<div class="am-form-group">--%>
                <%--<label for="user-name" class="am-form-label">收货人</label>--%>
                <%--<div class="am-form-content">--%>
                    <%--<input type="text" id="user-name" placeholder="收货人">--%>
                <%--</div>--%>
            <%--</div>--%>

            <%--<div class="am-form-group">--%>
                <%--<label for="user-phone" class="am-form-label">手机号码</label>--%>
                <%--<div class="am-form-content">--%>
                    <%--<input id="user-phone" placeholder="手机号必填" type="email">--%>
                <%--</div>--%>
            <%--</div>--%>

            <%--<div class="am-form-group">--%>
                <%--<label for="user-intro" class="am-form-label">详细地址</label>--%>
                <%--<div class="am-form-content">--%>
                    <%--<textarea class="" rows="3" id="user-intro" placeholder="输入详细地址"></textarea>--%>
                    <%--<small>100字以内写出你的详细地址...</small>--%>
                <%--</div>--%>
            <%--</div>--%>

            <%--<div class="am-form-group theme-poptit">--%>
                <%--<div class="am-u-sm-9 am-u-sm-push-3">--%>
                    <%--<div class="am-btn am-btn-danger " onclick="saveAddress()">保存</div>--%>
                    <%--<div class="am-btn am-btn-danger close">取消</div>--%>
                <%--</div>--%>
            <%--</div>--%>
        <%--</form>--%>
    <%--</div>--%>
<%--</div>--%>
<div class="clear"></div>

</div>
<script>
    var winObj;
    function editAddress(addressId){
        winObj= window.open ('selectAddressById.action?addressId='+addressId,'newwindow','height=400,width=520,top=200,left=400,toolbar=no,menubar=no,scrollbars=no, resizable=no,location=no, status=no')
        var loop=setInterval(function () {
            if(winObj.closed) {
                clearInterval(loop);
                location.reload();
            }
        }, 1000);
    }


    function changeAddress(addressId,receiver,telephone,address) {
        $("#hiddenAddress").val(addressId);
        $("#addressInfo").html(address);
        $("#receiverInfo").text(receiver);
        $("#phoneInfo").text(telephone);
    }

    function setDefault(addressId) {
        var userId=${userId};
        if(userId!=null){
        $.ajax({
            url:"addressDefault.action",
            dataType:"json",
            type:"POST",
            data:
                {"addressId":addressId,"userId":userId},

        })

        location.reload();}
        else{
            location.href="login.jsp";

        }
    }
    function deleteAddress(addressId){
        if (confirm("确认要删除？")) {
        var userId=${userId};
        if(userId!=null){
            $.ajax({
                url:"deleteAddress.action",
                dataType:"json",
                type:"POST",
                data:
                    {"addressId":addressId,"userId":userId},

            })
            location.reload();}
        else{
            location.href="login.jsp";

        }
        }
    }

    function newAddress(addressId){
       var newAddressObj= window.open ('newAddress.jsp','newWindow','height=400,width=520,top=200,left=400,toolbar=no,menubar=no,scrollbars=no, resizable=no,location=no, status=no')
        var loopnew=setInterval(function () {
            if(newAddressObj.closed) {
                clearInterval(loopnew);
                location.reload();
            }
        }, 1000);
    }
    function submitOrder() {
        $("#orderForm").submit();
    }
</script>
</body>
</html>
