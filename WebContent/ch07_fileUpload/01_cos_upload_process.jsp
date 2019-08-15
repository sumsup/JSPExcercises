<%@page import="java.io.File"%>
<%@page import="java.util.Enumeration"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<%
		
		String savedDir = "c:\\upload";
		MultipartRequest multi = new MultipartRequest(request, savedDir);
		Enumeration paramNames = multi.getFileNames();
		
		while(paramNames.hasMoreElements()) {
			String paramName = (String) paramNames.nextElement();

			out.println("요청 파라미터 이름 : " + paramName + "<br>");
			out.println("실제 파일 이름 : " + multi.getOriginalFileName(paramName) + "<br>");
			out.println("저장 파일 이름 : " + multi.getFilesystemName(paramName) + "<br>");
			out.println("파일 콘텐츠 유형 : " + multi.getContentType(paramName) + "<br>");
			
			File file = multi.getFile(paramName); // 파일 객체를 불러옴.
			// 자바는 파일을 다루려면 파일 객체를 불러와서 컨트롤 해야 한다.
			// multipartRequest에서 파일 이름에 해당하는 file을 불러오고.
			// 파일 객체에 담는다.
			
			out.println("파일 크기 : " + file.length());
			
			
		} 
		
	
	%>
	
</body>
</html>