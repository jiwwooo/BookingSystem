<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
String no = request.getParameter("no");






%>


<form action="consultRewrite" method="post">
	<table>
		<tr>
			<td>タイトル</td>
			<td><input type="text" name="title" id="subject"value=""size="50"></td>
		</tr>
			<tr>
			<td>内容</td>
			<td><textarea rows="30"cols="50" id="contents" name="contents"></textarea></td>
		</tr>
	</table>
	
	
	<input type="hidden" name="no" value="<%=no%>"> 
   
	<input type="submit" value="登録" >
</form>
</body>
</html>