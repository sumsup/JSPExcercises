<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% 

	String name = request.getParameter("name");
	String address = request.getParameter("address");
	String email = request.getParameter("email");

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>01_form_process</title>
</head>
<body>

	<p>이름 : <%= name %>
	<p>주소 : <%= address %>
	<p>이메일 : <%= email %>
	
</body>
</html>