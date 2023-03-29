<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>heretofilm</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
	.stillImageBox{
		width:100vw;
		height: 100vh;
	}
	
	.stillImage {
		object-fit : fill;
		width:100%;
		height:100%;		
	}
</style>
</head>
<body>
<div class="stillWrap">
	<div class="stillImageBox">
		<img class="stillImage" src="${path}/resources/image/STILL/111.jpg">	
	</div>
	<div class="stillImageBox">
		<img class="stillImage" src="${path}/resources/image/STILL/1COMMERCIAL.jpg">	
	</div>
	<div class="stillImageBox">
		<img class="stillImage" src="${path}/resources/image/STILL/1COMMERCIAL2.jpg">	
	</div>
	<div class="stillImageBox">
		<img class="stillImage" src="${path}/resources/image/STILL/2MUSIC.jpg">	
	</div>
	<div class="stillImageBox">
		<img class="stillImage" src="${path}/resources/image/STILL/3VIRAL.jpg">	
	</div>
	<div class="stillImageBox">
		<img class="stillImage" src="${path}/resources/image/STILL/4PHOTO.jpg">	
	</div>
	<div class="stillImageBox">
		<img class="stillImage" src="${path}/resources/image/STILL/5INTREACTIVE.jpg">	
	</div>
</div>
</body>
</html>