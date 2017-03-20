
$(document).ready(function(){
	//使用快速点击消除点击的300毫秒延迟
	FastClick.attach(document.body);
	//初始化页面
	init();
	swal('Good job!', 'You clicked the button!', 'success');
	//用于切换主页内容	
	$(".weui-tabbar__item").each(function(){
		$(this).click(function(){
			//window.onhashchange = function(){}
			//如果当前已经是在点击的选项的页面，则不用重新请求，节省资源
			var isCurPage = $(this).hasClass("item_on");
			if(isCurPage){
				return;
			}
			$(this).addClass("item_on");
			$(this).siblings().removeClass("item_on");			
			//为页面链接添加hash值
			var index = $(this).index();
			//$(".nav-tab").eq(index).show().siblings().hide();
			location.hash = "#!"+index;
			tabPage(""+index);
		});
	});
	
	//hash值改变事件
	
	
});

//进入页面前的初始化
function init(){
	//在页面刷新时，仍然留在当前页面中
	var hash = location.hash;
	var val = hash.substring(2);
	tabPage(val);
	$(".weui-tabbar__item").eq(val).addClass("item_on");
	$(".weui-tabbar__item").eq(val).siblings().removeClass("item_on");	

}

//切换页面
function tabPage(val){
	var host = location.host;
	switch(val){
	case '0': 
		loadPage("h5/duowei.jsp");
		break;
	case '1': 
		loadPage("h5/order.jsp");
		break;
	case '2': 
		loadPage("h5/vip.jsp");
		break;
	case '3': 
		loadPage("h5/personal.jsp");
		break;
	default :
		loadPage("h5/duowei.jsp");
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
	        loading = weui.loading('页面加载中...', {
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

