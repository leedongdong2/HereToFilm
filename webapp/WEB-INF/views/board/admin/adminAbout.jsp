<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>
		<div>
			<span>이미지이름</span>
			<span>이미지순서</span>
		</div>
		<c:forEach var="aboutList" items="${aboutList}"> 
			<div>
				<span>${aboutList.imgName}</span>
				<span>
					<input type="text" value="${aboutList.imgOrder }"/> 
				</span>
			</div>
		</c:forEach>
		<div>
			<form name="aboutInsertForm">
				<input type="file" id="adminAboutFile" name="adminAboutFile">
				<input type="button" id="adminAboutSave" value="저장">
			</form>
			<form action="" method="post">
				<input type="text">
				<input type="text">
				<input type="button" value="수정">
			</form>
		</div>
		
		<div id='btn_zone'>
			<c:if test="${adminPage.startPage>1 }">
				<input type='button' value='≪' class='btn_find1' onclick="adminPageMove(1)">
				<input type='button' value='이전' class='btn_find1' onclick="adminPageMove(${adminPage.startPage-1})">
			</c:if>
			
			<c:forEach var ="p" begin="${adminPage.startPage }" end="${adminPage.endPage }">
				<input type='button' value="${p }" class='btn_find' onclick="adminPageMove(${p})">
			</c:forEach>
			
			<c:if test="${adminPage.endPage<adminPage.totPage }">
				<input type='button' value='다음' class='btn_find1' onclick="adminPageMove(${adminPage.endPage+1})">
				<input type='button' value='≫' class='btn_find1' onclick="adminPageMove(${adminPage.totPage})">
			</c:if>
		</div>
	</div>
<script src='${path}/resources/js/lib/jq.js'></script>
<script src='${path}/resources/js/admin/adminAbout.js'></script>
</body>
</html>