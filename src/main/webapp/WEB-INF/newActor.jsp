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
						<li class="nav-item"><a class="nav-link" href="addActor.do">Add
								Actor</a></li>
					</ul>
				</div>
			</div>
		</nav>

		<br>
		<meta charset="UTF-8">
		<title>New Actor added</title>

		<div class="filmForm">
			<c:choose>
				<c:when test="${not empty newActor}">
						
		<div class="alert alert-success" role="alert">"${newActor}"></div>

				</c:when>
				<c:otherwise>
					<p>Error. No actor created.</p>
				</c:otherwise>
			</c:choose>
			<br> <br>
			<form action="newActor.do" method="GET">
				Please enter actor ID to confirm deletion: <input class="input"
					type="text" name="id"> <input class="submit" type="submit"
					value="Delete Actor" />
			</form>
			<br>
			<form action="newActor.do" method="GET">
				Please enter actor ID to edit fields: <input class="input"
					type="text" name="id"> <input class="submit" type="submit"
					value="Edit Actor" />
			</form>
		</div>
</body>


<div class="container">
	<footer class="row row-cols-5 py-5 my-5 border-top">
		<div class="col">
			<a href="/"
				class="d-flex align-items-center mb-3 link-dark text-decoration-none">
				<svg class="bi me-2" width="40" height="32">
						<use xlink:href="#bootstrap" /></svg>
			</a>
			<p class="text-muted">&copy; 2022</p>
		</div>

		<div class="col"></div>

		<div class="col">
			<h5>Search</h5>
			<ul class="nav flex-column">
				<li class="nav-item mb-2"><a href="searchId.do"
					class="nav-link p-0 text-muted">Film by ID</a></li>
				<li class="nav-item mb-2"><a href="searchKeyword.do"
					class="nav-link p-0 text-muted">Film by Keyword</a></li>
			</ul>
		</div>

		<div class="col">
			<h5>Films</h5>
			<ul class="nav flex-column">
				<li class="nav-item mb-2"><a href="addFilm.do"
					class="nav-link p-0 text-muted">Add New</a></li>
			</ul>
		</div>

		<div class="col">
			<h5>About</h5>
			<ul class="nav flex-column">
				<li class="nav-item mb-2"><a href="/MVCFilmSite"
					class="nav-link p-0 text-muted">Team</a></li>
			</ul>
		</div>
	</footer>
</div>

<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>
</body>
</html>