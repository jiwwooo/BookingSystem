
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<!doctype html>
<html lang="en">
<head>




<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>jQuery UI Datepicker - Default functionality</title>
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.13.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src="https://code.jquery.com/ui/1.13.1/jquery-ui.js"></script>
<script>
	$(function() {
		$("#start_date").datepicker();
		log.info("")

	});
	$(function() {
		$("#end_date").datepicker();

	});

	var spinner = $("#spinner").spinner();

	$("#getvalue").on("click", function() {
		alert(spinner.spinner("value"));
	});
</script>
</head>
<body>

	<div style="text-align: center;">

		<form action="insertBooking" method="post">
			<table>
				<tr>
					<td>name</td>
					<td><input type="text" name="name" id="name" value=""
						size="50"></td>
				</tr>
				<tr>
					<td>phone</td>
					<td><input type="text" name="phone" id="phone" value=""
						size="11"> &nbsp; - &nbsp;</td>
					<td><input type="text" name="phone2" id="phone2" value=""
						size="8">&nbsp; - &nbsp;</td>
					<td><input type="text" name="phone3" id="phone4" value=""
						size="8"></td>

				</tr>
				<tr>
					<td>adult</td>
					<td>
						<p>
							<label for="spinner">Select a value:</label> 
							<input id="spinner" name="value">
						</p>
						</td>
				</tr>
				<tr>
					<td>child</td>
					<td><select>
							<optgroup label="child">
								<option>一人</option>
								<option>二人</option>
								<option>三人</option>
								<option>四人</option>
							</optgroup>
					</select></td>
				</tr>

				

				<tr>
					<td>Start Date: <input type="text" id="start_date">
						&nbsp; &nbsp;
					</td>
					<td>End Date: <input type="text" id="end_date"></td>
				</tr>


		<tr>
					<td>option : &nbsp; &nbsp;<input type="button" value="追加"
						onclick="option()">
					</td>
				</tr>
			</table>






			<input type="submit" value="登録"> <input type="reset"
				value="reset">

		</form>






		<div class="modal" tabindex="-1">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title">Modal title</h5>
						<button type="button" class="btn-close" data-bs-dismiss="modal"
							aria-label="Close"></button>
					</div>
					<div class="modal-body">
						<p>Modal body text goes here.</p>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary"
							data-bs-dismiss="modal">Close</button>
						<button type="button" class="btn btn-primary">Save
							changes</button>
					</div>
				</div>
			</div>
		</div>


	</div>

</body>
</html>