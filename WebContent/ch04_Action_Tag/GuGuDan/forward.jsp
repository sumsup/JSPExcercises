<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>9 X 9 Dan</title>
</head>
<body>

	<h4>구구단 출력</h4>
	<jsp:forward page="forward_data.jsp">
	
		<jsp:param value="5" name="firstNum" />
		
	</jsp:forward>
	

</body>
</html>