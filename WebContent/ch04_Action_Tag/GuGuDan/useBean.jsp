<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:useBean id="GuGuDan" class="ch04.com.dao.GuGuDan" scope="session"></jsp:useBean>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>useBean</title>
</head>
<body>

	<h4>구구단 출력하기</h4>
	<%
	
		int[] resultArray = GuGuDan.process();
		
	%>
	
	<%
	
		for(int i = 0; i < resultArray.length; i++) {
	
	%>
	
	<p><%= resultArray[i] %></p>
	
	<%
		
		}
	
	%>

</body>
</html>