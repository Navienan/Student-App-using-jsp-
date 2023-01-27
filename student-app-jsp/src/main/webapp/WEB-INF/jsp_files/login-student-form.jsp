<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
</head>
<body>
	<jsp:include page="/main"></jsp:include>

	<form action="login-student" method="post">
		<label>Email Id</label><br>
		<input type="email" name="emailId">
		<br><br>
		<label>Password</label><br>
		<input type="password" name="pswd">
		<br><br>
		<input type="submit" value="LOGIN">
	</form>

</body>
</html>