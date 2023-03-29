<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
	<head>
		<link href="${path}/resources/css/header.css" rel="stylesheet" />
		<meta charset="UTF-8" />
		<meta name="viewport" content="width=device-width,initial-scale=1" />	
		<title>heretofilm</title>
	</head>
	<body>
		<c:if test = "${requestScope.hederTitle ne 'aboutUs' && requestScope.hederTitle ne 'contact' && requestScope.hederTitle ne 'still' && requestScope.hederTitle ne 'videoDetail'}">
			<span id="menuBar" class="menuBar">menu</span>
			<div id="topMenu">
				<ul>
					<li><a class="menuLink" href="/home.main">Home</a></li>
					<li><a class="menuLink" href="/about.main">AboutUs</a></li>
					<li><a class="menuLink" href="/ourAct.main">OurAct</a></li>
					<li><a class="menuLink" href="/contact.main">Contact</a></li>
					<li><a class="menuLink" href="/still.main">still</a>
				</ul>
			</div>
		</c:if>
		<c:if test = "${requestScope.hederTitle eq 'aboutUs' }">
		<div style="background-color: #000000;width:100%;height:10vh" >
			<span id="menuBar" class="menuBarAbout">menu</span>
			<nav id="topMenu">
				<ul>
					<li><a class="menuLinkAbout" href="/home.main">Home</a></li>
					<li><a class="menuLinkAbout" href="/about.main">AboutUs</a></li>
					<li><a class="menuLinkAbout" href="/ourAct.main">OurAct</a></li>
					<li><a class="menuLinkAbout" href="/contact.main">Contact</a></li>
					<li><a class="menuLinkAbout" href="/still.main">still</a>
				</ul>
			</nav>
			<span class="vimeoAbout"><a href="https://vimeo.com/reelkorea" class="vimeoAboutLink">vimeo</a></span>
		</div>
		</c:if>
		
		<c:if test = "${requestScope.hederTitle eq 'contact' || requestScope.hederTitle eq 'still' || requestScope.hederTitle eq 'videoDetail' }">
			<span id="menuBar" class="menuBarI">menu</span>
			<nav id="topMenu">
				<ul>
					<li><a class="menuLinkI" href="/home.main">Home</a></li>
					<li><a class="menuLinkI" href="/about.main">AboutUs</a></li>
					<li><a class="menuLinkI" href="/ourAct.main">OurAct</a></li>
					<li><a class="menuLinkI" href="/contact.main">Contact</a></li>
					<li><a class="menuLinkI" href="/still.main">still</a>
				</ul>
			</nav>
			<span class="vimeoAbout"><a href="https://vimeo.com/reelkorea" class="vimeoAboutLinkI">vimeo</a></span>
		</c:if>
		
		<c:if test = "${requestScope.hederTitle eq 'home' }">
			<span class="title">HereToFilm & Reel</span>
		</c:if>
		
		<c:if test = "${requestScope.hederTitle eq 'ourAct' }">
			<span class="title">Our Act</span>
			<span class="vimeo"><a href="https://vimeo.com/reelkorea" class="vimeoLink">vimeo</a></span>
		</c:if>
		<c:if test = "${requestScope.hederTitle eq 'contact' }">
			<span class="title">Contact</span>
		</c:if>
	</body>
	<!-- 스크립트 -->
	<script src = '${path}/resources/js/header.js'></script>
	<script src = '${path}/resources/js/lib/jq.js'></script>
</html>