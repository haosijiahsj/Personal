
$(document).ready(function(){
	//使用快速点击消除点击的300毫秒延迟
	FastClick.attach(document.body);
	
	$(".nav-item").click(function(){
		$(this).addClass("nav-item-on");
		$(this).siblings().removeClass("nav-item-on");
	});
	
	//滑动屏幕切换
	$(".order-box").swipe({
  		swipeLeft:function(){
  			var obj = $(".nav-item-on").next();
			$(obj).addClass("nav-item-on");
			$(obj).siblings().removeClass("nav-item-on");
  	    },
  	    swipeRight:function(){
  	    	var obj = $(".nav-item-on").prev();
			$(obj).addClass("nav-item-on");
			$(obj).siblings().removeClass("nav-item-on");
  	    }
	    
	  });

});