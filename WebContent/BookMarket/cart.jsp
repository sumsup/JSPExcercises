<%@ page import="java.util.ArrayList" %>
<%@ page import="ch04.com.dto.Book" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>장바구니</title>
</head>
<%@include file="include/header.jsp"%>
<body>
<div class="jumbotron">
    <div class="container">
        <h1 class="display-3">장바구니</h1>
    </div>
</div>
<div class="container">
    <div class="row">
        <table width="100%">
            <tr>
                <td align="left"><a href="deleteCart.jsp" class="btn btn-danger">삭제하기</a></td>
                <td align="right"><a href="#" class="btn btn-success">
                    주문하기</a></td>
            </tr>
        </table>
    </div>
    <div style="padding-top: 50px">
        <table class="table table-hover">
            <tr>
                <th>상품</th>
                <th>가격</th>
                <th>수량</th>
                <th>소계</th>
                <th>삭제</th>
            </tr>
            <%
                int sum = 0;
                ArrayList<Book> cartList = (ArrayList) session.getAttribute("cartBookList");
                if (cartList == null) {
                    System.out.println("** 장바구니가 비어 있군요. **");
                    cartList = new ArrayList<>();
                }

                for (Book cartBook : cartList) {
                    Book book = cartBook;
                    int total = book.getUnitPrice() * book.getCartQuantity();
                    sum = sum + total;
            %>
            <tr>
                <td><%=book.getBookId()%> - <%=book.getName()%></td>
                <td><%=book.getUnitPrice()%></td>
                <td><%=book.getCartQuantity()%></td>
                <td><%=sum%></td>
                <td><a href="removeCart.jsp?id=<%=book.getBookId()%>"
                            class="badge badge-danger">삭제</a></td>
            </tr>
            <%
                }
            %>
            <tr>
                <th></th>
                <th></th>
                <th>총액</th>
                <th><%=sum%></th>
                <th></th>
            </tr>
        </table>
        <a href="./books.jsp" class="btn btn-secondary"> &laquo; 쇼핑 계속하기</a>
    </div>
    <hr>
</div>
<%@include file="include/footer.jsp"%>
</body>
<script>

</script>

</html>