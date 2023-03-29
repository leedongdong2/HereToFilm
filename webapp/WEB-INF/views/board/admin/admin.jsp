<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<%
	if (!session.getAttribute("user_grade").equals("admin")) {
	    response.sendRedirect("/hereToFilm/admin/login.main");
	}
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>heretofilm - admin</title>

</head>
<body>
<div id="adminWrap">
	<div class="bannerVideo">
	
	</div>
	<div class="mainVideoList">
	
	</div>
	<div id="aboutImage" class="aboutImage">
		
	</div>
</div>

<script src='${path}/resources/js/lib/jq.js'></script>
<script src='${path}/resources/js/admin/admin.js'></script>
</body>
</html>