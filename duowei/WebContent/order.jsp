<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
<title></title>
<%-- <link rel="stylesheet" href="${pageContext.request.contextPath}/static/weui/css/weui.min.css"> --%>
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/lib/swiper.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/order.css">
</head>
<body>

<div class="container">
	<div class="weui-tab">
    <div class="weui-navbar">
        <div class="weui-navbar__item weui-bar__item_on">
           	 进行中
        </div>
        <div class="weui-navbar__item">
           	 已完成
        </div>
        <div class="weui-navbar__item">
        	待评价
        </div>
        <div class="weui-navbar__item">
        	所有订单
        </div>
    </div>
    <div class="weui-tab__panel">

    </div>
</div>
</div>

<script type="text/javascript" src="${pageContext.request.contextPath}/static/lib/swiper.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/order.js"></script>
</body>
</html>