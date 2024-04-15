<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<div class="header-container">
	<h1 class="header-logo">
		<a class="header-link"><span id="header-title">오늘이냥</span></a>
	</h1>
	<nav class="header-menu-wrap">
		<ul class="header-menu-list">
			<li class="header-menu">
				<a class="menu-link">나의일정</a>
				<ul class="header-menu-sub">
					<li><a>서브메뉴1</a></li>
					<li><a>서브메뉴2</a></li>
					<li><a>서브메뉴3</a></li>
				</ul>
			</li>
			<li class="header-menu">
				<a class="menu-link">커뮤니티</a>
				<ul class="header-menu-sub">
					<li><a>서브메뉴1</a></li>
					<li><a>서브메뉴2</a></li>
					<li><a>서브메뉴3</a></li>
				</ul>
			</li>
			<li class="header-menu">
				<a class="menu-link">쇼핑하기</a>
				<ul class="header-menu-sub">
					<li><a>서브메뉴1</a></li>
					<li><a>서브메뉴2</a></li>
					<li><a>서브메뉴3</a></li>
				</ul>
			</li>
			<li class="header-menu">
				<a class="menu-link">문의하기</a>
				<ul class="header-menu-sub">
					<li><a>서브메뉴1</a></li>
					<li><a>서브메뉴2</a></li>
					<li><a>서브메뉴3</a></li>
				</ul>
			</li>
			<li class="header-menu">
				<a class="menu-link">공지사항</a>
				<ul class="header-menu-sub">
					<li><a>서브메뉴1</a></li>
					<li><a>서브메뉴2</a></li>
					<li><a>서브메뉴3</a></li>
				</ul>
			</li>
		</ul>
	</nav>
	<div class="header-sub-menu">
		<a class="header-sign header-sign-in">로그인</a>
		<a class="header-sign header-sign-up">회원가입</a>
	</div>
</div>