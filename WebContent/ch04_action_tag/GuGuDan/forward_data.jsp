<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>GuGuDan</title>
</head>
<body>

	
	
	<%
		
		int firstNum = Integer.parseInt(request.getParameter("firstNum")); // int 형으로 자료형 변환.
		
		for(int i = 0; i < 9; i++) { 
		
	%>
	
	<p><%= firstNum %> * <%= i %> = <%= firstNum*i %></p>
	
	<%
	
		}	
	
	%>
	
</body>
</html>