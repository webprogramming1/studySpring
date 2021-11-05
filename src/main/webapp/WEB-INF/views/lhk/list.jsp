<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:forEach var="book" items="${bookList}" >
		<a href="detail?bookid=${book.bookid}">${book.bookid}</a>
		 ${book.bookname}
		 ${book.publisher}
		 ${book.price}
		 ${book.description}
		 ${book.imagepath}
		<br >
	</c:forEach>
</body>
</html>