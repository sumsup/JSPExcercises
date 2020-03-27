<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Security</title>
</head>
<body>
    <%-- form 로그인 인증을 쓰려면 아래와 같이 action에는 j_security_check. name값으로 j_username. j_password. 써야 한다.   --%>
    <form name="loginForm" action="j_security_check" method="post">
        <p> 사용자명 : <input type="text" name="j_username"> </p>
        <p> 비밀번호 : <input type="password" name="j_password"> </p>
        <p> <input type="submit" value="전송"> </p>
    </form>

</body>
<script>

</script>

</html>