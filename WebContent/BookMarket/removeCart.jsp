<%@ page import="java.util.ArrayList" %>
<%@ page import="ch04.com.dto.Book" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
    String bookId = request.getParameter("id");

    if (bookId == null || "".equals(bookId.trim())) {
        response.sendRedirect("cart.jsp");
    }

    ArrayList<Book> cartList = (ArrayList<Book>) session.getAttribute("cartBookList");
    // id 에 해당하는 book 을 cartList 에서 제거.
    for (int i = 0, loop = cartList.size(); i < loop; i++) {
        Book book = cartList.get(i);
        if (bookId.equals(book.getBookId())) {
            cartList.remove(book);
            break;
        }
    }

    session.setAttribute("cartList", cartList);
    response.sendRedirect("cart.jsp");
%>