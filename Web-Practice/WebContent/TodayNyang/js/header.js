$(document).ready(function(){
	
	// 헤더 요소
	const header = $("#header-wrap");
	// 헤더의 높이 
	const headerHeight = $(header).height();
	//alert(headerHeight);
	//alert(document.getElementById("main").scrollTop);
	// 메인 컨텐츠 요소
	const mainContainer = document.getElementById("main");
	
	$(window).on('scroll', function()
	{
		const mainHeight = mainContainer.scrollTop;
		//alert(document.documentElement.scrollTop);
		if (document.documentElement.scrollTop >= headerHeight)
		{
			$(header).css("border-bottom", "1px solid black");
		}
		else
		{
			$(header).css("border-bottom", "none");
		}
	});
	
	$(".header-menu-list>li").mouseenter(function(){
		$(".header-menu-sub").stop().slideDown(300);
		$(".header-background").stop().slideDown(300);
		$(this).find("a").find("span").css({"border-bottom":"2px solid #43627F", "font-weight":"bold"});
	});
	
	$(".header-menu-list>li").mouseleave(function(){
		$(".header-menu-sub").stop().slideUp(300);
		$(".header-background").stop().slideUp(300);
		$(this).find("a").find("span").css({"border-bottom":"none", "font-weight":"normal"});
	});
	
	$(".header-menu-list>li>ul>li").mouseenter(function(){
		$(this).css("font-weight", "bold");
	});
	
	$(".header-menu-list>li>ul>li").mouseleave(function(){
		$(this).css("font-weight", "normal");
	});
	
});

function openMenu() {
	document.getElementById("header-overlay-wrap").style.width = "100%";
	document.getElementById("header-overlay-wrap").style.left = "0";
}

function closeMenu() {
	document.getElementById("header-overlay-wrap").style.width = "0";
	document.getElementById("header-overlay-wrap").style.left = "100%";
	
}