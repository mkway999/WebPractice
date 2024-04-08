<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<div class="header-container">
	<h1 class="header-logo">
		<a>로고 들어갈거지롱</a>
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
</div>