<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<title>Appointment Reservation</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<!-- My Custom css -->
<link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">

</head>
<body>
	<h1><a href="/">${appname}</a></h1>
	<div class="err"></div>
	<div class="top">
		<button type="button" class="new-btn btn btn-primary">NEW</button>
		<form method="POST" action="add" class="add-form">
			<input type="submit" class="add-btn btn btn-success" value="ADD">
			<button type="button" class="cncl-btn btn btn-danger">CANCEL</button>
			<p>
				<label>Date</label><input type="date" id="datepicker" min="${todayDate}" max="${futureDate}" name="appointment_date">
			</p>
			<p>
				<label>Time</label><input type="time" id="time" name="appointment_time">
			</p>
			<p>
				<label>Desc</label>
				<input type="text" id="desc" name="appointmentDesc">
			</p>
		
		</form>
		<div class="search-form">
			<input type="text" id="queryText" placeholder="Search based on description keyword" > <button id="searchBtn" class="btn btn-dark">Search</button>
		</div>
	</div>
	<div class="container appointment-area">
		<!-- Div will be appended here through AJAX -->
	</div>



	<!-- JS for bootstrap -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>

	<!-- My ajax call -->
	<script src="<c:url value="/resources/js/ajax.js" />"></script>
	<!-- My custom css -->
	<script src="<c:url value="/resources/js/custom.js" />"></script>
</body>
</html>