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
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<title>MainLayout2.jsp</title>
<link rel="stylesheet" type="text/css" href="css/mainLayout2.css">
<script type="text/javascript" src="http://code.jquery.com/jquery-3.6.4.min.js"></script>
<script type="text/javascript" src="js/mainLayout2.js"></script>
</head>
<body>
<header>
    <ul class="menu">
    	<!-- href 속성은 해당하는 섹션의 id -->
        <li><a href="#sec1">첫번째 메뉴</a></li>
        <li><a href="#sec2">두번째 메뉴</a></li>
        <li><a href="#sec3">세번째 메뉴</a></li>
        <li><a href="#sec4">네번째 메뉴</a></li>
    </ul>
</header>
<section class="section" id="sec1"></section>
<section class="section" id="sec2"></section>
<section class="section" id="sec3"></section>
<section class="section" id="sec4"></section>
<footer></footer>

</body>
</html>