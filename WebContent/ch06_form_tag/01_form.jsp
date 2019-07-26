<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Form Tag Exercises</title>
</head>
<body>
	
	<form action='01_form_process.jsp' method='post'>
	<!-- 메소드를 명시하지 않으면 post로 전송하게 된다. -->
	
		<div>
			이름 : <input type='text' name='name'>
		</div>
		<div>
			주소 : <input type='text' name='address'>
		</div>
		<div>
			이메일 : <input type='email' name='email'>
		</div>
		<div>
			<input type='submit' role='button' value='전송'>
		</div>
	</form>


</body>
</html>