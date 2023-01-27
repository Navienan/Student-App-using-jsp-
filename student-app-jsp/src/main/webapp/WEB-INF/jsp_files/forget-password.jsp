<%@page import="com.ms.studentapp.dao.StudentDatabaseOperation"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	String mailid = request.getParameter("mailId");
	String newpassword = request.getParameter("password");
	String retypepassword = request.getParameter("repass");

	StudentDatabaseOperation operation = new StudentDatabaseOperation();

	if (!newpassword.equals(retypepassword)) {
	%>
		<h1>Sorry password and re-type password not matching</h1>
		<jsp:forward page="/forget-password-form"></jsp:forward>
	<% 
	}
	boolean isUpdated = operation.updatePassword(mailid, newpassword);

	if (isUpdated) {
	%>
	<h1> Password is Updated:)</h1>
	<% 
	} else {
	%>	
	<h1>Something Went Wrong While Updated *_*</h1>
	<%
	}
	%>

</body>
</html>