
$(document).ready(function(){
	//使用快速点击消除点击的300毫秒延迟
	FastClick.attach(document.body);
	//获取验证码按钮点击事件
	//$(document).on("click", ".btn-get-code", function(){});
	//click事件在微信内置浏览器和Safari中无法响应？？？
	$(".btn-get-code").click(function(){
		var val = $(".inp-tel").val();
		var regex = /^1\d{10}$/;
		if(!regex.test(val)){
			weui.topTips("请填写正确的号码", 2000);
			return;
		}
		
		//调用后台验证码发送的controller 成功后执行下面代码
		
		getCodeTimeOut($(this), 60);
		weui.topTips("验证码已发送到手机", {
		    duration: 2000,
		    className: "bg-success",
		    callback: function(){}
		});
		
	});
	
	//登录按钮点击事件
	$(".btn-login").click(function(){
		var vcode = $(".inp-vcode").val();
		var tel = $(".inp-tel").val();
		var regex = /^1\d{10}$/;
		if(!regex.test(tel)){
			weui.topTips("请填写正确的号码", 2000);
			return;
		}
		if(vcode.length == 0){
			weui.topTips("请填写验证码", 2000);
			return;
		}
		
		weui.alert("登录");
		//使用ajax调用后台controller登录代码
	
	});
	
	//平台使用协议链接按钮点击事件
	$(".a-sys-use").click(function(){
		weui.alert("平台使用协议", {title: "平台使用协议"});
	});

});

//获取验证码的时间倒数
function getCodeTimeOut(obj, second){
	$(obj).attr("disabled", "disabled");
	var id = setInterval(function(){
		$(obj).text("重新获取"+second+"s");
		if(second > 0){
			second--;
		}else{
			clearInterval(id);
			$(obj).removeAttr("disabled");
			$(obj).text("获取验证码");
		}
	}, 1000);
}