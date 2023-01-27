<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete Form</title>
</head>
<body>
	<jsp:include page="/dash-board"></jsp:include>
	<form action="delete-student" method="get">
		<label>Student Id</label><br>
		<input type="number" name="stId" placeholder="Enter ID to Delete">
		<input type="submit" value="DELETE">
	</form>

</body>
</html>