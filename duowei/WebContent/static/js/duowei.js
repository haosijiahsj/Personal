
$(document).ready(function(){
	//使用快速点击消除点击的300毫秒延迟
	FastClick.attach(document.body);
	//加载swiper
	var mySwiper = new Swiper('.swiper-container',{
	    loop: true,
		autoplay: 3000,
	    pagination: '.swiper-pagination'
	});

});