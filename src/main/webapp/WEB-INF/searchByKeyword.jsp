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

	<h1>Search Films</h1>
			<ul>
				<li><a href="searchId.do">Search Film by ID</a></li>
				<li><a href="searchKeyword.do">Search Film by Keyword</a></li>
				<li><a href="showFilm.do">Show Film Details</a></li>
				<li><a href="editFilm.do">Edit Film</a></li>
			</ul>
				<form action="searchKeyword.do" method = "POST">
				<label for="keyword">Enter Film Keyword</label>
				<input type ="text" name="keyword"/>
				<input type="submit" value="Submit">
				</form>

	<!--  Single Film (Smoke Test) -->
	

</body>
</html>