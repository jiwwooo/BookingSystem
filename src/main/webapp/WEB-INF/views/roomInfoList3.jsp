<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<body>

	<!-- Product section-->
	<section class="py-5">
		<div class="container px-4 px-lg-5 my-5">
			<div class="row gx-4 gx-lg-5 align-items-center">
				<div class="col-md-6">

					<%@ include file="/WEB-INF/views/room3.jsp"%>




				</div>
				<div class="col-md-6">
					<div class="small mb-1">Room No.3</div>
					<h1 class="display-5 fw-bolder">${room3.room_title }</h1>
					<div class="fs-5 mb-5">
						<span>${room3.adult_cost }</span> <span>${room3.room_title }</span>
					</div>
					<p class="lead">${room3.explanation }
					<div class="d-flex">
						
						<%
							if (session.getAttribute("name").equals("X#$admin951$#X")) {
						%>
						<button
							onclick="location.href='<%=request.getContextPath()%>/roomInfoUpdate?no=98'"
							class="btn btn-light">室の変更</button>
						<button
							onclick="location.href='<%=request.getContextPath()%>/roomPhotoUpdate?no=98'"
							class="btn btn-light">写真修正</button>


						<%
							}else{	%>
									<input class="form-control text-center me-3" id="inputQuantity"
							type="num" value="1" style="max-width: 3rem" />
						<button class="btn btn-outline-dark flex-shrink-0" type="button"
							onclick="location.href='<%=request.getContextPath()%>/order?no=98'">
							<i class="bi-cart-fill me-1"></i> Add to cart
						</button>
							<%} %>
					
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Related items section-->
	<section class="py-5 bg-light">
		<div class="container px-4 px-lg-5 mt-5">
			<h2 class="fw-bolder mb-4">Related products</h2>
			<div
				class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
				<div class="col mb-5">
					<div class="card h-100">
						<!-- Product image-->
						<!--#######################22222222222222222222222222222222222222222222222222222222222#####################  -->
						<%@ include file="/WEB-INF/views/room4.jsp"%>


						<!--#########################222222222222222222222222222222222222222222222#########################  -->













						<!-- Product details-->
						<div class="card-body p-4">
							<div class="text-center">
								<!-- Product name-->
								<h5 class="fw-bolder">${room4.room_title }</h5>

							</div>
						</div>
						<!-- Product actions-->
						<div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
							<div class="text-center">
								<a class="btn btn-outline-dark mt-auto" href="roomInfoList4">View</a>
							</div>
						</div>
					</div>
				</div>
				<div class="col mb-5">
					<div class="card h-100">
						<!-- Sale badge-->
						<div class="badge bg-dark text-white position-absolute"
							style="top: 0.5rem; right: 0.5rem">Sale</div>
						<!-- Product image-->





						<!--#######################3333333333333333333#####################  -->
						<%@ include file="/WEB-INF/views/room5.jsp"%>

						<!--#########################333333333333333333333333333333#########################  -->
						<!-- Product details-->
						<div class="card-body p-4">
							<div class="text-center">
								<!-- Product name-->
								<h5 class="fw-bolder">${room5.room_title }</h5>


							</div>
						</div>
						<!-- Product actions-->
						<div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
							<div class="text-center">
								<a class="btn btn-outline-dark mt-auto" href="roomInfoList5">View</a>
							</div>
						</div>
					</div>
				</div>
				<div class="col mb-5">
					<div class="card h-100">
						<!-- Sale badge-->
						<div class="badge bg-dark text-white position-absolute"
							style="top: 0.5rem; right: 0.5rem">Sale</div>
						<!-- Product image-->





						<!--#######################444444444444444444444444444444444#####################  -->

						<%@ include file="/WEB-INF/views/room1.jsp"%>
						<!--#########################444444444444444444444444444444#########################  -->


						<!-- Product details-->
						<div class="card-body p-4">
							<div class="text-center">
								<!-- Product name-->
								<h5 class="fw-bolder">${room1.room_title }</h5>

							</div>
						</div>
						<!-- Product actions-->
						<div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
							<div class="text-center">
								<a class="btn btn-outline-dark mt-auto" href="roomInfoList1">View</a>
							</div>
						</div>
					</div>
				</div>
				<div class="col mb-5">
					<div class="card h-100">
						<!-- Product image-->





						<!--#########################55555555555555555555555########################  -->
						<%@ include file="/WEB-INF/views/room2.jsp"%>

						<!--##################55555555555555555555555555555555555555#######################  -->








						<!-- Product details-->
						<div class="card-body p-4">
							<div class="text-center">
								<!-- Product name-->
								<h5 class="fw-bolder">${room2.room_title }</h5>

							</div>
						</div>
						<!-- Product actions-->
						<div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
							<div class="text-center">
								<a class="btn btn-outline-dark mt-auto" href="roomInfoList2">View</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- Bootstrap core JS-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<script src="js/scripts.js"></script>
</body>
</html>
