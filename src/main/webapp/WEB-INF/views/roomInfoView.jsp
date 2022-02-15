
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>



<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!doctype html>
<html lang="en">
<head>



<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>jQuery UI Datepicker - Default functionality</title>

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<!-- Bootstrap library -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</head>


<body>



	<div class="container-md">


		<table class="table table-hover">

			<tr>
					<td>
		${room }
					</td>
					<td>ルール　タイトル</td>
					<td>${room.room_title }</td>
				</tr>
				<tr>
					<td>最大受容人数</td>
					<td>${room.max }</td>
				</tr>
				<tr>
					<td>大人料金</td>
					<td>${room.adult_cost }</td>
				</tr>
				<tr>
					<td>子供料金</td>
					<td>${room.child_cost  }</td>
				</tr>
				<tr>
					<td>説明</td>
					<td>${room.explanation }</td>
				</tr>
		</table>


	<button　onclick="location.href='<%=request.getContextPath() %>/roomInfoList?no=${room.no }'">ルール説明ページ</button>
	</div>




</body>
</html>