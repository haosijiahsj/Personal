<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
<style>
.header-nav-box {
	position: fixed;
	top: 0;
	left: 0;
	width: 100%;
	height: 40px;
	border: 1px solid #ddd;
}

.nav-box {
	height: 40px;
}

.nav-list {
	list-style: none;
	height: 40px;
	margin: 0;
	padding: 0;
}

.nav-list li {
	width: 25%;
	float: left;
	line-height: 40px;
	text-align: center;
	font-size: 14px;
	
}
.nav-list li:active{
	background: #EDEDED;
}
.nav-item-on {
	color: #e6454a;
	border-bottom: 2px solid #e6454a;
}
</style>
</head>
<body>
<div class="header-nav-box">
	<div class="nav-box">
		<ul class="nav-list">
			<li class="nav-item nav-item-on">进行中</li>
			<li class="nav-item">已完成</li>
			<li class="nav-item">待评价</li>
			<li class="nav-item">全部订单</li>
		</ul>
	</div>
</div>
</body>
</html>
