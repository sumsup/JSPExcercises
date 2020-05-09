<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page errorPage="isErrorPage.jsp" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>예외 진입 페이지</title>
</head>
<body>
    <p> 에러 진입 페이지 입니다 </p>
    name 파라미터 : <%= request.getParameter("name").toUpperCase() %>
</body>
<script>

</script>

</html>