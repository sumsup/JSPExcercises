<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>try-catch</title>
</head>
<body>
    <form method="get">
        <p><input type="number" name="num1"> / <input type="number" name="num2"></p>
        <button type="submit">계산</button>
    </form>

    <%
        int resultNum = 0;
        try {
            int num1 = Integer.parseInt(request.getParameter("num1"));
            int num2 = Integer.parseInt(request.getParameter("num2"));

            resultNum = num1 / num2;
        } catch (Exception e) {
            out.print("<p>오류 발생 :");
            out.print(e.getClass().getName());
            out.print(e.getMessage());
            out.print("</p>");
        }
        if (resultNum != 0) {
            out.print(resultNum);
        }
    %>

</body>
<script>

</script>

</html>