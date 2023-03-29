<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>heretofilm</title>
<link href="${path}/resources/css/videoDetail.css" rel="stylesheet" >
<script type="text/javascript">
    // 안드로이드 우측 버튼 비활성
    $(document).bind("contextmenu", function (e) {
        return false;
    });
</script>
</head>
<body>
	<div id="videoDetailWrap">
		<div>
			<div class="videoDetailTitleBox">
				<p class="videoDetailTitle">${videoDetail.videoTitle}</p>
			</div>
			<div class="videoDetailSize">
				<div style="padding:45.22% 0 0 0;position:relative;">
					<iframe src="${videoDetail.videoLink}&title=0&byline=0&portrait=0" style="position:absolute;top:0;left:0;width:100%;height:100%;" frameborder="0" allow="autoplay; fullscreen; picture-in-picture" allowfullscreen>
					</iframe>
				</div>
			</div>
			<div class="videoDetailMakerBox">
					<p class="videoDetailTitle">${videoDetail.videoTitle}</p>
					 <p class="videoDetailTitle">${videoDetail.videoSmallTitle}</p>
			</div>
		</div>
		<div>
		<c:if test ="${not empty latestVideoList}">
			<div class="latestProjectsBox">
				<p class="latestProjectsTitle">Another Film</p>
			</div>
			<div class="latestProjectsVideoBox">
					<c:forEach var="vo" items="${latestVideoList}">
						<div class="latestProjectsVideo">
							<video muted="muted" class="latestProjectsVideoList"  onclick="postHref('serial',${vo.serial},'/hereToFilm/videoDetail.main')">
								<source src="${path}/resources/video/${vo.videoName}.mp4" type="video/mp4" >
							</video>
							<div class="latestProjectsVideoText"><p class="latestProjectsVideoTitle">${vo.videoTitle }</p></div>
						</div>
					</c:forEach>
			</div>
		</c:if>
		</div>
	</div>
<script src = '${path}/resources/js/lib/jq.js'></script>
<script src = '${path}/resources/js/videoDetail.js'></script>
</body>
</html>