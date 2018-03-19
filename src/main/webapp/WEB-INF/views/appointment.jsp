<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<title>Appointment Reservation</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<!-- My Custom css -->
<link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">

</head>
<body>
	<h1>
		<a href="/">Appointment System</a>
	</h1>
	<div class="err"></div>
	<div class="top">
		<button type="button" class="new-btn">NEW</button>
		<form method="POST" action="add" class="add-form">
			<input type="submit" class="add-btn" value="ADD">
			<button type="button" class="cncl-btn">CANCEL</button>
			<p>
				<label>Date</label><input type="Date" id="date" name="date">
			</p>
			<p>
				<label>Time</label><input type="Time" id="time" name="time">
			</p>
			<p>
				<label>Desc</label>
				<textarea id="desc" name="desc"></textarea>
			</p>
		</form>
		<form method="GET" action="search" class="search-form">
			<input type="text"> <input type="submit" value="Search">
		</form>
	</div>
	<div class="container appointment-area">
		<div class="row appointment-head">
			<div class="col-sm-4">Date</div>
			<div class="col-sm-4">Time</div>
			<div class="col-sm-4">Description</div>
		</div>
		<c:forEach items="${app}" var="appointment">
			<div class="row appointment-contents">
				<div class="col-sm-4">${appointment.date}</div>
				<div class="col-sm-4">${appointment.time}</div>
				<div class="col-sm-4">${appointment.desc}</div>
			</div>
		</c:forEach>


	</div>

	<!-- JS for bootstrap -->
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>

	<!-- My custom css -->
	<script src="<c:url value="/resources/js/custom.js" />"></script>
</body>
</html>