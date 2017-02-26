<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
<title>多维</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/weui/css/weui.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/index.css">
</head>
<body>
<div class="header">
	
</div>

<div class="container">
	<div class="cont-box"></div>
	<%-- <div class="nav-tab item-on">
		<jsp:include page="duowei.jsp"></jsp:include>
	</div>
	<div class="nav-tab item-off">
		<jsp:include page="order.jsp"></jsp:include>
	</div>
	<div class="nav-tab item-off">
		<jsp:include page="vip.jsp"></jsp:include>
	</div>
	<div class="nav-tab item-off">
		<jsp:include page="personal.jsp"></jsp:include>
	</div> --%>
</div>

<div class="footer">
<div class="weui-tab">
<!-- tab导航栏 -->
<!-- 导航栏weui-tab必须吧网页所有的东西包裹起来？？？ -->
    <div class="weui-tabbar">
        <a href="javascript:;" class="weui-tabbar__item weui-bar__item_on">
            <div class="item-img item-off"><img src="static/img/index_home.png" alt="" class="weui-tabbar__icon"></div>
            <div class="item-img1"><img src="static/img/index_home1.png" alt="" class="weui-tabbar__icon"></div>
            <p class="weui-tabbar__label">主页</p>
        </a>
        <a href="javascript:;" class="weui-tabbar__item">
            <div class="item-img"><img src="static/img/index_order.png" alt="" class="weui-tabbar__icon"></div>
            <div class="item-img1 item-off"><img src="static/img/index_order1.png" alt="" class="weui-tabbar__icon"></div>
            <p class="weui-tabbar__label">订单</p>
        </a>
        <a href="javascript:;" class="weui-tabbar__item">
            <div class="item-img"><img src="static/img/index_vip.png" alt="" class="weui-tabbar__icon"></div>
            <div class="item-img1 item-off"><img src="static/img/index_vip1.png" alt="" class="weui-tabbar__icon"></div>
            <p class="weui-tabbar__label">VIP</p>
        </a>
        <a href="javascript:;" class="weui-tabbar__item">
            <div class="item-img"><img src="static/img/index_myself.png" alt="" class="weui-tabbar__icon"></div>
            <div class="item-img1 item-off"><img src="static/img/index_myself1.png" alt="" class="weui-tabbar__icon"></div>
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