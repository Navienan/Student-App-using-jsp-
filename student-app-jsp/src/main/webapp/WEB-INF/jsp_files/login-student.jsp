<%@page import="com.ms.studentapp.dto.Student"%>
<%@page import="com.ms.studentapp.dao.StudentDatabaseOperation"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>WELCOME</title>
</head>
<body>
	<%
	String mail = request.getParameter("emailId");
	String pass = request.getParameter("pswd");

	StudentDatabaseOperation operation = new StudentDatabaseOperation();
	Student login = operation.loginValidate(mail, pass);
	if (login == null) {
	%>
		<h1 align="center">Invalid Credentials *_*</h1>
		<jsp:include page="/login-student-form"></jsp:include>
		
	<% 
	} else {
	%>
		<h1>Welcome:) <%=  login.getName() %></h1>
		<jsp:include page="/dash-board"></jsp:include>

	<% 
	}


	%>

</body>
</html>