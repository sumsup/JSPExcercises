<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>print</title>
    <%
        String id = request.getParameter("id");
        String passwd = request.getParameter("password");

//        if ("".equals(id)) id = "NULL 입니다.";
//        if ("".equals(passwd)) passwd = "NULL 입니다.";

        if ("".equals(id) || "".equals(passwd)) {
            throw new NullPointerException("id와 password를 전부 입력해주세요!");
        }

    %>

    <p> id : <%= id %> </>
    <p> password : <%= passwd %> </>

</head>
<body>

</body>
<script>

</script>

</html>