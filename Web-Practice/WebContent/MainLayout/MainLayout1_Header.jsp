<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<div class="header">
	<div class="header-title-div">
		<a class="header-title">MainLayout1</a>
		<div class="hover-text">메인으로 바로가기</div>
	</div>
	<div class="header-menu-div">
		<div class="header-button-signup">
			<a class="header-button signup">회원가입</a>
		</div>
		<div class="header-button-signin">
			<a class="header-button signin">로그인</a>
		</div>
	</div>
</div>