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
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/duowei.css">
</head>
<body>

<div class="container">

	<!-- 滑动组件 -->
	<div class="swiper-container">
  		<div class="swiper-wrapper">
    		<div class="swiper-slide blue-slide">滑块1</div>
    		<div class="swiper-slide red-slide">滑块2</div>
    		<div class="swiper-slide orange-slide">滑块3</div>
  		</div>
  		<div class="swiper-pagination"></div>
    
    	<!-- 如果需要导航按钮 -->
    	<!-- <div class="swiper-button-prev"></div>
    	<div class="swiper-button-next"></div> -->
    	<!-- 如果需要滚动条 -->
    	<!-- <div class="swiper-scrollbar"></div> -->
	</div>
</div>

<script type="text/javascript" src="${pageContext.request.contextPath}/static/lib/swiper.min.js"></script>
<script charset="utf-8" src="http://map.qq.com/api/js?v=2.exp&key=5EMBZ-PHB3I-KMTG2-5FUEI-K4XZK-PTFBD"></script>
<script type="text/javascript" src="http://res.wx.qq.com/open/js/jweixin-1.0.0.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/duowei.js"></script>

</body>
</html>