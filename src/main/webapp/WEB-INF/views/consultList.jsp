<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="container-md">
<table class="table table-hover">
	<thead>
		<tr>
			<th>title</th>
			<th>name</th>
			<th>date</th>
		</tr>
	</thead>
	<c:forEach items="${list }" var="consult">
		<tr>
		
			<c:if test="${consult.depth>1} ">
				<c:forEach begin="1" end="${consult.depth }">
					&nbsp; &nbsp;
					
				</c:forEach>
			
			</c:if>
		
		
			<td><a href="<%=request.getContextPath() %>/consultView?no=${consult.no}"><c:out value="${consult.title}"/> </a>
			<td><c:out value="${consult.name}"/></td>
			<td><fmt:formatDate pattern="yyyy-MM-dd" value="${consult.created_at}"/></td>
		</tr>
	</c:forEach>
</table>

	<nav aria-label="Page navigation example">
  <ul class="pagination">
    <li class="page-item"><a class="page-link" href="#">Previous</a></li>
    <li class="page-item"><a class="page-link" href="#">1</a></li>
    <li class="page-item"><a class="page-link" href="#">2</a></li>
    <li class="page-item"><a class="page-link" href="#">3</a></li>
    <li class="page-item"><a class="page-link" href="#">Next</a></li>
  </ul>
  
  
</nav>
<button onclick="location.href='<%=request.getContextPath() %>/consultInsert'" class="btn btn-light">相談追加</button>
</div>
</div>
</div>
</body>
</html>