<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<title>도서 등록</title>
</head>
<body>
	
	<%@ include file="include/header.jsp" %>
	
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">도서 등록</h1>
		</div>
	</div>
	
	<div class='container'>

		<form action='processAddBook.jsp' method='post' class='form-horizontal' name='newBook'>
			<div class='form-group row'>
			<label class='col-sm-2'>도서코드</label>
				<div class='cols-sm-3'>
					<input type='text' name='bookId' class='form-control'>
				</div>
			</div>
			<div class='form-group row'>
			<label class='col-sm-2'>도서명</label>
				<div class='cols-sm-3'>
					<input type='text' name='name' class='form-control'>
				</div>
			</div>
			<div class='form-group row'>
			<label class='col-sm-2'>가격</label>
				<div class='cols-sm-3'>
					<input type='text' name='unitPrice' class='form-control'>
				</div>
			</div>
			<div class='form-group row'>
			<label class='col-sm-2'>저자</label>
				<div class='cols-sm-3'>
					<input type='text' name='author' class='form-control'>
				</div>
			</div>
			<div class='form-group row'>
			<label class='col-sm-2'>상세정보</label>
				<div class='cols-sm-5'>
					<textarea name="description" cols="60" rows="2" class="form-control" style="resize: none;"></textarea>
				</div>
			</div>
			<div class='form-group row'>
			<label class='col-sm-2'>출판사</label>
				<div class='cols-sm-3'>
					<input type='text' name='publisher' class='form-control'>
				</div>
			</div>
			<div class='form-group row'>
			<label class='col-sm-2'>카테고리</label>
				<div class='cols-sm-3'>
					<input type='text' name='category' class='form-control'>
				</div>
			</div>
			<div class='form-group row'>
			<label class='col-sm-2'>재고</label>
				<div class='cols-sm-3'>
					<input type='number' name='unitInStock' class='form-control'>
				</div>
			</div>
			<div class='form-group row'>
			<label class='col-sm-2'>총페이지 수</label>
				<div class='cols-sm-3'>
					<input type='number' name='totalPages' class='form-control'>
				</div>
			</div>
			<div class='form-group row'>
			<label class='col-sm-2'>출판일</label>
				<div class='cols-sm-3'>
					<input type='text' name='releaseDate' class='form-control'>
				</div>
			</div>
			<div class='form-group row'>
			<label class='col-sm-2'>상태</label>
				<div class='cols-sm-3'>
					<input type='radio' name='condition' value='new'>신규도서
					<input type='radio' name='condition' value='old'>중고도서
					<input type='radio' name='condition' value='e-book'>E-Book
				</div>
			</div>
			<input type='submit' value='등록' class='btn btn-secondary'>
		
		
		</form>	
	
	</div>
	<hr>
	
	<%@ include file="include/footer.jsp" %>

</body>
</html>