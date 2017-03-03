<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
<title>多维-登录</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/weui/css/weui.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/login.css">
</head>
<body ontouchstart>

<!-- header开始 -->
<div class="header">
   	<div class="header-box">
		<div class="icon-box">
			<div class="name-box">多维家政服务平台登录</div>
		</div>
	</div>
</div>
<!-- header结束 -->
<!-- container开始 -->
<div class="container">
<div class="weui-cells weui-cells__form">
<div class="weui-cell weui-cell_vcode">
    <div class="weui-cell__hd">
       <label class="weui-label" style="font-size: 14px;">手机号</label>
    </div>
    <div class="weui-cell__bd">
       <input class="weui-input inp-tel" type="tel" placeholder="请输入手机号">
    </div>
    <div class="weui-cell__ft">
        <button class="weui-vcode-btn btn-get-code">获取验证码</button>
    </div>
</div>
<div class="weui-cell">
	<div class="weui-cell__hd">
       <label class="weui-label" style="font-size: 14px;">验证码</label>
    </div>
    <div class="weui-cell__bd">
       <input class="weui-input inp-vcode" type="number" placeholder="验证码">
    </div>
    <div class="weui-cell__ft">
    <a href="javascript:void(0)" class="weui-cell_link" style="font-size: 12px;">没有收到？</a>
    </div>
</div>
</div>
<div class="weui-cells__tips">请在上方输入相关信息以登录</div>
<div class="btn-login-box">
	<button class="weui-btn weui-btn_plain-primary btn-login">绑定手机号以登录</button>
</div>
<div class="weui-cells__tips tips-box">
	点击登录表示您已同意
	<a href="javascript:void(0)" class="weui-cell_link a-sys-use">《平台使用协议》</a>
</div>
</div>
<!-- container结束 -->
<!-- footer开始 -->
<jsp:include page="public/footer.html"></jsp:include>
<!-- footer结束 -->
<!-- 引用js文件开始 -->
<script type="text/javascript" src="${pageContext.request.contextPath}/static/lib/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/lib/fastclick.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/weui/js/weui.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/login.js"></script>
<!-- 引用js文件结束 -->
</body>
</html>