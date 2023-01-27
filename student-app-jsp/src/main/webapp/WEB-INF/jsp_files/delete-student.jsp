<%@page import="com.ms.studentapp.dto.Student"%>
<%@page import="com.ms.studentapp.dao.StudentDatabaseOperation"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Deleted</title>
</head>
<body>
	<jsp:include page="/dash-board"></jsp:include>
	<%
	int stuId = Integer.parseInt(request.getParameter("stId"));

	StudentDatabaseOperation operation = new StudentDatabaseOperation();
	Student checkStudent = operation.getStudent(stuId);

	if (checkStudent == null) {
		%>
		<h2>Data not deleted because ID not found <%= stuId  %></h2>
		<jsp:forward page="/delete-student-form"></jsp:forward>
		<%
	} else {
		boolean isDeleted = operation.deleteStudent(stuId);
		if (isDeleted) {
		%>
			<jsp:forward page="/display-all-students"></jsp:forward>
		<% 
		} else {
		%>
			<jsp:forward page="/delete-student-form"></jsp:forward>
		<%
		}

	}
		%>
</body>
</html>