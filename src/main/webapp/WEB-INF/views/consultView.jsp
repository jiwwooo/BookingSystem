<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script type="text/javascript">
	
String name = (String) session.getAttribute("name");
	
</script>
</head>
<body>
<div class="container-md">
<table class="table table-hover">

			<tr>
				<td>title</td>
				<td>${consult.title}</td>
			</tr>

			

			<tr>
				<td>contents</td>
				<td>${consult.contents}</td>
			</tr>
	
	
	
	</table>
	


		<c:if test="${ session.getAttribute('id') != null}">
			<a href="<%=request.getContextPath() %>/consultInsert?grno=${consult.grno}">お返事</a>
			<br>
		</c:if>

		<c:if test="${consult.name eq sessionScope.name }">
			<a href="">修正</a>
				<br>
			<a href="">削除</a>
		</c:if>
	
	
	</div>
</body>
</html>