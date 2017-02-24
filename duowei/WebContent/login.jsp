<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no">
<title>多维-登录</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/weui/css/weui.min.css">
<style>
	*{margin: 0;padding: 0;}
	html,body{height: 100%;}
</style>
</head>
<body ontouchstart>
<div>
   <h1 style="text-align: center; margin-top: 10px; color:#3cc51f;">Duo Wei</h1>
</div>
<div class="container" style="">
<div class="weui-cells weui-cells__form">
<div class="weui-cell weui-cell_vcode">
    <div class="weui-cell__hd">
       <label class="weui-label">手机号</label>
    </div>
    <div class="weui-cell__bd">
       <input class="weui-input" type="tel" placeholder="请输入手机号">
    </div>
    <div class="weui-cell__ft">
        <button id="btn-get-code" class="weui-vcode-btn">获取验证码</button>
    </div>
</div>
<div class="weui-cell">
	<div class="weui-cell__hd">
       <label class="weui-label">验证码</label>
    </div>
    <div class="weui-cell__bd">
       <input class="weui-input" type="text" placeholder="验证码">
    </div>
    <div class="weui-cell__ft">
    <a href="javascript:void(0)" class="weui-cell_link" style="font-size: 12px; color: red;">没有收到？</a>
    </div>
</div>
</div>
<div class="weui-cells__tips">请在上方输入相关信息以登录</div>
<div class="btn-box" style="padding: 0 10px 0 10px;">
	<button class="weui-btn weui-btn_primary" style="margin-top: 20px;">登录</button>
</div>
<div class="weui-cells__tips">点击登录表示您已同意<a href="javascript:void(0)" style="color: red;" class="weui-cell_link">平台使用协议</a>
</div>
</div>

<!-- 这里为何出现了滚动条？？？ 使用position：fixed 有问题 -->
<!-- tab导航栏 -->
<div class="weui-tab">
    <div class="weui-tabbar">
        <a href="javascript:;" class="weui-tabbar__item weui-bar__item_on">
            <img src="static/img/icon_nav_button.png" alt="" class="weui-tabbar__icon">
            <p class="weui-tabbar__label">微信</p>
        </a>
        <a href="javascript:;" class="weui-tabbar__item">
            <img src="static/img/icon_nav_msg.png" alt="" class="weui-tabbar__icon">
            <p class="weui-tabbar__label">通讯录</p>
        </a>
        <a href="javascript:;" class="weui-tabbar__item">
            <img src="static/img/icon_nav_article.png" alt="" class="weui-tabbar__icon">
            <p class="weui-tabbar__label">发现</p>
        </a>
        <a href="javascript:;" class="weui-tabbar__item">
            <img src="static/img/icon_nav_cell.png" alt="" class="weui-tabbar__icon">
            <p class="weui-tabbar__label">我</p>
        </a>
    </div>
</div>

<!-- 最后引用js文件 -->
<script type="text/javascript" src="${pageContext.request.contextPath}/static/lib/jquery-2.1.4.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/lib/fastclick.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/weui/js/weui.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/weui/js/jquery-weui.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/login.js"></script>
</body>
</html>