<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>

<script type="text/javascript">
	
</script>




</head>
<body>
	<span>${message }</span>
	<span>${session.getAttribute("id")}</span>

	<div class="container-md">
		<table class="table table-hover">

			<thead>
				<tr>
					<th scope="col">no</th>
					<th scope="col">title</th>
					<th scope="col">作成日</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${list}" var="notice">
					<tr>
						<c:if test="${not empty list}">

							<th scope="row"><c:out value="${notice.no }" /></th>
							<td><a
								href="<%=request.getContextPath() %>/noticeView?no=${notice.no }"><c:out
										value="${notice.title  }" /></a></td>
							<td><fmt:formatDate pattern="yyyy-MM-dd"
									value="${notice.created_at}" /></td>
						</c:if>


					</tr>

				</c:forEach>
			</tbody>
		</table>


		<nav aria-label="Page navigation example">
			<ul class="pagination">
				<li class="page-item"><a class="page-link" href="#">Previous</a></li>
				<li class="page-item"><a class="page-link" href="#">1</a></li>
				<li class="page-item"><a class="page-link" href="#">2</a></li>
				<li class="page-item"><a class="page-link" href="#">3</a></li>
				<li class="page-item"><a class="page-link" href="#">Next</a></li>
			</ul>


			<%
				if (session.getAttribute("name").equals("X#$admin951$#X")) {
			%>
			<button
				onclick="location.href='<%=request.getContextPath()%>/noticeInsert'"
				class="btn btn-light">お知らせ作成</button>


			<%
				}
			%>

		</nav>
	</div>
</body>
</html>