<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>heretofilm</title>
<link href="${path}/resources/css/footer.css" rel="stylesheet" >
</head>
<body>

<c:if test="${requestScope.hederTitle ne 'aboutUs' }">
	<div id="footWarp">
		<div class="firstBox">
			<p class="footerTitle"><a href="/" class="footLink">INDEX</a></p>
			<p><a href="/home.main" class="footLink">Home</a></p>
			<p><a href="/about.main" class="footLink">About us</a></p>
			<p><a href="/ourAct.main" class="footLink">Our Act</a></p>
			<p><a href="/contact.main" class="footLink">Contact</a></p>
			<p><a href="/still.main" class="footLink">still</a></p>
		</div>
		
		<div class="secondBox">
			<p class="footerTitle">Here to Film & Reel</p>
			<p>Represent / Director</p>
			<p>Kim Hyun</p>
			<p class="fontMargin">Project Manager / Director</p>
			<p>Seo Jeong Min</p>
			<p class="fontMargin">Project Manager / Director</p>
			<p>Jeong Jin Yeon</p>
			<p class="fontMargin">DOP</p>
			<p>Park Su Bin</p>
			<p class="fontMargin">Project Manager / Photographer</p>
			<p>Park jaei</p>
			<p class="fontMargin">Art Director</p>
			<p>Kim Se Bin</p>		
		</div>
	
		<div class="thirdBox">
			<p class="footerTitle">CONTACT</p>
			<p>Korea</p>
			<p class="addressFont">1B, 76 Gangnam-daero 110-gil</p>
			<p class="addressFont">Gangnam-gu</p>
			<p class="addressFont">Seoul</p>
		</div>
		
		<div class="fourthBox">
			<p class="footerTitle">+82 (0)10-4092-2160</p>
			<p class="footerTitle">+82 (0)10-5645-2160</p>
			<p class="emailMargin"><a href="mailto:info@reelkorea.kr" class="footLink">info@reelkorea.kr</a></p>
			<p class="emailMargin"><a href="mailto:info@heretofilm.com" class="footLink">info@heretofilm.com</a></p>
			<p class="instaMargin"><a href="https://www.instagram.com/heretofilm/" class="footLink">HERE TO FILM</a></p>
			<p class="ppMargin"><a href="https://vimeo.com/reelkorea" class="footLink">REEL</a></p>
		</div>
	</div>
</c:if>

<c:if test="${requestScope.hederTitle eq 'aboutUs' }">
	<div id="footWarpAbout">
		<div class="firstBox">
			<p class="footerTitle"><a href="/" class="footLinkAbout">INDEX</a></p>
			<p><a href="/home.main" class="footLinkAbout">Home</a></p>
			<p><a href="/about.main" class="footLinkAbout">About us</a></p>
			<p><a href="/ourAct.main" class="footLinkAbout">Our Act</a></p>
			<p><a href="/contact.main" class="footLinkAbout">Contact</a></p>
			<p><a href="/still.main" class="footLinkAbout">still</a></p>
		</div>
		
		<div class="secondBox">
			<p class="footerTitle">Here to Film & Reel</p>
			<p>Represent / Director</p>
			<p>Kim Hyun</p>
			<p class="fontMargin">Project Manager / Director</p>
			<p>Seo Jeong Min</p>
			<p class="fontMargin">Project Manager / Director</p>
			<p>Jeong Jin Yeon</p>
			<p class="fontMargin">DOP</p>
			<p>Park Su Bin</p>
			<p class="fontMargin">Project Manager / Photographer</p>
			<p>Park jaei</p>
			<p class="fontMargin">Art Director</p>
			<p>Kim Se Bin</p>		
		</div>
		
		<div class="thirdBox">
			<p class="footerTitle">CONTACT</p>
			<p>Korea</p>
			<p class="addressFontAbout">1B, 76 Gangnam-daero 110-gil</p>
			<p class="addressFontAbout">Gangnam-gu</p>
			<p class="addressFontAbout">Seoul</p>
		</div>
		
		<div class="fourthBox">
			<p class="footerTitle">+82 (0)10-4092-2160</p>
			<p class="emailMargin"><a href="mailto:info@reelkorea.kr" class="footLinkAbout">info@reelkorea.kr</a></p>
			<p class="emailMargin"><a href="mailto:info@heretofilm.com" class="footLinkAbout">info@heretofilm.com</a></p>
			<p class="instaMargin"><a href="https://www.instagram.com/heretofilm/" class="footLinkAbout">HERE TO FILM</a></p>
			<p class="ppMargin"><a href="https://vimeo.com/reelkorea" class="footLinkAbout">REEL</a></p>
		</div>
	</div>
</c:if>
</body>
</html>