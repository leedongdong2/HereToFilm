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
<script src = '${path}/resources/js/lib/ScrollTrigger/dist/ScrollTrigger.min.js'></script>
<link href="${path}/resources/css/ourAct.css" rel="stylesheet" >

</head>
<body>
<div id="ourActWarp" style="margin-top:-11vh;margin-bottom:-3%" >
	<div class="ourActBg">
		<video class="ourActVideo" muted="muted" autoplay loop>
				<source src="${path}/resources/ourActImage/show.mp4" type="video/mp4" >
		</video>
		<div class="ourActTilteBox wheel">
			<p class="ourActTilte">CREATIVE PLANNING</p>
			<p class="ourActTilte">CINEMATOGRAPHY</p>
			<p class="ourActTilte">VIDEO EDITING</p>
			<p class="ourActTilte">DIT</p>
		</div>
	</div>
	<div class="ourActBg wheel" id="creativePlanning">
		<img class="ourActImage" src="${path}/resources/ourActImage/Creative.jpg" >
		<div data-activeTop>
			<p class="fontTitle">CREATIVE PLANNING</p>
			<p class="fontTitle" style="margin-bottom:10%">(Pre production)</p>
		</div>	
		<div data-activeBot>
				<p class="fontContents">commercial 하지만 Creative 한 영상을 기획합니다</p>
				<p class="fontContents">미팅을 통해 고객들의 니즈를 파악하고 다양하고 독창적인 레퍼런스와 컨셉 방향을 제안 드립니다</p>
				<p class="fontContents">변수 없는 촬영을 위해 보다 명확한 프로세스를 제공합니다</p>
		</div>
	</div>
	<div class="ourActBg wheel" id="cinematography">
		<img class="ourActImage" src="${path}/resources/ourActImage/cinema.jpg">
			<div data-activeTop>
				<p class="fontTitle">CINEMATOGRAPHY</p>
				<p class="fontTitle" style="margin-bottom:10%">(Production)</p>
			</div>
			<div data-activeBot>
				<p class="fontContents">연출하고자 하는 그림을 구현하고 보다 감각적인 무드를 제안 드립니다</p>
				<p class="fontContents">매 영상의 톤 앤 매너에 맞춰 바디와 렌즈를 결정합니다</p>
				<p class="fontContents">촬영에 따라 특수촬영 그립팀부터 조명팀까지 모두 핸들링합니다</p>
			</div>
	</div>
	<div class="ourActBg wheel" id="videoEditing">
		<img class="ourActImage" src="${path}/resources/ourActImage/creative work.jpg">
			<div data-activeTop>
				<p class="fontTitle">CREATIVE WORK</p>
				<p class="fontTitle" style="margin-bottom:10%">(POST PRODUCTION)</p>
			</div>
			<div data-activeBot>
				<p class="fontContents">회사 내 편집 밑 DI실에서 현장 시사를 통해</p>
				<p class="fontContents">감각적인 컷부터 최고의 룩을 제공합니다</p>
				<p class="fontContents">2D/3D 및 Compotition 및 후반 CG를 제공합니다</p>
			</div>
	</div>
	<div class="ourActBg wheel" id="dit">
		<img class="ourActImage" src="${path}/resources/ourActImage/DIT.jpg">
			<div data-activeTop>
				<p class="fontTitle">DIT</p>
				<p class="fontTitle" style="margin-bottom:10%">(Digital Imaging Technician)</p>
			</div>
			<div data-activeBot>
				<p class="fontContents">프리프로덕션 단계부터 참여하며</p>
				<p class="fontContents">예산에 맞는 최고의 장비셋을 구성합니다</p>
				<p class="fontContents">안정적인 데이터 매니징부터</p>
				<p class="fontContents">Look-up Table을 통한 현장 색보정으로</p>
				<p class="fontContents">촬영과 조명의 어드바이스를 드립니다</p>
				<p class="fontContents">NAS 서버를 통해 프록시 파일과 EDL을 통해</p>
				<p class="fontContents">연출,사운드,VFX팀 간의 소통을 원활히 합니다</p>
			</div>
	</div>
	<div id="cliantImageZone">
		<img class="cliantImage" src="${path}/resources/image/client.jpg">
	</div>

</div>
<script src = '${path}/resources/js/lib/jq.js'></script>
<script src = '${path}/resources/js/ourAct.js'></script>
</body>
</html>