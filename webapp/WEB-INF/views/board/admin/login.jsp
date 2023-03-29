<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<link href="${path}/resources/css/about.css" rel="stylesheet">

</head>
<body>
	<form action="/bbs/login.main"  method="post">
		<input type="text" name="id"/>
		<input type="text" name="password"/>
		<input type="submit"/>
	</form>
</body>
</html>