<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<div class="header-container">
	<h1 class="header-logo">
		<a class="header-link">
			<span class="header-title" id="d-title">오늘이냥</span>
			<span class="header-title" id="m-title">냥!</span>
		</a>
	</h1>
	<nav class="header-menu-wrap">
		<ul class="header-menu-list" id="d-menu-list">
			<li class="header-menu">
				<a class="menu-link" href=""><span>나의일정</span></a>
				<ul class="header-menu-sub">
					<li><a href="">서브메뉴1</a></li>
					<li><a href="">서브메뉴2</a></li>
					<li><a href="">서브메뉴3</a></li>
				</ul>
			</li>
			<li class="header-menu">
				<a class="menu-link" href=""><span>커뮤니티</span></a>
				<ul class="header-menu-sub">
					<li><a href="">서브메뉴1</a></li>
					<li><a href="">서브메뉴2</a></li>
					<li><a href="">서브메뉴3</a></li>
				</ul>
			</li>
			<li class="header-menu">
				<a class="menu-link" href=""><span>쇼핑하기</span></a>
				<ul class="header-menu-sub">
					<li><a href="">서브메뉴1</a></li>
					<li><a href="">서브메뉴2</a></li>
					<li><a href="">서브메뉴3</a></li>
				</ul>
			</li>
			<li class="header-menu">
				<a class="menu-link" href=""><span>문의하기</span></a>
				<ul class="header-menu-sub">
					<li><a href="">서브메뉴1</a></li>
					<li><a href="">서브메뉴2</a></li>
					<li><a href="">서브메뉴3</a></li>
				</ul>
			</li>
			<li class="header-menu">
				<a class="menu-link" href=""><span>공지사항</span></a>
				<ul class="header-menu-sub">
					<li><a href="">서브메뉴1</a></li>
					<li><a href="">서브메뉴2</a></li>
					<li><a href="">서브메뉴3</a></li>
				</ul>
			</li>
		</ul>
	</nav>
	<div class="header-sub-menu">
		<a class="header-sign header-sign-in">로그인</a>
		<a class="header-sign header-sign-up">회원가입</a>
	</div>
</div>