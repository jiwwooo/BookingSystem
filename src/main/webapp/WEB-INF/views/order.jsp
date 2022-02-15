
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

<script type="text/javascript">






console.log("ready!");
let adult;
let child;
let adultCost;
let childCost;
let max = ${room.max}
let isCostValid = false;
let isDateValid = false;

$(document).ready(function(){
	$("#adult,#child").change(function() {
			adultCost =  Number(${room.adult_cost});
			adult = Number($('#adult').val());
			console.log(adult,adultCost);
			childCost =  Number(${room.child_cost});
			child = Number($('#child').val());
			console.log(child,childCost);
		
			var total_cost = (adult*adultCost)  + (child*childCost) ;
			
		if((adult+child)>max){
			alert(${room.max} +'人以上は予約できません！');
			
			isCostValid=false;
			
			}else{
		
			console.log("total_cost",total_cost);
	
			$("#total_cost").html(total_cost);
		    $('#total_cost').val(total_cost);
			isCostValid=true;
			}
		
		setButtonState();
	});
	
	$("#start_date,#end_date").on("change", function() {
		
		var start_date = $("#start_date").val();
		var end_date = $("#end_date").val();
		
		var year = start_date.substring(0,4);
		console.log(year);
		var month = start_date.substring(5,7);
		console.log(month);
		var day = start_date.substring(8,10);
		console.log(day);
		
		var year2 = end_date.substring(0,4);
		console.log(year);
		var month2 = end_date.substring(5,7);
		console.log(month);
		var day2 = end_date.substring(8,10);
		console.log(day);
	
	
	
		console.log(start_date);
		console.log(end_date);
		
		if(month<month2||day<day2){
			$(this).addClass("is-valid");
			$("#start_date").prop("name", "start_date");
			/* $('#start_date').val("start_date");
			$('#start_date').html(start_date); */
			$("#end_date").prop("name","end_date");
		/* 	$('#end_date').val("end_date");
			$('#end_date').html(end_date); */
			isDateValid = true;
		}else{
			alert("チェックアウト日付はチェックイン後でから確認してください");
			$(this).addClass("is-invalid");
			isDateValid = false;
		
		}
		
		
		
		setButtonState();
	});
})





function setButtonState(){
	if(isCostValid||isDateValid ){
		//if form is acceptable
		$("button[type=submit]").removeAttr("disabled");	
	}else{//unacceptable
		$("button[type=submit]").attr("disabled","disabled");
	}

}


</script>

</head>


<body>


	<%-- ${room.adult_cost}
${room.no} --%>
	<div class="container-md">


		<form action="insertBooking" method="post" id="bookingForm">
			<table class="table table-hover">


				<tr>
					<td>Room Info</td>
					<td>${room.room_num}号室<br>${room.room_title } 
					<input type="hidden" name="room_no" value="${room.no}">
						</td>


				</tr>
				<tr>
					<td>name</td>
					<td><%=session.getAttribute("name")%></td>
				</tr>
				<tr>
					<td>password</td>
					<td><%=session.getAttribute("pwd")%></td>
				</tr>
				<tr>
					<td>phone</td>
					<td><%=session.getAttribute("phone")%> &nbsp; &nbsp;</td>
				</tr>


				<tr>
					<td>adult</td>
					<td>${room.adult_cost }¥✕<select id="adult" name="adult">
							<optgroup label="adult">
								<option>1</option>
								<option>2</option>
								<option>3</option>
								<option>4</option>
							</optgroup>
					</select>名

					</td>
				</tr>
				<tr>


					<td>child</td>
					<td>${room.child_cost}¥✕<select id="child" name="child">
							<optgroup label="child">
								<option>1</option>
								<option>2</option>
								<option>3</option>
								<option>4</option>
							</optgroup>
					</select> 名
					</td>
				</tr>

				<tr>
					<td>Total Cost</td>
					<td id="total_cost" name="total_cost" > </td>
				</tr>



				<tr>
					<td>Date Of CheckIn</td>
					<td> <input type="datetime-local"
						id="start_date" >
					</td>
				</tr>
				<tr>
				<tr>
					<td>Date Of CheckOut </td>
					<td><input type="datetime-local"
						id="end_date" >
					</td>
				</tr>
				<tr>
				<tr>
					<td>Bank Name</td>
					<td><select id="bank_name" name="bank_name">

							<optgroup label="bankname">
								<option>農協</option>
								<option>三星</option>
								<option>ロッテ</option>
								<option>カカオー</option>
							</optgroup>
					</select></td>
				</tr>


				<tr>
					<td>Bank Branch</td>
					<td><select id="bank_branch_code" name="bank_branch_code">
							<optgroup label="bankbranch">
								<option>100</option>
								<option>200</option>
								<option>300</option>
								<option>400</option>
							</optgroup>
					</select></td>
				</tr>
				<tr>
					<td>Bank Account Number</td>
					<td><input type="text" name="bank_account_number"
						id="bank_account_number"></td>
				</tr>


				<tr>


					<td>option : &nbsp; &nbsp;

						<button type="button" class="btn btn-primary" data-toggle="modal"
							data-target="#exampleModal" data-whatever="@mdo">追加</button>
					</td>
				</tr>

			</table>



			<button class="btn btn-outline-success" type="submit"
				disabled="disabled">登録</button>




			<button class="btn btn-outline-success" type="reset">Reset</button>

		</form>



	</div>


	<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Option</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form>
						<jsp:include page="/WEB-INF/views/optionList.jsp" />
						<!-- 	<div class="form-group">
							<label for="recipient-name" class="col-form-label">Recipient:</label>
							<input type="text" class="form-control" id="recipient-name">
						</div>
						<div class="form-group">
							<label for="message-text" class="col-form-label">Message:</label>
							<textarea class="form-control" id="message-text"></textarea>
						</div> -->
					</form>

				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Close</button>
					<button type="button" class="btn btn-primary">追加</button>
				</div>
			</div>
		</div>
	</div>

	<script type="text/javascript">
		$(document).ready(function() {
			function order(){
				console.log("option!");
			}
		});
	</script>






</body>
</html>