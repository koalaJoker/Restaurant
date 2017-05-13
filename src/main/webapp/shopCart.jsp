<%--
  Created by IntelliJ IDEA.
  User: 袁媛
  Date: 2017/4/21
  Time: 11:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>购物车</title>
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
    <link href="css/index.css" rel="stylesheet" type="text/css" />
    <!-- //font-awesome icons -->
    <!-- js -->
    <script src="js/jquery-1.11.1.min.js"></script>
    <!-- //js -->
    <link href='http://fonts.googleapis.com/css?family=Raleway:400,100,100italic,200,200italic,300,400italic,500,500italic,600,600italic,700,700italic,800,800italic,900,900italic' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
    <!-- start-smoth-scrolling -->
    <script type="text/javascript" src="js/move-top.js"></script>
    <script type="text/javascript" src="js/easing.js"></script>
    <script type="text/javascript" src="js/Calculation.js"></script>
    <link href="css/demo.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript">
        jQuery(document).ready(function($) {
            $(".scroll").click(function(event){
                event.preventDefault();
                $('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
            });
        });
    </script>
    <script type="text/javascript">
        $(document).ready(function () {

            //jquery特效制作复选框全选反选取消
            // 全选
            $(".allselect").click(function () {

                if($(this).attr("checked")){
                    $(".gwc_tb2 input[name=newslist]").each(function () {
                        $(this).attr("checked", true);
                        // $(this).next().css({ "background-color": "#3366cc", "color": "#ffffff" });
                    });
                    GetCount();

                }
                else
                {
                    $(".gwc_tb2 input[name=newslist]").each(function () {
                        if ($(this).attr("checked")) {
                            $(this).attr("checked", false);
                            //$(this).next().css({ "background-color": "#ffffff", "color": "#000000" });
                        } else {
                            $(this).attr("checked", true);
                            //$(this).next().css({ "background-color": "#3366cc", "color": "#000000" });
                        }
                    });
                    GetCount();
                }

            });

            //反选
            $("#invert").click(function () {
                $(".gwc_tb2 input[name=newslist]").each(function () {
                    if ($(this).attr("checked")) {
                        $(this).attr("checked", false);
                        //$(this).next().css({ "background-color": "#ffffff", "color": "#000000" });
                    } else {
                        $(this).attr("checked", true);
                        //$(this).next().css({ "background-color": "#3366cc", "color": "#000000" });
                    }
                });
                GetCount();
            });

            //取消
            $("#cancel").click(function () {
                $(".gwc_tb2 input[name=newslist]").each(function () {
                    $(this).attr("checked", false);
                });
                GetCount();
            });

            // 所有复选(:checkbox)框点击事件
            $(".gwc_tb2 input[name=newslist]").click(function () {
                if ($(this).attr("checked")) {
                    //$(this).next().css({ "background-color": "#3366cc", "color": "#ffffff" });
                } else {
                    // $(this).next().css({ "background-color": "#ffffff", "color": "#000000" });
                }
            });

            // 输出
            $(".gwc_tb2 input[name=newslist]").click(function () {
                // $("#total2").html() = GetCount($(this));
                GetCount();
                //alert(conts);
            });
        });

        function GetCount() {
            var conts = 0;
            var aa = 0;
            $(".gwc_tb2 input[name=newslist]").each(function () {
                if ($(this).attr("checked")) {
                    for (var i = 0; i < $(this).length; i++) {
                        conts += parseInt($(this).val());
                        aa += 1;
                    }
                }
            });
            $("#quantity").text(aa);
            $("#totalPrice").html((conts).toFixed(2));
            $("#jz1").css("display", "none");
            $("#jz2").css("display", "block");
        }
    </script>
</head>
<body>

<!-- header -->
<%@ include file="header.jsp" %>
<!-- breadcrumbs -->
<div class="breadcrumbs">
    <div class="container">
        <ol class="breadcrumb breadcrumb1 animated wow slideInLeft" data-wow-delay=".5s">
            <li><a href="index.jsp"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>主页</a></li>
            <li class="active">购物车</li>
        </ol>
    </div>
</div>
<script src="js/bootstrap.min.js"></script>
<!-- //breadcrumbs -->
<script type="text/javascript" src="js/jquery.1.4.2-min.js"></script>

<div class="gwc" style=" margin:auto;">
    <table cellpadding="0" cellspacing="0" class="gwc_tb1">
        <tr>
            <td class="tb1_td1"><input id="Checkbox1" type="checkbox"  class="allselect"/></td>
            <td class="tb1_td1">全选</td>
            <td class="tb1_td3">商品</td>
            <%--<td class="tb1_td4" >商品信息</td>--%>
            <td class="tb1_td5">数量</td>
            <td class="tb1_td6">单价</td>
            <td class="tb1_td4">总价</td>
            <td class="tb1_td7">操作</td>
        </tr>
    </table>

    <!---商品加减算总数---->
    <script type="text/javascript">
            var s;
            var price;
            var count;
           function addCount(id,s,price,foodId,quantity){
               s=s;
               price=price;
               var c="text_box"+s;
                count = $("#"+c);
                count.val(parseInt(count.val()) + 1)
                setTotal(s,price); GetCount();
               updateQuantity(foodId,count.val()-quantity)
            }
            function lessCount(id,s,price,foodId,quantity) {
                s=s;
                price=price;
                var c="text_box"+s;
                count = $("#"+c);
                if(count.val()>1){
                    count.val(parseInt(count.val()) - 1)
                    setTotal(s,price); GetCount();
                    updateQuantity(foodId,count.val()-quantity)
            }

           }
            function setTotal(s,price) {
                $("#total"+s).html((parseInt(count.val()) * price).toFixed(2));
                $("#newslist-"+s).val(parseInt(count.val()) * price);
            }
            setTotal(s,price);

           function changeCount(id,s,price,foodId,quantity) {
               s=s;
               price=price;
               var c="text_box"+s;
               count = $("#"+c);
               if(count.val()>1){
                   setTotal(s,price); GetCount();
                   updateQuantity(foodId,count.val()-quantity)
               }else{
                   count.val(1);
                   setTotal(s,price); GetCount();
                   updateQuantity(foodId,count.val()-quantity)
               }

           }
           
           function updateQuantity(foodId,quantity) {
               //用户
               $.ajax({
                   url:"addToCart.action",
                   dataType:"json",
                   type:"POST",
                   data:
                       {"foodId":foodId,"userId":1,quantity:quantity},
                   success:function (datas) {

                   }

               })
           }
    </script>
<c:if test="${cartList!=null}">
    <c:forEach items="${cartList}" varStatus="status" var="cart">
    <table cellpadding="0" cellspacing="0" class="gwc_tb2">
        <tr>
            <td class="tb2_td1">
                <input type="checkbox" value="${cart.foods.discountPrice*cart.quantity}" name="newslist"
                       id="newslist-${status.count}" lang="${cart.cartId}"/></td>
            <td class="tb2_td2">
                <a href="#">
                    <img src="<%=request.getContextPath()%>/image.jsp?ppath=${cart.foods.foodImage}"/></a>
            </td>
            <td class="tb2_td3"><a href="#">${cart.foods.foodName}</a></td>
            <td class="tb1_td5" >
                <input id="min${status.count}"
                       onclick="lessCount('min${status.count}',${status.count},
                       ${cart.foods.discountPrice},${cart.foods.foodId},${cart.quantity})"
                       name=""  style=" width:20px; height:18px;border:1px solid #ccc;" type="button" value="-" />
                <input id="text_box${status.count}" name="" type="text" value="${cart.quantity}"
                 onchange="changeCount('text_box${status.count}',${status.count},
                 ${cart.foods.discountPrice},${cart.foods.foodId},${cart.quantity})"
                       style=" width:30px; text-align:center; border:1px solid #ccc;" />
                <input id="add${status.count}"
                       onclick="addCount('add${status.count}',${status.count},
                       ${cart.foods.discountPrice},${cart.foods.foodId},${cart.quantity})"
                       name="" style=" width:20px; height:18px;border:1px solid #ccc;" type="button" value="+" />
            </td>
            <td class="tb1_td6"><label  class="tot" style="color:#ff5500;font-size:14px; font-weight:bold;">${cart.foods.discountPrice}</label></td>
            <td class="tb1_td4">
                <label id="total${status.count}" class="tot" style="color:#ff5500;font-size:14px; font-weight:bold;">
                ${cart.foods.discountPrice*cart.quantity}</label></td>
            <td class="tb1_td7">
                <a href="deleteCart.action?cartId=${cart.cartId}" onclick="return confirm('确实要删除吗？')">
                    删除</a></td>
        </tr>
    </table>
    </c:forEach>
