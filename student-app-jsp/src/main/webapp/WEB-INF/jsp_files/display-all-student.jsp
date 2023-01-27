<%@page import="com.ms.studentapp.dto.Student"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.ms.studentapp.dao.StudentDatabaseOperation"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>All Students</title>
</head>
<body>
	<jsp:include page="/dash-board"></jsp:include>
	<%
	StudentDatabaseOperation operation=new StudentDatabaseOperation();
	ArrayList<Student> allstudenets=operation.getAllStudents();
	%>
	<table border='1' style='width:100%'>
		<tr>
		<th style='width:10%'>ID</th>
		<th style='width:25%'>NAME</th>
		<th style='width:10%'>MARKS</th>
		<th style='width:25%'>EMAIL ID</th>
		<th colspan='2' style='width:35%'>ACTION</th>
		</tr>
	</table>
		<%
		for (Student s1 : allstudenets) {
		%>
		<table border='1' style='width:100%'>
			<tr>
			<th style='width:10%'><%= s1.getId()  %></th>
			<th style='width:25%'><%= s1.getName() %></th>
			<th style='width:10%'><%= s1.getMarks() %></th>
			<th style='width:25%'><%= s1.getEmailId() %></th>
			<th><a href=''>Edit</a></th>
			<th><a href="delete-student?stId=<%= s1.getId() %>">Delete</a></th>
			</tr>
		<%
		}
		
		%>
	</table>

</body>
</html>