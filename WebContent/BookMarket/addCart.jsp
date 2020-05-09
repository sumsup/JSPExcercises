<%@ page import="java.util.ArrayList" %>
<%@ page import="ch04.com.dto.Book" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<jsp:useBean id="booksRepo" class='ch04.com.dao.BookRepository'></jsp:useBean>
<%
    /**
     * list를 순회하는 반복문 안에서 add나 remove로 size를 변경하면
     * Concurrent Modification Exception이 발생. 동시 변경 예외.
     * 순회하는 반복문에서 size를 조절하지 말고 새로운 list 를 생성해서 분류하자.
     */
    /**
     * session은 어디서 추가하든 한번만 추가해도 변경 사항이 항상 적용 되는 듯.
     * 예를 들어 List를 세션에 추가한 이후에 List에 add를 해도
     * 별도로 다시 넣는 작업을 하지 않아도 되네.
     */

    String bookId = request.getParameter("id");
    if (bookId == null || "".equals(bookId.trim())) {
        response.sendRedirect("products.jsp");
        return;
    }

    // 책 목록 호출.
    // id에 해당하는 책 찾기.
    Book book = booksRepo.getBookById(bookId);

    // 장바구니 호출.
    ArrayList<Book> cartBookList = (ArrayList<Book>) session.getAttribute("cartBookList");
    if (cartBookList == null) {
        cartBookList = new ArrayList<>();
        session.setAttribute("cartBookList", cartBookList);
    }

    // 장바구니에 책이 있으면 수량 +1.
    boolean isBookInCart = false;
    for (Book bookInCart : cartBookList) {
        if (book.getBookId().equals(bookInCart.getBookId())) {
            bookInCart.setCartQuantity(bookInCart.getCartQuantity()+1);
            isBookInCart = true;
        }
    }

    // 장바구니에 책이 없으면 수량에 1 할당. 장바구니에 추가.
    if (!isBookInCart) {
        book.setCartQuantity(1);
        cartBookList.add(book);
    }

    // 장바구니로 이동.
    response.sendRedirect("cart.jsp");
%>