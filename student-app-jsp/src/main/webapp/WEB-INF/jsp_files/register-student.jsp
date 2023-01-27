<%@page import="com.ms.studentapp.dto.Student"%>
<%@page import="com.ms.studentapp.dao.StudentDatabaseOperation"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Student</title>
</head>
<body>
	<%
	int sid = Integer.parseInt(request.getParameter("studentId"));
	String name = request.getParameter("name");	
	Double marks = Double.parseDouble(request.getParameter("marks"));
	String mail = request.getParameter("mailId");
	String password = request.getParameter("pswd");
	
	StudentDatabaseOperation operation = new StudentDatabaseOperation();
	Student s = new Student();
	
	s.setId(sid);
	s.setName(name);
	s.setMarks(marks);
	s.setEmailId(mail);
	s.setPassword(password);
	
	boolean isInserted = operation.insertData(s);
	
	if (isInserted) {
	%>
		<jsp:forward page="./login-student-form"></jsp:forward>
	<%
	} else {
	%>
		 <jsp:forward page="./register-student-form"></jsp:forward>
	<%
	}
	%>

</body>
</html>