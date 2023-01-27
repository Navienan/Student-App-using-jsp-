<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register</title>
</head>
<body>
	<a style="text-decoration: none; color: black; text-align: center;" href="./main"><h1>Student App</h1></a>
	
	<nav class="main">
		<ul>
			<li><a href="./register-student-form">REGISTER</a></li>
			<li><a href="./login-student-form">LOGIN</a></li>
			<li><a href="#">FORGET PASSWORD</a></li>
		</ul>		
	</nav>
	
	
	<div class="container">
		<form action="register-student" method="post">
			<label>Student Id</label><sup>*</sup><br>
			<input type="number" name="studentId" required="required">
			<br><br>	
		
			<label>Name</label><sup>*</sup><br>
			<input type="text" name="name" required="required">
			<br><br>
	
			<label>Marks</label><sup>*</sup><br>
			<input type="number" name="marks" required="required">
			<br><br>
	
			<label>Email Id</label><sup>*</sup><br>
			<input type="email" name="mailId" required="required">
			<br><br>
	
			<label>Password</label><sup>*</sup><br>
			<input type="password" name="pswd">
			<br><br>
			<input type="submit" value="REGISTER">
	
	</form>
	</div>
	
	
</body>
</html>