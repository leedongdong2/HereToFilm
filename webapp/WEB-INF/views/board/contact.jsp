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
<link href="${path}/resources/css/contact.css" rel="stylesheet" >
<script type="text/javascript">
    // 안드로이드 우측 버튼 비활성
    $(document).bind("contextmenu", function (e) {
        return false;
    });
</script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=825397878b670d980b8e737a62c0344e"></script>
</head>
<body>
	<div id="contactWrap">
		<div id="contactBox">
			<div class="leftBox">
				<div class="leftTopBox">
					<div id="map">
						
					</div>
				</div>
			</div>
			<div class="rightBox">
				<div class="logoBox">
					<img class="contactLogo" src="${path}/resources/image/logo.jpg">
				</div>
				<p class="contactFont" style="margin-top:1%"><a href="mailto:info@reelkorea.com" class="infoLink">info@reelkorea.com</a></p>
				<p class="contactFont" style="margin-top:1%">+82 (0)10-4092-2160</p>
				<p class="contactFont" style="margin-top:1%">+82 (0)10-5645-2160</p>
				<p style="margin-top:2%" class="contactFont">B1 , 76 Gangnam-daero 110-gil,Gangnam-gu, Seoul</p>
				<p style="margin-top:2%" class="contactFont">-</p>
				<p style="margin-top:2%;font-weight:bold;" class="contactFont">Members</p>
				<p style="margin-top:3%;" class="contactFont">Represent / Director</p>
				<p class="contactFont">Kim Hyun</p>
				<p style="margin-top:3%" class="contactFont">Project Manager / Director</p>
				<p class="contactFont">Seo Jeong Min</p>
				<p style="margin-top:3%" class="contactFont">Project Manager / Director</p>
				<p class="contactFont">Jeong Jin Yeon</p>
				<p style="margin-top:3%" class="contactFont">DOP</p>
				<p class="contactFont">Park Su Bin</p>
				<p style="margin-top:3%" class="contactFont">Project Manager / Photographer</p>
				<p class="contactFont">Park jaei</p>
				<p style="margin-top:3%" class="contactFont">Art Director</p>
				<p class="contactFont">Kim Se Bin</p>
			</div>
		</div>
	</div>

<script src = '${path}/resources/js/lib/jq.js'></script>
<script src = '${path}/resources/js/contact.js'></script>
</body>
</html>