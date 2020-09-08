<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="rootPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name='viewport' content='width=device-width, initial-scale=1'>
<title>나의 홈페이지</title>
<link rel="stylesheet"
	href="${rootPath}/static/css/main.css?ver-2020-08-31-003" />
<script src="https://code.jquery.com/jquery-latest.min.js"></script>
<!-- font awesome ë§í¬-->
<script src="https://kit.fontawesome.com/45b24f3187.js"
	crossorigin="anonymous"></script>
<style type="text/css">
<
style>* {
	box-sizing: border-box;
	margin: 0;
	padding: 0;
}

header {
	background-color: skyblue;
	color: white;
	text-align: center;
	padding: 1.5rem;
}
</style>
</head>
<body>
	<header>
		<%@ include file="/WEB-INF/views/include/include-nav.jspf"%>
	</header>
	<section>
		<c:choose>
			<c:when test="${BODY== 'LOGIN'}">
				<%@ include file="/WEB-INF/views/component/member_login.jspf"%>
			</c:when>
			<c:when test="${BODY== 'MEM_WRITE'}">
				<%@ include file="/WEB-INF/views/component/member_write.jspf"%>
			</c:when>
			<c:when test="${BODY== 'MAP'}">
				<%@ include file="/WEB-INF/views/component/kakaomap.jspf"%>
			</c:when>
			<c:otherwise>
				<%@ include file="/WEB-INF/views/include/include-nav.jspf"%>
			</c:otherwise>
		</c:choose>
	</section>
</body>
</html>
