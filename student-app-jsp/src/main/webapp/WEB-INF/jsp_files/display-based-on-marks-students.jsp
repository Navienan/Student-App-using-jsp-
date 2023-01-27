<%@page import="com.ms.studentapp.dto.Student"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.ms.studentapp.dao.StudentDatabaseOperation"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Result</title>
</head>
<body>
	<jsp:include page="/dash-board"></jsp:include>
	<%
	int lwstvalue = Integer.parseInt(request.getParameter("lwstvalue"));
	int hghstvalue = Integer.parseInt(request.getParameter("hghstvalue"));
	
	
	StudentDatabaseOperation operation = new StudentDatabaseOperation();
	ArrayList<Student> studentbymarks = operation.getAllStudentsByMarks(lwstvalue, hghstvalue);
	
	if (studentbymarks.isEmpty()) {
		%>
		<h1>No student found between <%= lwstvalue  %>and <%= hghstvalue %></h1>
		<jsp:include page="/display-based-on-marks-students-form"></jsp:include>
		<%
	} else {
		%>
		<table border='1' style='width:100%'>
		<tr>
		<th style='width:10%'>ID</th>
		<th style='width:25%'>NAME</th>
		<th style='width:10%'>MARKS</th>
		<th style='width:25%'>EMAIL ID</th>
		</tr>
		</table>
		<% 
		String table_detail = null;
		for (Student mrks : studentbymarks) {
			%>
			<table border='1' style='width:100%'>
			<tr>
			<th style='width:10%'><%= mrks.getId()  %></th>
			<th style='width:25%'><%= mrks.getName() %></th>
			<th style='width:10%'><%= mrks.getMarks() %></th>
			<th style='width:25%'><%= mrks.getEmailId() %></th>
			</tr>
		<% 
		}
		%>
		</table>
		<% 
	}
	%>

</body>
</html>