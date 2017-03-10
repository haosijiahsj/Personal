<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
<title></title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/lib/swiper.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/duowei.css">

</head>
<body>

<div class="container">

	<!-- 滑动组件 -->
	<div class="banner-box">
		<div class="city-box">
			<span>洛杉矶</span>
			<i class="fa fa-angle-down"></i>
		</div>
	
		<div class="swiper-container">
  			<div class="swiper-wrapper">
    			<div class="swiper-slide">
    				<img src="${pageContext.request.contextPath}/static/img/1.jpg">
    			</div>
    			<div class="swiper-slide">
    				<img src="${pageContext.request.contextPath}/static/img/2.jpg">
    			</div>
    			<div class="swiper-slide">
    				<img src="${pageContext.request.contextPath}/static/img/3.jpeg">
    			</div>
  			</div>
  			<div class="swiper-pagination"></div>
		</div>
	</div>
	
	<!-- 服务分类 -->
	<div class="categroy-box">
    	<a href="">
    	<div class="categroy-item-box">
    		<div class="icon-box"><img src="static/img/2.png"></div>
    		<span>健康</span>
    	</div>
    	</a>
    	<div class="categroy-item-box">
    		<div class="icon-box"><img src="static/img/1.png"></div>
    		<span>加油卡充值</span>
    	</div>
    	<div class="categroy-item-box">
    		<div class="icon-box"><img src="static/img/3.png"></div>
    		<span>搬家</span>
    	</div>
    	<div class="categroy-item-box">
    		<div class="icon-box"><img src="static/img/5.png"></div>
    		<span>鲜花</span>
    	</div>    	
    	
		<div class="categroy-item-box">
    		<div class="icon-box"><img src="static/img/6.png"></div>
    		<span>洗护</span>
    	</div>
    	<div class="categroy-item-box">
    		<div class="icon-box"><img src="static/img/8.png"></div>
    		<span>运动健身</span>
    	</div>
    	<div class="categroy-item-box">
    		<div class="icon-box"><img src="static/img/7.png"></div>
    		<span>闲置二手</span>
    	</div>
    	<div class="categroy-item-box">
    		<div class="icon-box"><img src="static/img/4.png"></div>
    		<span>全部服务</span>
    	</div>
	</div>
	
	<!-- 打广告的box -->
	<div class="ad-box">
		<div class="swiper-container">
  			<div class="swiper-wrapper">
    			<div class="swiper-slide">
    				<img src="${pageContext.request.contextPath}/static/img/ad.png">
    			</div>
    			<div class="swiper-slide">
    				<img src="${pageContext.request.contextPath}/static/img/ad.png">
    			</div>    			
  			</div>
  			<div class="swiper-pagination"></div>
		</div>
	</div>
	
</div>

<script type="text/javascript" src="${pageContext.request.contextPath}/static/lib/swiper.min.js"></script>
<script type="text/javascript" src="http://res.wx.qq.com/open/js/jweixin-1.0.0.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/duowei.js"></script>

</body>
</html>