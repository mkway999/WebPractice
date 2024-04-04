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
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="css/mainLayout1Header.css" />
<link rel="stylesheet" href="css/mainLayout1.css" />
<link rel="stylesheet" href="css/main.css" />
</head>
<body>

<div class="main-header-div">
	<c:import url="MainLayout1_Header.jsp"></c:import>
</div>

<div class="main-body">
	<div id="carousel-div" class="carousel slide" data-bs-ride="carousel">
	  <div class="carousel-inner">
	    <div class="carousel-item active" data-bs-interval="3000">
	    	첫 번째 캐러셀
	    </div>
	    <div class="carousel-item" data-bs-interval="3000">
	    	두 번째 캐러셀
	    </div>
	    <div class="carousel-item" data-bs-interval="3000">
	    	세 번째 캐러셀
	    </div>
	  </div>
	  <!-- 
	  <button class="carousel-control-prev" type="button" data-bs-target="#carousel-div" data-bs-slide="prev">
	    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
	    <span class="visually-hidden">Previous</span>
	  </button>
	  <button class="carousel-control-next" type="button" data-bs-target="#carousel-div" data-bs-slide="next">
	    <span class="carousel-control-next-icon" aria-hidden="true"></span>
	    <span class="visually-hidden">Next</span>
	  </button>
	   -->
	</div>

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