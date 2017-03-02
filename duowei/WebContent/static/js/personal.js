
$(document).ready(function(){
	//使用快速点击消除点击的300毫秒延迟
	FastClick.attach(document.body);
	//首页点击登录div
	$(".icon-box").click(function(){
		location.href = "login.jsp";
	});

});