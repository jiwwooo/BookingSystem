<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<div class="container-md">

		<form action="roomUpdateProcess" method="post">

			<table class="table table-hover">
				<tr>
					<td><input type="hidden" name="no" value="${room.no }">
					</td>
				</tr>
				<tr>
					<td>ルール　タイトル</td>
					<td><input type="text" name="room_title" id="room_title"
						placeholder="${room.room_title }">
				</tr>
				<tr>
					<td>最大受容人数</td>
					<td><input type="text" name="max" id="max"
						placeholder="${room.max }">
				</tr>
				<tr>
					<td>大人料金</td>
					<td><input type="text" name="adult_cost" id="adult_cost"
						placeholder="${room.adult_cost }">
				</tr>
				<tr>
					<td>子供料金</td>
					<td><input type="text" name="child_cost" id="child_cost"
						placeholder="${room.child_cost  }">
				</tr>
				<tr>
					<td>説明</td>
					<td><input type="text" name="explanation" id="explanation"
						placeholder="${room.explanation  }">
				</tr>

			</table>
			<input type="submit" >
		</form>
	</div>
</body>

</html>