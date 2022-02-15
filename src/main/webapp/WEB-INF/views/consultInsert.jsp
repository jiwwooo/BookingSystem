<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<script src="https://code.jquery.com/jquery-3.5.1.min.js" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
    <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.js"></script>
</head>
<body>
<div class="container-md">
<form action="consultInsert" method="post" id="consult">
<table class="table table-hover">
		<tr>
			<td>タイトル</td>
			<td><input type="text" name="title" id="title" value="" size="50"></td>
		</tr>
			<tr>
			<td>内容</td>
			<td><input type="hidden"  name="contents" id=contents value="">
			<textarea  id="summernote"></textarea></td>
		</tr>
	</table>
</form>
<center>
<button type="button" id="submit">登録</button>
<button　onclick="location.href='<%=request.getContextPath()%>/consultList'">相談リスト</button>
</center>

</div>
<script type="text/javascript">
$(document).ready(function() {
	$('#summernote').summernote({
		placeholder: '内容を入力してください',
    	tabsize: 2,
    	height: 600
	});
	$(document).on("click","#submit",function(){
		$("#contents").val($('#summernote').summernote("code"));
		console.log($("#contents").val());
		$("#consult").submit();
	})
});
</script>
</body>
</html>