<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form method='post' enctype='multipart/form-data' action='02_commons_fileUpload_process.jsp'>
	
		<label for='uploadFile'>파 일 : </label>
		<input type='file' name='uploadFile' id='uploadFile'>
		
		<input type='submit' value='파일 올리기'>
		
	</form>
	
	

</body>
</html>