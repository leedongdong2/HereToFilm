
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="heretofilm & reel">
<title>heretofilm</title>
<link href="${path}/resources/css/home.css" rel="stylesheet" >
<link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
<meta name="viewport" content="width=device-width, maximum-scale=1.0, minimum-scale=1, user-scalable=yes,initial-scale=1.0" />
<script type="text/javascript">
    // 안드로이드 우측 버튼 비활성
    $(document).bind("contextmenu", function (e) {
        return false;
    });
</script>	
</head>
<body>
<div class="homeWrap">
	<div class="banner">
			<div class="single-item">
				<c:forEach var="bannerVo" items="${bannerList}">
				 	<div class="bannerItemBox">
					 	<div class="bannerVideoBox" onclick="postHref('serial',${bannerVo.serial},'/bannerVideoDetail.main')">
				 			<img class="vMain" src="${path}/resources/bannerVideo/${bannerVo.videoName}.jpg">
						</div>
						<div class="bannerTitleBox">
							<div class="bannerTitle" >
								<span>${bannerVo.videoTitle}</span>
							</div>
							<div class="bannerSmallTitle">
								<span>${bannerVo.videoSmallTitle}</span>
							</div>
						</div>
				 	</div>
				</c:forEach>
			</div>
			<div id="pager"> 
			 	<div class="prev"> 
			 		<span></span> 
				</div> 
				<div class="next"> 
					<span></span> 
				</div> 
			</div>
	</div>
	 
		<div class="videoList">
			<c:forEach var="vo" items="${list}">
				<div class="video" onclick="postHref('serial',${vo.serial},'/videoDetail.main')">
				<video class="playList" muted="muted" loop>
					<source src="${path}/resources/video/${vo.videoName}.mp4#t=0.5" type="video/mp4" >
				</video>
					<div class="listTitlebox">
						<div><p class="videoTitle">${vo.videoTitle}</p></div>
					</div>
					<div><p class="videoSmallTitle">${vo.videoSmallTitle}</p></div>
				</div>
			</c:forEach>
		</div>
		

</div>
<!-- 스크립트 -->
<script src = '${path}/resources/js/lib/jq.js'></script>
<script type="text/javascript" src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
<script src = '${path}/resources/js/home.js'></script>

</body>
</html>