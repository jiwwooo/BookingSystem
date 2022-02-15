<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
    
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

<div class="container-md">
<table class="table table-hover">


	<tr>
		<td> ${notice.title}</td>
	</tr>

	<tr>		<td> ${notice.contents}</td>
</tr>

</table>




 <%if(session.getAttribute("name").equals("X#$admin951$#X")){
	  
	  %>
<button onclick="location.href='<%=request.getContextPath() %>/noticeModify?no=${notice.no} '" class="btn btn-primary ">修正</button>
<a onclick="return confirm('本当に削除しますか')"><button onclick="location.href='<%=request.getContextPath() %>/noticeRemove?no=${notice.no}'" class="btn btn-danger">削除</button></a>

	<%} %>  
	
<button onclick="location.href='<%=request.getContextPath() %>/noticeList'" class="btn btn-light">お知らせページ</button>
</div>

</body>
</html>