<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page isErrorPage="true" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title></title>
</head>
<body>
    <p>오류 발생 : <%=exception.getClass().getName()%> : <%=exception.getMessage()%></p>
    <jsp:include page="exception.jsp"></jsp:include>
</body>
<script>

</script>

</html>