</c:if>
    <table cellpadding="0" cellspacing="0" class="gwc_tb3">
        <tr>
            <td class="tb1_td1">&nbsp;</td>
            <td class="tb1_td1">&nbsp;</td>
            <td class="tb3_td1">&nbsp;</td>
            <td class="tb3_td2">已选商品 <label id="quantity" style="color:#ff5500;font-size:14px; font-weight:bold;">0</label> 件</td>
            <td class="tb3_td3">合计(不含运费):<span>￥</span><span style=" color:#ff5500;"><label id="totalPrice" style="color:#ff5500;font-size:14px; font-weight:bold;"></label></span></td>
            <td class="tb3_td4"><span id="jz1">结算</span><a href="#" onclick="pay()" style=" display:none;"  class="jz2" id="jz2">结算</a></td>
        </tr>
    </table>
    <div >
        <div class="checkout-right-basket" style="margin-top: 20px;margin-bottom: 20px">
            <a href="index.jsp"><span class="glyphicon glyphicon-menu-left" ></span>继续选菜</a>
        </div>
        <div class="clearfix"> </div>
    </div>
</div>

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
<script>

    function pay(){
        var str='';
        $(".gwc_tb2 input[name=newslist]").each(function () {
            if ($(this).attr("checked")) {
               str=str+$(this).attr("lang")+","
            }
    })
       window.location.href="selectOrder.action?param="+str;
    }
</script>


</div>
</body>
</html>
