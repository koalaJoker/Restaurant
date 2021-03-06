<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>新增地址</title>
    <link href="css/amazeui.css" rel="stylesheet" type="text/css" />
    <link href="css/demo.css" rel="stylesheet" type="text/css" />
    <link href="css/cartstyle.css" rel="stylesheet" type="text/css" />
    <link href="css/jsstyle.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="js/address.js"></script>
    <link href="css/demo.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div >
    <!--标题 -->
    <div style="margin-left: 20px">
        <div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">新增地址</strong> / <small>update address</small></div>
    </div>
    <hr/>
    <div class="am-u-md-12">
        <form class="am-form am-form-horizontal" id="addressForm">
            <div class="am-form-group">
                <label for="user-name" class="am-form-label">收货人</label>
                <div class="am-form-content">
                    <input type="text" id="user-name" placeholder="收货人">
                </div>
            </div>

            <div class="am-form-group">
                <label for="user-phone" class="am-form-label">手机号码</label>
                <div class="am-form-content">
                    <input id="user-phone" placeholder="手机号必填" type="email" >
                </div>
            </div>
            <div class="am-form-group">
                <label for="user-intro" class="am-form-label">详细地址</label>
                <div class="am-form-content">
                    <textarea class="" rows="3" id="user-intro" placeholder="输入详细地址"></textarea>
                    <small>100字以内写出你的详细地址...</small>
                </div>
            </div>

            <div class="am-form-group theme-poptit">
                <div class="am-u-sm-9 am-u-sm-push-3">
                    <div class="am-btn am-btn-danger" onclick="saveFunction('${userId}')">保存</div>
                    <div class="am-btn am-btn-danger" onclick="cancelFunction()">取消</div>
                </div>
            </div>
        </form>
    </div>
</div>
<div class="clear"></div>
</body>
<script>
    function cancelFunction() {
        window.close();
    }
    function saveFunction(userId) {
        var receiver=$("#user-name").val();
        var telephone=$("#user-phone").val();
        var address=$("#user-intro").val();
        $.ajax({
            async: false,
            url:"newAddress.action",
            dataType:"json",
            type:"POST",
            data:
                {   "userId":userId,
                    "receiver":receiver,
                    "telephone":telephone,
                    "address":address},

        })
        window.close();
    }
</script>
</html>

