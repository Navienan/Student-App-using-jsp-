<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Forget Password</title>
</head>
<body>
	<form action="forget-password-form" method="post">
		<label>Email Id</label>
		<input type="email" name="mailId"><br>
		<label>New Password</label>
		<input type="password" name="password">
		<label>Re-Type Password</label>
		<input type="password" name="repass">
		<!-- <p id="message"></p> -->
		<input type="submit" value="SUMBIT">
	</form>

</body>
</html>