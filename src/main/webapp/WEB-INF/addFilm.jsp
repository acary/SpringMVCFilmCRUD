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

	<h1>Add New Film</h1>

	<ul>
		<li><a href="/MVCFilmSite">Home</a></li>
		<li><a href="searchId.do">Search Film by ID</a></li>
		<li><a href="searchKeyword.do">Search Film by Keyword</a></li>
		<li><a href="showFilm.do">Show Film Details</a></li>
		<li><a href="editFilm.do">Edit Film</a></li>
		<li><a href="addFilm.do">Add Film</a></li>
	</ul>

	<form action="addFilm.do" method="post">
	
		<label for="filmTitle">Film Title:</label> 
		<input type="text" name="filmTitle" /> 
		<br>
		<label for="filmDescription">Description:</label> 
		<input type="text" name="filmDescription" /> 
		<br>
		<label for="filmReleaseYear">Release Year:</label> 
		<input type="text" name="filmReleaseYear" /> 
		<br>
		<label for="filmRating">Rating:</label> 
		<input type="text" name="filmRating" /> 
		<br>
		<input type="submit" />
	</form>

</body>
</html>