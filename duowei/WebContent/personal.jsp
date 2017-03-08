<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
<title>多维-Personal</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/personal.css">
</head>
<body>

<div class="container">
	<div class="header-box">
		<div class="icon-box">
			<div class="face-box"><img src="static/img/my_icon_head_default.png" /></div>
			<div class="name-box">点击登录</div>
		</div>
	</div>
	
	<div class="list-box">
			<div class="weui-cells">
				<a class="weui-cell weui-cell_access" href="javascript:;">
					<div class="weui-cell__hd">
						<i class="fa fa-money"></i>
					</div>
					<div class="weui-cell__bd">
						<p>我的优惠券</p>
					</div>
					<div class="weui-cell__ft ft-tips-box ft-tips-num-box" style="color: #e6454a;">99</div>
				</a> 
				<a class="weui-cell weui-cell_access" href="javascript:;">
					<div class="weui-cell__hd">
						<i class="fa fa-credit-card"></i>
					</div>
					<div class="weui-cell__bd">
						<p>我的会员卡</p>
					</div>
					<div class="weui-cell__ft ft-tips-box ft-tips-num-box" style="color: #e6454a;">5</div>
				</a>
			</div>

			<div class="weui-cells">
				<a class="weui-cell weui-cell_access" href="javascript:;">
					<div class="weui-cell__hd">
						<i class="fa fa-users"></i>
					</div>
					<div class="weui-cell__bd">
						<p>服务人员报名入口</p>
					</div>
					<div class="weui-cell__ft"></div>
				</a> 				
			</div>
			
			<div class="weui-cells">
				<a class="weui-cell weui-cell_access" href="tel:028-9876543">
					<div class="weui-cell__hd">
						<i class="fa fa-volume-control-phone"></i>
					</div>
					<div class="weui-cell__bd">
						<p>联系客服</p>
					</div>
					<div class="weui-cell__ft ft-tips-box">028-9876543</div>
				</a> 
				<a class="weui-cell weui-cell_access" href="javascript:;">
					<div class="weui-cell__hd">
						<i class="fa fa-bug"></i>
					</div>
					<div class="weui-cell__bd">
						<p>意见反馈</p>
					</div>
					<div class="weui-cell__ft ft-tips-box">帮助我们完善产品</div>
				</a>
				<a class="weui-cell weui-cell_access" href="javascript:;">
					<div class="weui-cell__hd">
						<i class="fa fa-cloud"></i>
					</div>
					<div class="weui-cell__bd">
						<p>关于我们</p>
					</div>
					<div class="weui-cell__ft ft-tips-box">^_^</div>
				</a>
			</div>
	</div>
	<div class="logout-box">
		<button class="weui-btn weui-btn_plain-primary">退出登录</button>
	</div>
</div>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/personal.js"></script>
</body>
</html>