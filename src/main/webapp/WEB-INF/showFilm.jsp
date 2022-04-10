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
						<li class="nav-item"><a class="nav-link" href="addFilm.do">Add
								Film</a></li>
					</ul>
				</div>
			</div>
		</nav>
		<h4>Film Details</h4>

		<c:choose>
			<c:when test="${empty film}">
				<p>No Film Found. Please Try Again.</p>
			</c:when>
			<c:when test="${not empty film}">
				<div class="card" style="width: 18rem;">
					<div class="card-body">
						<h5 class="card-title">${film.title}</h5>
						<h6 class="card-subtitle mb-2 text-muted">${film.releaseYear}</h6>
						<span class="badge bg-warning text-dark">${film.rating}</span>
						<p class="card-text">${film.description}</p>
						<span class="badge rounded-pill bg-success">${film.category}</span>
						<span class="badge rounded-pill bg-primary my-1">ID
							${film.id}</span>
						<hr>
						<p class="card-text">Actors:</p>
						<ul>
							<c:forEach var="actor" items="${film.actors}">
								<li>${actor.firstName} ${actor.lastName}</li>
							</c:forEach>
						</ul>
						<hr>
						<a href="deleteFilm.do?filmId=${film.id}" class="card-link">Delete</a>
						<a href="editFilm.do?filmId=${film.id}" class="card-link">Edit</a>
						</div>
				</div>
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