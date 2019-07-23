<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Request Process</title>
</head>
<body>
	
	<%
		request.setCharacterEncoding("utf-8");
		//String queryString = request.getQueryString(); 
		// 쿼리 스트링 값을 UTF-8로 받아오는 법 없을까.
		// 받아온 쿼리스트링에 한글이 깨져서 나오니.
		
		String queryString = URLDecoder.decode (request.getQueryString (), "UTF-8");
		// 정담 : URLDecoder를 쓰면 된다.
	
	%>
	
	<p>전송된 요청 파라미터 : <%= queryString %>
	
</body>
</html>