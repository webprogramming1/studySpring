<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	.error{ 
		color:blue; 
		font-size:0.65rem;
	}
		
</style>
</head>
<body>
	<h1>도서 등록</h1>
	<sf:form action="input" method="post" modelAttribute="book">
	
		아이디: <input type="text" name="bookid"  value="${book.publisher}"/>
		<sf:errors path="bookid" cssClass="error"/><br />	

		책이름: <input type="text" name="bookname" value="${book.bookname}"/>	
		<sf:errors path="bookname" cssClass="error"/><br />	

		출판사: <input type="text" name="publisher" value="${book.publisher}"/>
		<sf:errors path="publisher" cssClass="error"/><br />

		가 격 : <input type="text" name="price"  value="${book.price}"/>
		<sf:errors path="price" cssClass="error"/><br />
		
		설 명: <input type="text" name="description" value="${book.description}"/>
		<sf:errors path="description" cssClass="error"/><br />
		
		사 진: <input type="text" name="imagepath"/><br />

		<input type="submit" value="등록" /> 
	</sf:form>
</body>
</html>