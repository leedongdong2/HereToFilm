<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>heretofilm</title>
<meta name="naver-site-verification" content="2f27e28f327d9c074fb8b4f4d6343bac5efda0f1" />
<meta name="description" content="heretofilm & reel">
<meta name="og:type" content="website"> 
<meta name="og:title" content="heretofilm">
<meta name="og:description" content="heretofilm&reel">
<meta name="og:url" content="http://www.heretofilm.com">
<meta name="twitter:card" content="summary">
<meta name="twitter:title" content="heretofilm">
<meta name="twitter:description" content="heretofilm & reel">
<meta name="twitter:domain" content="http://www.heretofilm.com">
<link href="${path}/resources/css/index.css" rel="stylesheet">
</head>
<body>
	<div class="bodySize">
			<span class="title">
	 			HereToFilm & Reel
			</span>
	</div>
	<script>
		window.addEventListener("DOMContentLoaded", function() {
			setTimeout(function() {
				location.href = "/home.main";
			}, 3000);
		});
	</script>
</body>
</html>