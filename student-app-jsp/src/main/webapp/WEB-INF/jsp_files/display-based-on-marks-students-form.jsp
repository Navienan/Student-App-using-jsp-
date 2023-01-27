<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Filters Students</title>
</head>
<body>
	<jsp:include page="/dash-board"></jsp:include>
	<form action="display-based-on-marks-students" method="get">
		<label>Enter the Lowest Value</label>
		<input type="number" name="lwstvalue" required="required">
		<label>Enter the Highest Value</label>
		<input type="number" name="hghstvalue" required="required">
		<input type="submit" value="SEARCH">
	</form>
</body>
</html>