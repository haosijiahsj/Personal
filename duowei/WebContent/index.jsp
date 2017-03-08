<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
<title></title>
<!-- 引入css文件开始 -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/weui/css/weui.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/index.css">
<link href="//netdna.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">

</head>
<body>
<div class="header">
	
</div>

<div class="container">
	<div class="cont-box"></div>
</div>

<!-- 使用一个footer手动设置该tabbar位置为fixed -->
<div class="footer">
<div class="weui-tab">
<!-- tab导航栏 -->
<!-- 底部图标实现使用开源图标库font-awesome -->
    <div class="weui-tabbar">
        <a href="javascript:;" class="weui-tabbar__item item_on">
        	<!-- <img src="static/img/首页.png" alt="" class="weui-tabbar__icon"> -->
        	<div class="weui-tabbar__icon"><i class="fa fa-square-o"></i></div>        	
            <p class="weui-tabbar__label">多维</p>
        </a>
        <a href="javascript:;" class="weui-tabbar__item">
            <!-- <img src="static/img/订单.png" alt="" class="weui-tabbar__icon"> -->
            <div class="weui-tabbar__icon"><i class="fa fa-lemon-o"></i></div> 
            <p class="weui-tabbar__label">订单</p>
        </a>
        <a href="javascript:;" class="weui-tabbar__item">
            <!-- <img src="static/img/皇冠.png" alt="" class="weui-tabbar__icon"> -->
            <div class="weui-tabbar__icon"><i class="fa fa-sun-o"></i></div> 
            <p class="weui-tabbar__label">VIP</p>
        </a>
        <a href="javascript:;" class="weui-tabbar__item">
            <!-- <img src="static/img/用户.png" alt="" class="weui-tabbar__icon"> -->
            <div class="weui-tabbar__icon"><i class="fa fa-user-o"></i></div> 
            <p class="weui-tabbar__label">个人</p>
        </a>
    </div>
</div>
</div>

<script type="text/javascript" src="${pageContext.request.contextPath}/static/lib/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/lib/fastclick.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/weui/js/weui.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/index.js"></script>

</body>
</html>