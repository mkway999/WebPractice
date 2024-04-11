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
				<a class="menu-link">메뉴1</a>
				<ul class="header-menu-sub">
					<li><a>서브메뉴1</a></li>
					<li><a>서브메뉴2</a></li>
					<li><a>서브메뉴3</a></li>
				</ul>
			</li>
			<li class="header-menu">
				<a class="menu-link">메뉴2</a>
			</li>
			<li class="header-menu">
				<a class="menu-link">메뉴3</a>
			</li>
			<li class="header-menu">
				<a class="menu-link">메뉴4</a>
			</li>
			<li class="header-menu">
				<a class="menu-link">메뉴5</a>
			</li>
		</ul>
	</nav>
	<div class="header-sub-menu">
		<a class="header-login">로그인</a>
		<button>search</button>
		<button>blog</button>
	</div>
</div>