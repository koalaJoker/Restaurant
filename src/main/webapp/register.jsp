<%--
  Created by IntelliJ IDEA.
  User: 袁媛
  Date: 2017/3/30
  Time: 11:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>注册</title>
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
            <li><a href="index.jsp"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>主页</a></li>
            <li class="active">注册</li>
        </ol>
    </div>
</div>
<!-- //breadcrumbs -->
<span id="hideCode"></span>
<span id="hidePhone"></span>
<!-- register -->
<div class="register">
    <div class="container">
        <h2>注册</h2>
        <div class="login-form-grids">
            <form  onsubmit="return check()" action="/regiest.action" method="post">
            <h4>个人信息</h4>
                <input type="text" name="name" placeholder="姓名：" required="required " >
                <div style="margin-top: 10px">
                    男：<input type="radio" name="sex" value="男">&nbsp;&nbsp;&nbsp;女：<input type="radio" name="sex" value="女"></div>
            <h6>登陆信息</h6>
                <input type="text" id="phone" name="phone" placeholder="请输入手机号" required=" " >
                <div style="margin-top: 10px" >
                    <input type="text" name="" style="width: 300px" id="code"  placeholder="请输入验证码"  required="">
                    <span id="dyMobileButton" onclick="sendMobileCode()" class="btn btn-success" style="margin-left: 30px">获取</span></a>
                </div>
                <input type="password" name="password" id="password" placeholder="请输入密码" required=" " >
                <input type="password" id="password2"  placeholder="确认密码" required=" " >
                <div class="register-check-box">
                    <div class="check">
                        <label class="checkbox"><input type="checkbox" name="checkbox"><i> </i>我已阅读并同意相关服务条款和隐私政策</label>
                    </div>
                </div>
                <input type="submit" value="注 册">
            </form>
        </div>
        <div class="register-home">
            <a href="index.jsp">主页</a>
        </div>
    </div>
</div>
<!-- //register -->
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
    //用于接收验证码
    var clock='';
    var nums=60;
    var btn= $("#dyMobileButton");
    function doLoop(){
        nums--;
        if(nums>0){
            btn.html(nums+'秒');
        }else{
            clearInterval(clock); //清除js定时器
            $("#dyMobileButton").attr("onclick","sendMobileCode()");
            btn.html('获取') ;
            nums = 60; //重置时间
        }

    }
    function sendMobileCode() {
        var phone=$("#phone").val();
        //判断手机号码是否正确
        if(!(/^1[34578]\d{9}$/.test(phone))){
            alert("手机号码有误，请重填");
            return;
        }
        $("#dyMobileButton").removeAttr("onclick");
        clock=setInterval(doLoop,1000);
        $.ajax({
            url: "/sendSms.action?phone="+phone,
            type: "POST",
            dataType: "json",
            contentType: "application/json;charset=utf-8",
            success: function (data) {
                //alert(data);
                if (data=="false"){
                    alert("已经存在手机号！");
                    return;
                }
                $("#hideCode").text(data);
                $("#hidePhone").text(phone);
            }
        });
    }
    //提交之前检测
    function check(){
        var password1=$("#password").val();
        var password2=$("#password2").val();
        var phone=$("#phone").val();
        var hidePhone=$("#hidePhone").val();
        var hideCode=$("#hideCode").val();
        var code=$("#code").val();
        if(password2!=password1){
            alert("两次密码输入不一致！");
            //$("#spanid").text(" 两次密码输入不一致") ;
            return false;
        }
        if(hidePhone!=phone){
            alert("手机号与接收验证码手机号不符！");
            return false;
        }
        if(hideCode!=code){
            alert("验证码错误！");
            return false;
        }
        return true;
    }

</script>
<!-- //main slider-banner -->
<script>
    $(function(){
        $("html, body").scrollTop(0).animate({scrollTop: $("#scroll").offset().top});
    })
</script>
</body>
</html>
