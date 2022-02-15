<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css"
	rel="stylesheet" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="/css/styles.css" rel="stylesheet" />

 <%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
</head>
<body>

<div class="table" role="table">
	<h1>ようこそ</h1>
	<form action="login" method="post" id="loginForm">
	<div class="ID">
		<label class="form-label" for="id">ID</label>
		<input id="id" class="form-control" type="text" name="id" />
		
		<div class="valid-feedback">ID 可能 admin</div>
		<div class="invalid-feedback">ID 可能</div>
	</div>
	<div class="PW">
		<label class="form-label" for="pwd">PASSWORD</label>
		<input class="form-control" type="password" name="pwd" id="pwd"/>
		<div class="invalid-feedback">文字数は5個以上です。</div>
	</div>
	<button class="btn btn-outline-success"type="submit" disabled="disabled">加入</button>
	</form>
</div>

</body>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
	//id invalid check
	let isIdValid = false;
	
	 //pwd 有効性　check
	let isPwdValid=false;
	 
	$('loginForm').ready(function(){
		console.log('hello!');
		$("#id").on("input",function(){
			let inputId  =$(this).val();
			$.ajax({
				url:"checkId.jsp",
				method:"get",
				data:"inputId="+inputId,
				success:function(responseData){
					
					$("#id").removeClass("is-valid is-invalid");
					if(responseData.canUse){
						$("#id").addClass("is-valid");
						isIdValid=true;
						$("#id").addClass("is-invalid");
						isIdValid=false;
					}
					setButtonState();
				}
			});
			
		});
		
		$("#pwd").on("input",function(){
			//read input values
			let inputPwd=$(this).val();
			
			//first remove two classes of validation
			$(this).removeClass("is-valid is-invalid");
			if(inputPwd.length>=5){
				$(this).addClass("is-valid");
				isPwdValid=true;
			}else{
				$(this).addClass("is-invalid");
				isPwdValid=false;
			}
			
			setButtonState();

		}); //pwd check function 
		
		
		function setButtonState(){
			if(isPwdValid||isIdValid){
				//if form is acceptable
				$("button[type=submit]").removeAttr("disabled");	
			}else{//unacceptable
				$("button[type=submit]").attr("disabled","disabled");
			}
		}

		
		$("#loginForm").on("submit",function(e){
			if(!isPwdValid){
				return false;
			}
			
		});
		
	});
	
	
	
</script>
</html>