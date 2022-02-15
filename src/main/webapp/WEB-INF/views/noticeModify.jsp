<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<form action="<%=request.getContextPath() %>/noticeModify?no=${notice.no}" method="post">
<span >${notice.no}</span>

<table>
	<tr>
		<td>タイトル</td>
		<td><input type="text" name="title" id="subject"placeholder="${notice.title}"size="50"></td>
	</tr>
	<tr>
		<td>内容</td>
		<td><textarea rows="30"cols="50" id="contents" name="contents" placeholder="${notice.contents}"></textarea></td>
	</tr>
</table>
<input type="submit" value="修正">
<input type="button" value="以前ページへの帰る"　onclick="location.href=noticeList.jsp">



</form>

</body>
</html>