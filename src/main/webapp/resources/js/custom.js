jQuery(document).ready(function() {

	getAppointments();

	$(".new-btn").click(function() {
		$(".new-btn").hide();
		$(".add-form").show();
	});

	$(".cncl-btn").click(function() {
		$(".new-btn").show();
		$(".add-form").hide();
	});

	$(".add-btn").click(function() {
		var date = $("#datepicker").val();
		var time = $("#time").val();
		var desc = $("#desc").val();
		if (!date || !time || !desc) {
			$(".err").text("Enter All Values.");
			return false;
		}

	});

	$("#searchBtn").click(function(event) {
		alert("Handler for .click() called.");
		getAppointments();
	});
	

});