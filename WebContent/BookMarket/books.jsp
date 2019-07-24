<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="ch04.com.dto.Book" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:useBean id="booksRepo" class="ch04.com.dao.BookRepository" scope="request" />

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Book Market</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<style>
	.detail {
		
		display: block;
	
	}
	
</style>
</head>
<body>

	<nav class="navbar navbar-expand navbar-dark bg-dark">
		<div class="container">
			<div class="navbar-header">
				<a class="navbar-brand" href="./welcome.jsp">Home</a>
			</div>
		</div>
	</nav>
	
	<div class="jumbotron">
		<div class="container">
		
			<h1 class="display-3">상품 목록</h1>		
		
		</div>
	</div>
	
	<div class="container">
		<div>
	<%
		
		/* import 문에서 import 되는 것은 page import 로 설정해 줘야함. */
		ArrayList<Book> books = booksRepo.getListOfBooks();
	
		for(int i=0; i < books.size(); i++) {
			
	%>
	
		<div>
		
			<h4>[<%= books.get(i).getCategory() %>] <%=books.get(i).getName() %></h4>
			<div>
				<p class='detail'><%= books.get(i).getDescription() %><p class='detail'><a href="book_detail.jsp?id=<%= books.get(i).getBookId() %>" class='btn btn-secondary' 
				role='button'>상세정보 &raquo;</a></p></p>
				<p><%= books.get(i).getAuthor() %> | <%= books.get(i).getPublisher() %> | <%=books.get(i).getUnitPrice() %></p>
				
			</div>
			
		</div>
	
		
		
		<hr>
	<%
	
		}
		
	%>
		</div>
	</div>
	
	
	<footer class="container">

		<p>&copy; BookMarket</p>

	</footer>
	
</body>
</html>