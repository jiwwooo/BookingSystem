<%@page import="javax.websocket.Session"%>
<%@page import="org.springframework.web.context.annotation.SessionScope"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<meta charset="UTF-8">
<link rel="shortcut icon" href="#">


<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Shop Item - Start Bootstrap Template</title>
<!-- Favicon-->
<link rel="icon" type="image/x-icon" href="/assets/favicon.ico" />
<!-- Bootstrap icons-->

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
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
	<%
		if (session.getAttribute("name") != null) {
		if (session.getAttribute("name").equals("X#$admin951$#X") && session.getAttribute("pwd").equals("12345")) {
	%>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<div class="container px-4 px-lg-5">

		<a  href=roomInfoList1>RoomInfo</a>
		<a  href=consultList>ConsultList</a>
		<a  href=noticeList>Notice</a>
	<li class="nav-item dropdown"><a class="nav-link dropdown-toggle"
		id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown"
		aria-expanded="true">Consult</a>
		<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
			<li><a class="dropdown-item" href="noticeList">NoticeList</a></li>
			<li><hr class="dropdown-divider" /></li>
<li class="nav-item"><a class="nav-link" href="/logout">ログアウト</a></li>		</ul></li>
</div>
</nav>


	<ul>
		<li class="nav-item dropdown"><a class="nav-link dropdown-toggle"
			id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown"
			aria-expanded="true">admin</a>
			<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
				<li><a class="dropdown-item" href="noticeList">Notice
						Management</a></li>
				<li><a class="dropdown-item" href="consultList">Consultation
						Management</a></li>
				<li><hr class="dropdown-divider" /></li>
				<li><a class="dropdown-item" href="paymentList">Payment
						Management</a></li>
				<li><a class="dropdown-item" href="#!">Room Info Management</a></li>
			</ul></li>
	</ul>
	<%
		} else {
	%>
	<!-- Navigation-->
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<div class="container px-4 px-lg-5">
			<a class="navbar-brand" href="#">ジウホテル</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
					<!-- <li class="nav-item"><a class="nav-link active"
						aria-current="page" href="frontPage">Home</a></li> -->
					<li class="nav-item"><a class="nav-link" href="#!">About</a></li>
					<li class="nav-item"><a class="nav-link" href="roomInfoList1">Booking</a></li>
					<li class="nav-item"><a class="nav-link" href="noticeList">Notice</a></li>
					<li class="nav-item"><a class="nav-link" href="consultList">consult</a></li>


					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" id="navbarDropdown" href="#"
						role="button" data-bs-toggle="dropdown" aria-expanded="true">Consult</a>
						<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
							<li><a class="dropdown-item" href="noticeList">NoticeList</a></li>
							<li><hr class="dropdown-divider" /></li>
							<li><a class="dropdown-item" href=consultList>ConsultList</a></li>
						</ul></li>

					<%
						if (session.getAttribute("name") != null) {
					%>
					<li class="nav-item"><a class="nav-link" href="/logout">ログアウト</a></li>
					<%
						} else {
					%>
					<li class="nav-item"><a class="nav-link" href="firstPage">ログイン</a></li>
					<%
						}
					%>
				</ul>
			</div>
			<button class="btn btn-outline-dark"
				onclick="location.href='bookingList'">
				<i class="bi-cart-fill me-1"></i> Cart <span
					class="badge bg-dark text-white ms-1 rounded-pill"><%=session.getAttribute("cart")%></span>
			</button>

		</div>
	</nav>




	<%
		}
	} else {
	%>
	<script type="text/javascript">
		alert("do login!");
		location.replace("/#contact");
	</script>
	<%
		}
	%>
</body>
</html>