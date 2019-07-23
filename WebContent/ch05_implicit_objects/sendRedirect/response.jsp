<%@page import="java.util.Date"%>
<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>response</title>
</head>
<body>
	<%
		response.setIntHeader("Refresh", 5);
		
		Calendar today = Calendar.getInstance(); // Calendar 인스턴스를 생성.
		
		int hour = today.get(Calendar.HOUR); // 시간.
		int minutes = today.get(Calendar.MINUTE); // 분.
		int seconds = today.get(Calendar.SECOND); // 초.
		String am_pm;
		
		if (today.get(Calendar.AM_PM) == 1) { // AM_PM 이 1이면?
			
			am_pm = "PM"; // PM.
			
		} else { // 0 이면?
			
			am_pm = "AM"; // AM.
		}
		
	%>
	<p> Calendar 객체가 가진 값은 <%= today %>
	<p> 현재 시간은 <%= hour %>:<%=minutes %>:<%= seconds %> <%= am_pm%>
	
	
	<p><a href="response_data.jsp">Google 홈페이지로 이동하기</a>
	
	
	
</body>
</html>