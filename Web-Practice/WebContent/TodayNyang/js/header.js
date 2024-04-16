$(document).ready(function(){
	
	// 헤더 요소
	const header = $("#header-wrap");
	// 헤더의 높이 
	const headerHeight = $(header).height();
	alert(headerHeight);
	
	
	
	$(".header-menu-list>li").mouseenter(function(){
		$(".header-menu-sub").stop().slideDown(300);
		$(this).css("border-bottom", "2px solid #ededed");
	});
	
	$(".header-menu-list>li").mouseleave(function(){
		$(".header-menu-sub").stop().slideUp(300);
		$(this).css("border-bottom", "none");
	});
	
	$(".header-menu-list>li>ul>li").mouseenter(function(){
		$(this).css("font-weight", "bold");
	});
	
	$(".header-menu-list>li>ul>li").mouseleave(function(){
		$(this).css("font-weight", "normal");
	});
	
	
	
});