$(document).ready(function(){
	$(".header-menu-list>li").mouseenter(function(){
		$(".header-menu-sub").stop().slideDown(300);
	});
	
	$(".header-menu-list>li").mouseleave(function(){
		$(".header-menu-sub").stop().slideUp(300);
	});
	
});