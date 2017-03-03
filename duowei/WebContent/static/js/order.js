
$(document).ready(function(){
	//使用快速点击消除点击的300毫秒延迟
	FastClick.attach(document.body);
	//加载swiper
	
	$(".nav-item").click(function(){
		$(this).addClass("nav-item-on");
		$(this).siblings().removeClass("nav-item-on");
	});

});