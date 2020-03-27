<%@page import="ch04.com.dao.BookRepository" %>
<%@page import="ch04.com.dto.Book" %>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%@ page import="java.util.Enumeration" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%

    request.setCharacterEncoding("UTF-8");

    String filename = "";
    String realFolder = "D:\\dev\\projects\\JSPExercises\\WebContent\\resources\\book_img";
    int maxSize = 5 * 1024 * 1024; // 최대 업로드 용량 5MB
    String encType = "utf-8";

    try {
        MultipartRequest multi = new MultipartRequest(request, realFolder, maxSize, encType, new DefaultFileRenamePolicy());


        String bookId = multi.getParameter("bookId");
        String bookName = multi.getParameter("name");
        String unitPrice = multi.getParameter("unitPrice");
        String author = multi.getParameter("author");
        String description = multi.getParameter("description");
        String publisher = multi.getParameter("publisher");
        String category = multi.getParameter("category");
        String unitInStock = multi.getParameter("unitInStock");
        String totalPages = multi.getParameter("totalPages");
        String releaseDate = multi.getParameter("releaseDate");
        String condition = multi.getParameter("condition");

        // 폼 데이터로 받아온 파라미터를 변수에 저장.
//	String bookId = request.getParameter("bookId");
//	String bookName = request.getParameter("name");
//	String unitPrice = request.getParameter("unitPrice");
//	String author = request.getParameter("author");
//	String description = request.getParameter("description");
//	String publisher = request.getParameter("publisher");
//	String category = request.getParameter("category");
//	String unitInStock = request.getParameter("unitInStock");
//	String totalPages = request.getParameter("totalPages");
//	String releaseDate = request.getParameter("releaseDate");
//	String condition = request.getParameter("condition");

        int price;
        if (unitPrice.isEmpty()) {
            price = 0;
        } else {
            price = Integer.valueOf(unitPrice);
        }

        int stock;
        if (unitInStock.isEmpty()) {
            stock = 0;
        } else {
            stock = Integer.valueOf(unitInStock);
        }

        Integer totalPagesToInteger;
        if (totalPages.isEmpty()) {

            totalPagesToInteger = 0;

        } else {

            totalPagesToInteger = Integer.valueOf(totalPages);

        }

        Enumeration files = multi.getFileNames();
        String fname = (String) files.nextElement();
        String fileName = multi.getFilesystemName(fname);

        // book 객체를 생성해서 setting.
        Book book = new Book();

        book.setBookId(bookId);
        book.setName(bookName);
        book.setCategory(category);
        book.setUnitPrice(price);
        book.setAuthor(author);
        book.setDescription(description);
        book.setPublisher(publisher);
        book.setCondition(condition);
        book.setUnitInStock(stock);
        book.setReleaseDate(releaseDate);
        book.setTotalPages(totalPagesToInteger);
        book.setFilename(fileName);

        System.out.println(book);

        // book 객체를 addBook 메서드로 list에 저장.
        BookRepository dao = BookRepository.getInstance();
        dao.addBook(book);

    } catch (Throwable e) {
        e.printStackTrace();
    }

    // books 페이지로 리다이렉트.
    response.sendRedirect("books.jsp");

%>