// 풀페이지 애니메이션 연습
// 출처 : https://ctrlcccv.github.io/code/2023-12-04-fullpage/

$(window).on('load', function () {
    fullPage();
});

function fullPage() {
	// 현재 활성화된 섹션의 인덱스
    let currentSection = 0;
    
    // section 클래스의 모든 요소
    const $sections = $('.section');
    // 헤더에 위치한 모든 메뉴 항목들 
    const $menu =  $('.menu > li');
    // 푸터 영역
    const $footer = $('footer');
	
	// 헤더의 높이     
    let menuHeight = $('header').height();
    // 스크롤중인지의 여부 확인
    let isScrolling = false;
    // 윈도우 크기가 유효한지 확인
    let isWindowSizeValid = false;
    // 섹션(메뉴)의 갯수
    const numSections = $sections.length;

    // 윈도우 크기 확인 함수 정의 
    function checkWindowSize() {
        const windowWidth = window.innerWidth;
        const windowHeight = window.innerHeight;
        isWindowSizeValid = windowWidth > 767 && windowHeight > 700;
        menuHeight = $('header').height();
    }
    // 초기 윈도우 크기 확인
    checkWindowSize();
    // 윈도우 크기 변경 시 윈도우 크기 확인
    $(window).on('resize', checkWindowSize);
    
    // 메뉴 클릭 이벤트 핸들러
    // 메뉴 항목 클릭시 해당 섹션으로 스크롤 되도록 
    function clickHandler(e, targetSectionIndex) {
		// preventDefault : href 링크로 이동되지 않게 막아주는 것
        e.preventDefault();
        
        // 해당 섹션의 상단 좌표값
        const offset = $sections.eq(targetSectionIndex).offset().top;
        // 현재 활성화된 섹션의 인덱스는 매개변수로 넘어온 타겟 요소 
        currentSection = targetSectionIndex;
        // 해당 섹션으로 스크롤 이동
        // offset - menuHeight : 헤더 높이만큼 뻬야 섹션의 콘텐츠가 모두 보이니까 
        $('html,body').animate({ scrollTop: offset - menuHeight }, 500);
    }
    
    // 메뉴 클릭 이벤트 핸들러
    // 메뉴 자식계층의 'a' 태그를 클릭할 시
    $menu.children('a').on('click', function (e) {
        const targetSectionIndex = $sections.index($($(this).attr('href')));
        clickHandler(e, targetSectionIndex);
    });

    // 섹션 스크롤 함수
    function scrollToSection(sectionIndex) {
        const targetPosition = sectionIndex === numSections ? $footer.offset().top : $sections.eq(sectionIndex).offset().top;
        //특정 섹션으로 스크롤 이동
        $('html, body').animate({
            scrollTop: targetPosition - menuHeight
        }, 500, function () {
            isScrolling = false;
        });
    }
    

    // 스크롤 이벤트 핸들러
    function handleScroll(e) {
        if (!isWindowSizeValid || isScrolling)
        	return;
        isScrolling = true;

        // 스크롤 방향에 따라 섹션 인덱스 변경
        if (e.originalEvent.deltaY < 0 && currentSection > 0) {
            currentSection--;
        } else if (e.originalEvent.deltaY > 0 && currentSection < numSections - 1) {
            currentSection++;
        } else if (e.originalEvent.deltaY > 0 && $footer.offset().top - $(window).scrollTop() <= window.innerHeight) {
            currentSection = numSections;
        }
        scrollToSection(currentSection);
    }

    // 마우스 휠 이벤트 핸들러
    $(window).on('wheel', handleScroll);

    // 터치 이벤트 핸들러
    let touchStartY = 0;
    $(window).on('touchstart', function (e) {
        if (!isWindowSizeValid || isScrolling) return;
        touchStartY = e.originalEvent.touches[0].clientY;
    });

    $(window).on('touchmove', function (e) {
        if (!isWindowSizeValid || isScrolling) return;
        const currentY = e.originalEvent.touches[0].clientY;
        const deltaY = currentY - touchStartY;

        // 터치 방향에 따라 섹션 인덱스 변경
        if (deltaY < 0 && currentSection < numSections) {
            currentSection++;
        } else if (deltaY > 0 && $footer.offset().top - $(window).scrollTop() <= window.innerHeight) {
            currentSection--;
        } else if (deltaY > 0 && currentSection > 0) {
            currentSection--;
        }
        scrollToSection(currentSection);
        isScrolling = true;
    });

    $(window).on('touchend', function () {
        if (!isWindowSizeValid) return;
        isScrolling = false;
    });

    // 스크롤 이벤트 핸들러를 통해 활성 메뉴 업데이트
    $(window).scroll(function(){
        let scltop = $(window).scrollTop() + menuHeight;
        
        $.each($sections, function(idx){
            let targetTop = $(this).offset().top;
            
            // 타겟(this)의 상단이 스크롤 상단보다 위에 있으면  
            if (targetTop <= scltop) {
				// active 클래스 해제 
                $menu.removeClass('active');
                $menu.eq(idx).addClass('active');
            }
        });
        if (Math.round($(window).scrollTop()) == $(document).height() - $(window).height()) {
            $menu.last().addClass('active').siblings().removeClass('active');
        }
    }).scroll();
}
