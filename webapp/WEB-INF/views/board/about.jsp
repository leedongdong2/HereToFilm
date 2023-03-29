<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>heretofilm</title>
<link href="${path}/resources/css/about.css" rel="stylesheet">

</head>
<body>
	<div style="background-color: #000000" id="wrap">
		<div class="about" id="about">
			<div class="aboutLogoBox">
				<img src="${path}/resources/image/reelLogo.png" class="aboutLogo">
			</div>
			<p style="padding-top: 5%; color: #ffffff; background-color: #000000"
				class="aboutFont">REEL</p>
			<p style="margin-top: 30px; color: #ffffff" class="aboutFont">하나의
				원은 시작과 끝이 만나는 하나의 선으로 만들어져 돌고 도는 윤회를 상징합니다.</p>
			<p style="color: #ffffff; margin-top: 10px;" class="aboutFont">저희가
				만들어갈 이름 , 문화 , 움직임은 우리가 없어진 후에도 자기만의 생명을 지니고</p>
			<p style="color: #ffffff; margin-top: 10px;" class="aboutFont">계속
				살아남아 미래에도 끊임없이 변화하고 영향을 끼치게 될 것 입니다.</p>
			<p style="margin-top: 30px; color: #ffffff" class="aboutFont">A
				circle is a line which its beginning and ends meet</p>
			<p style="margin-top: 10px; color: #ffffff" class="aboutFont">it
				is a symbol of cycle and transmigration</p>
			<p style="margin-top: 10px; color: #ffffff" class="aboutFont">in
				the hopes of creating a movement with it's own life</p>
			<p style="margin-top: 10px; color: #ffffff" class="aboutFont">we
				act.</p>
		</div>
		<div id="imageZone">
			<c:forEach var="imgItem" items="${aboutImageList}">
				<div class="gridItem">
					<img class="gridItemImg" src="${path}/resources/aboutImage/${imgItem.imgName}.jpg">
				</div>
			</c:forEach>
		</div>
	</div>
	<script src='${path}/resources/js/lib/jq.js'></script>
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/masonry/4.0.0/masonry.pkgd.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.imagesloaded/4.1.0/imagesloaded.pkgd.min.js"></script>
	<script src='${path}/resources/js/about.js'></script>
</body>
</html>