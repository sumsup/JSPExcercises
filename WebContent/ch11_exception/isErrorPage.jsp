<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page isErrorPage="true" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>예외 처리 페이지</title>
</head>
<body>
    <table>
        <tr>
            <td>Error:</td>
            <td><%=exception%> : 오류 발생!!!</td>
        </tr>
        <tr>
            <td>URL : </td>
            <td><%=request.getRequestURL()%></td>
        </tr>
        <tr>
            <td>Status Code : </td>
            <td><%=response.getStatus()%></td>
        </tr>
    </table>
</body>
<script>

</script>

</html>