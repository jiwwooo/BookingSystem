<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>






	<div class="container-md">


			<table class="table table-hover">
			
			<c:forEach items="${booking}" var="booking">

				




				<tr>
					<td>Room </td>
					<%-- <td>${room.room_title} ${room.explanation }</td>  --%>
				</tr> 
				<tr>
					<td>name</td>
					<td>${booking.name }</td>
				</tr>
			
				<tr>
					<td>phone</td>
					<td>${booking.phone }</td>
				</tr>


				<tr>
					<td>adult</td>
					<td>
						${booking.adult }
					</td>
				</tr>
				<tr>


					<td>child</td>
					<td>${booking.child }
					</td>
				</tr>

				<tr>
					<td>Total Cost</td>
					<td> <%-- ${booking.total_cost } --%></td>
				</tr>



				<tr>
					<td>Date Of CheckIn  
					</td>
					<td>${booking.start_date }
					</td>
				</tr>
				<tr>
				<tr>
					<td>Date Of CheckOut</td>
					<td> ${booking.end_date }</td>
				</tr>
				<tr>
				<tr>
					<td>Bank Name</td>
					<td>${booking.bank_name }</td>
				</tr>


				<tr>
					<td>Bank Branch</td>
					<td>${booking.bank_branch_code }</td>
				</tr>
				<tr>
					<td>Bank Account Number</td>
					<td>${booking.bank_account_number }</td>
				</tr>



			</c:forEach>

			</table>
	</div>


</body>
</html>