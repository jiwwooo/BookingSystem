<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>


<script type="text/javascript">
$(document).ready(function(){
	function option(){
		var optionNo = $("#optionNo").value();
		console.log(optionNo);
	}
});

</script>

	<table class="table table-hover">
		
		<thead>
			<tr>



				<th scope="col">item</th>
				<th scope="col">cost</th>
			</tr>
		</thead>

		<tbody>


			
					<c:forEach items="${optionList}" var="option" begin="0" end="100" >
			<tr>

				<c:if test="${not empty optionList}">

						
						<td><c:out value="${option.item }" /></td>
						<td><c:out value="${option.cost }" /></td>
						<td> 
						<button type="button" class="btn btn-secondary" onclick="location.href='<%=request.getContextPath() %>/insertOpt?no=${option.no }" >
              			<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-plus" viewBox="0 0 16 16"><path d="M8 4a.5.5 0 0 1 .5.5v3h3a.5.5 0 0 1 0 1h-3v3a.5.5 0 0 1-1 0v-3h-3a.5.5 0 0 1 0-1h3v-3A.5.5 0 0 1 8 4z"/></svg>
              			</button>
              			</td>
				</c:if>
				
				

			</tr>
					</c:forEach>
					</tbody>
			
	</table>

	
	<script type="text/javascript">
		$(document).ready(function() {
			function order(){
				console.log("option!");
			}
		});
	</script>
	