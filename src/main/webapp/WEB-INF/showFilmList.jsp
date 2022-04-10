<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<title>MVC Film Site</title>
</head>
<body>
	<div class="container">
		<nav class="navbar navbar-expand-lg navbar-light"
			style="background-color: #e3f2fd;">
			<div class="container-fluid">
				<a class="navbar-brand" href="/MVCFilmSite">Film Site</a>
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarNav"
					aria-controls="navbarNav" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarNav">
					<ul class="navbar-nav">
						<li class="nav-item"><a class="nav-link active"
							aria-current="page" href="searchId.do">Search By ID</a></li>
						<li class="nav-item"><a class="nav-link"
							href="searchKeyword.do">Search by Keyword</a></li>
						<li class="nav-item"><a class="nav-link" href="editFilm.do">Edit
								Film</a></li>
						<li class="nav-item"><a class="nav-link" href="addFilm.do">Add
								Film</a></li>
					</ul>
				</div>
			</div>
		</nav>
		<h4>>Film Details</h4>

		<c:choose>
			<c:when test="${empty film}">
				<!-- NAVIGATION -->
				<ul>
					<li><a href="/MVCFilmSite">Home</a></li>
					<li><a href="searchId.do">Search Film by ID</a></li>
					<li><a href="searchKeyword.do">Search Film by Keyword</a></li>
					<li><a href="showFilm.do">Show Film Details</a></li>
					<li><a href="editFilm.do">Edit Film</a></li>
					<li><a href="addFilm.do">Add Film</a></li>
				</ul>
			</c:when>
			<c:when test="${not empty film}">
				<ul>
					<c:forEach var="f" items="${film}">
						<li>${f.id}</li>
						<li>${f.title}</li>
						<li>${f.description}</li>
						<li>${f.rating}</li>
					</c:forEach>

					<li><a href="/MVCFilmSite">Return Home</a></li>
				</ul>
			</c:when>
			<c:otherwise>
				<p>No film found</p>
			</c:otherwise>
		</c:choose>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>
</body>
</html>