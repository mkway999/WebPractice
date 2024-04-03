<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MainLayout1.jsp</title>
<link rel="stylesheet" href="css/mainLayout1Header.css" />
<link rel="stylesheet" href="css/mainLayout1.css" />
<link rel="stylesheet" href="css/main.css" />
</head>
<body>

<div class="main-header-div">
	<c:import url="MainLayout1_Header.jsp"></c:import>
</div>

<div class="main-body">
	<div class="">여기 이미지 캐러셀</div>
	여기에 메인 컨텐츠
	<br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
	<br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
	<br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
	<br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
	<br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
	<br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
	<br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
</div>

</body>
</html>