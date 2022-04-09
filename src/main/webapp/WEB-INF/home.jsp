<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MVC Film Site</title>
</head>
<body>

	<h1>Film Site</h1>

	<!--  Single Film (Smoke Test) -->
	<c:choose>
		<c:when test="${empty film}">
			<ul>
				<li><a href="test.do">View Film (test)</a></li>
			</ul>
		</c:when>
		<c:when test="${not empty film}">
			<ul>
				<li>${film.id}</li>
				<li>${film.title}</li>
				<li>${film.description}</li>
				<li>${film.rating}</li>
				<li><a href="/MVCFilmSite">Return Home</a></li>
			</ul>
		</c:when>
		<c:otherwise>
			<p>No film found</p>
		</c:otherwise>
	</c:choose>

</body>
</html>