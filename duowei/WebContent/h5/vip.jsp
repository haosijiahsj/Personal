<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
<title>多维-VIP</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/weui/css/weui.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/vip.css">
</head>
<body>
<div class="header">
</div>

<div class="container">
	<div class="weui-cells">
		<a class="weui-cell weui-cell_access" href="javascript:;">
			<div class="weui-cell__hd">
			</div>
			<div class="weui-cell__bd">
				<p>已购会员卡</p>
			</div>
			<div class="weui-cell__ft ft-tips-box ft-tips-num-box" style="color: #e6454a;font-size:14px">0</div>
		</a>
	</div>

		<div class="vip-card-box">
			<!-- 会员卡 -->
			<div class="weui-cells__tips">会员卡推荐</div>
			
			<div class="card-box">
				<div class="one-line-box">
					<div class="card-name-box">200元青铜卡</div>
					<div class="price-box">￥200</div>
				</div>
				<div class="two-line-box">有一些小的优惠。。。</div>
				<div class="three-line-box">
					<div class="detail-box">
						<a class="weui-cell_link" href="javascript:;">查看详情></a>
					</div>
					<div class="buy-box">
						<a href="javascript:;" class="weui-btn weui-btn_mini weui-btn_warn">购买</a>
					</div>
				</div>
			</div>
			
			<div class="card-box">
				<div class="one-line-box">
					<div class="card-name-box">1000元铂金卡</div>
					<div class="price-box">￥1000</div>
				</div>
				<div class="two-line-box">级别很高的优惠。。。</div>
				<div class="three-line-box">
					<div class="detail-box">
						<a class="weui-cell_link" href="javascript:;">查看详情></a>
					</div>
					<div class="buy-box">
						<a href="javascript:;" class="weui-btn weui-btn_mini weui-btn_warn">购买</a>
					</div>
				</div>
			</div>
			
			<div class="card-box">
				<div class="one-line-box">
					<div class="card-name-box">5000元砖石卡</div>
					<div class="price-box">￥5000</div>
				</div>
				<div class="two-line-box">至尊优惠。。。</div>
				<div class="three-line-box">
					<div class="detail-box">
						<a class="weui-cell_link" href="javascript:;">查看详情></a>
					</div>
					<div class="buy-box">
						<a href="javascript:;" class="weui-btn weui-btn_mini weui-btn_warn">购买</a>
					</div>
				</div>
			</div>
			
			<div class="card-box">
				<div class="one-line-box">
					<div class="card-name-box">10000元帝皇卡</div>
					<div class="price-box">￥10000</div>
				</div>
				<div class="two-line-box">帝王般的优惠。。。</div>
				<div class="three-line-box">
					<div class="detail-box">
						<a class="weui-cell_link" href="javascript:;">查看详情></a>
					</div>
					<div class="buy-box">
						<a href="javascript:;" class="weui-btn weui-btn_mini weui-btn_warn">购买</a>
					</div>
				</div>
			</div>
			
		</div>

	</div>

<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/vip.js"></script>
</body>
</html>