<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page isErrorPage="true" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>페이지 오류</title>
</head>
<body>
    <jsp:include page="include/header.jsp"></jsp:include>
    <div class="jumbotron">
        <div class="container">
            <h2 class="alert alert-danger">요청하신 페이지를 찾을 수 없습니다.</h2>
        </div>
    </div>
    <div class="container">
        <P> <%=request.getRequestURL()%> </P>
        <P> </P><a href="books.jsp" class="btn btn-secondary">상품 목록 &raquo;</a> </P>
    </div>

    <jsp:include page="include/footer.jsp"></jsp:include>
</body>
<script>

</script>

</html>