<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Action Tag</title>
</head>
<body>
	
	<%
	
		int firstNum = Integer.parseInt(request.getParameter("firstNum"));
		
		for(int i = 0; i < 9; i++) {	
		
	%>
	
	<p><%= firstNum %> * <%= i %> = <%= firstNum * i %></p>
	
	<%
		
		}
	
	%>

</body>
</html>