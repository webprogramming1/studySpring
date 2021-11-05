<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="update" method="post">
		id: <input type="text" name="bookid" value="${book.bookid}" readonly="readonly"><br />
		책이름: <input type="text" name="bookname" value="${book.bookname}"/><br />
		출판사: <input type="text" name="publisher" value="${book.publisher}"/><br />
		가 격 : <input type="text" name="price" value="${book.price}"/><br />
		설 명: <input type="text" name="description" value="${book.description}"/><br />
		사 진: <input type="text" name="imagepath" value="${book.imagepath}"/><br />
		
		<input type="submit" value="수정" />
		<a href="delete?bookid=${book.bookid}">삭제</a> 
	</form>
</body>
</html>