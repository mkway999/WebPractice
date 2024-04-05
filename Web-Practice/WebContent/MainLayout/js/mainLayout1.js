$(document).ready(function(){
	
	// scroll 애니메이션 연습
	// 출처 : https://ctrlcccv.github.io/code/2023-10-30-scroll-show/
	
	// scroll-on 클래스의 요소 선택
	const counters = $(".scroll-on");
	
	// 노출 비율 
	// 스크롤시 counters 컨텐츠 화면에 100% 노출되면 애니메이션 활성화 
	const exposurePercentage = 100;
	
	// 애니메이션 반복여부
	// true : 요소가 화면에서 사라질 때 다시 숨겨짐
	const loop = true;
	
	// 윈도우의 스크롤 이벤트 모니터링
	// 사용자가 스크롤을 하면 해당 이벤트 발생 
	$(window).on('scroll', function() {
		// counters 요소에 반복
		counters.each(function() {
			// 각각의 엘리먼트 선택 
			const el = $(this);
			
			// 요소의 위치 정보
			const rect = $(el)[0].getBoundingClientRect();
			// 윈도우의 창 높이 정보 
			const winHeight = window.innerHeight;
			// 요소의 높이 정보 
			const elHeight = rect.bottom - rect.top;
			
			// 요소가 화면에 특정 비율만큼 노출될 때 처리
			if(rect.top <= winHeight - (elHeight * exposurePercentage / 100) && rect.bottom >= (elHeight * exposurePercentage / 100)){
				$(el).addClass("active");
			}
			
			// 요소가 화면에서 완전히 사라질 때 처리
			if(loop && (rect.bottom <= 0 || rect.top >= window.innerHeight)){
				$(el).removeClass("active");
			}
		});	
	}).scroll();
});