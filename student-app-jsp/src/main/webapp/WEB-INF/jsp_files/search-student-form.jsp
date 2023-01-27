<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Search Student</title>
</head>
<body>
	<jsp:include page="/dash-board"></jsp:include>
	<form action="search-student" method="get">
		<label>ID</label><sup>*</sup> <br> <input type="number" name="id" required="required"><br>
		<br>
		<input type="submit" value="SEARCH">
	</form>

</body>
</html>