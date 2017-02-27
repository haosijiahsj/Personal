
$(document).ready(function(){
	//使用快速点击消除点击的300毫秒延迟
	FastClick.attach(document.body);
	//初始化页面
	init();
	//用于切换主页内容	
	$(".weui-tabbar__item").each(function(){
		$(this).click(function(){
			window.onhashchange = function(){}
			$(this).addClass("weui-bar__item_on");
			$(this).siblings().removeClass("weui-bar__item_on");			
			//为页面链接添加hash值
			var index = $(this).index();
			//$(".nav-tab").eq(index).show().siblings().hide();
			location.hash = "#!"+index;
			tabPage();
		});
	});
	
	//hash值改变事件
	
	
});

function init(){
	location.hash = "#!0";
	loadPage("duowei.jsp");
}

function tabPage(){
	var hash = location.hash;
	switch(hash.substring(2)){
	case '0': 
		loadPage("duowei.jsp");
		break;
	case '1': 
		loadPage("order.jsp");
		break;
	case '2': 
		loadPage("vip.jsp");
		break;
	case '3': 
		loadPage("personal.jsp");
		break;
	default :
		loadPage("duowei.jsp");
		location.hash = "#!0";
		break;
	}
}

function loadPage(url){
	var loading = null;
	$.ajax({
	    type: "post",
	    contentType: "application/json",
	    dataType: "html",
	    url: url,
	    beforeSend: function () {
	        loading = weui.loading('加载页面中...', {
	            className: 'loading-font'
	        });
	    },
	    success: function (data) {
	    	$(".cont-box").html(data);
	    },
	    complete: function () {//完成响应
	        loading.hide();
	    },
	    error: function (data) {
	        
	    }
	});
}

function changeImgSrc(obj, src){
	$(obj).attr("src", src);
}

