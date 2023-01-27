<%@page import="com.ms.studentapp.dto.Student"%>
<%@page import="com.ms.studentapp.dao.StudentDatabaseOperation"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Searched Students </title>
</head>
<body>
	<jsp:include page="/dash-board"></jsp:include>
	<%
	String id = request.getParameter("id");
	int stid = Integer.parseInt(id);
	
	StudentDatabaseOperation operation = new StudentDatabaseOperation();
	Student student = operation.getStudent(stid);
	
	if (student != null) {
		%>
		<table border=1 align = center>
		<tr>
		<th>ID</th>
		<th>NAME</th>
		<th>MARKS</th>
		<th>EMAIL</th>
		</tr>
		<tr>
		<td> <%= student.getId() %></td>
		<td> <%= student.getName() %></td>
		<td> <%= student.getMarks() %></td>
		<td> <%= student.getEmailId() %></td>
		</tr>
		</table>
		<% 
	}
	else {
		%>
		<h2><%= stid %> Id is not found in DataBase *_* </h2>
		<% 
	}
	%>

</body>
</html>