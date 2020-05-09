<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Session</title>
</head>
<body>
    <%
        if (session.getAttribute("userID") == null) {
            response.sendRedirect("session_out.jsp");
        }

        String id = (String) session.getAttribute("userID");
        String pw = (String) session.getAttribute("userPW");
    %>

    <%=id%> 님 반갑습니다.

    <a href="session.jsp">로그아웃</a>




</body>
<script>

</script>

</html>