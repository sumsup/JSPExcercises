<%@page import="java.io.File"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Iterator"%>
<%@page import="org.apache.commons.fileupload.DiskFileUpload"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
		
		// API를 억지로 외우려고 하지 말고.
		
		// 1. 공식 문서 예제를 돌아가게 하기.
		// 2. 그 예제에 기능 추가, 수정, 삭제 하기.
		// 3. 그 기능을 사용한 토이 프로젝트 만들기.
		// 4. 만든 소스를 정리해 놓고 나중에 써먹기.
				
		String path = "C:\\upload";
		
		DiskFileUpload upload = new DiskFileUpload();
		
		List items = upload.parseRequest(request);
		
		Iterator params = items.iterator();
		
		while(params.hasNext())	{
			
			FileItem item = (FileItem) params.next();
			
			if(item.isFormField()) { // isFormField() : 요청 파라미터가 파일이 아닌 일반 데이터면 true를 반환.
				
				String name = item.getFieldName();
				String value = item.getString("utf-8"); // utf-8로 value 값을 가져온다.
				out.println(name + " = " + value + "<br>");
				
			} else {
				
				String fileFieldName = item.getFieldName();
				String fileName = item.getName();
				String contentType = item.getContentType();
				
				fileName = fileName.substring(fileName.lastIndexOf("\\") + 1);
				long fileSize = item.getSize();
				
				
				out.println("--------------------------------<br>");
				out.println("요청 파라미터 이름 : " + fileFieldName + "<br>");
				out.println("저장 파일 이름 : " + fileName + "<br>");
				out.println("파일 콘텐츠 유형 : " + contentType + "<br>");
				
				out.println("파일 크기 : " + fileSize);
				
			}
			
		}
	
	%>

</body>
</html>