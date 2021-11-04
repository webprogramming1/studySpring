<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" contentType="text/html;charset=UTF-8"
 pageEncoding="utf-8"%>
<html>
<head>
	<title>Home</title>
	<script type="text/javascript" src="<c:url value='/resources/smarteditor2/js/HuskyEZCreator.js'/>" charset="utf-8"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	
	<script>
		$(function(){
			console.log("<c:url value='/resources/smarteditor2/SmartEditor2Skin.html'/>");
			var oEditors = [];
			nhn.husky.EZCreator.createInIFrame({
				oAppRef: oEditors,
				elPlaceHolder: "ta_content",
				sSkinURI : "<c:url value='/resources/smarteditor2/SmartEditor2Skin.html'/>",
				fCreator: "createSEditor2"
			});
			$("#submit").click(function(e){
				e.preventDefault();
				oEditors.getById["ta_content"].exec("UPDATE_CONTENTS_FIELD", []);
				console.log($("#ta_content").val());
				$("#smart-editor").submit();
			});
			$("#login").click(function(){
				
			});
			
		});
	</script>
</head>
<body>
<h1>
	Hello world!  
</h1>

<P>  The time on the server is ${serverTime}. </P>
<form id="smart-editor" action="/myapp01/" method="post">
	<textarea class="form-control" rows="20" cols="20" name="ta_content" id="ta_content"></textarea>
</form>
<button id="submit">전송</button>
<button id="login">로그인</button>
</body>
</html>
