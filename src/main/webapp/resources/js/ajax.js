
function getAppointments() {
	var query = $('#queryText').val();

	$('.container.appointment-area').empty();
	$.ajax({
		type : "GET",
		url : "/search?desc=" + query,
		contentType : "application/json; charset=utf-8",
		dataType : "json",
		success : function(jsonData) {
			if (Object.keys(jsonData).length == 0) {
				$("#error").text("No result found!");
			} else {
				$('.container.appointment-area').append('<div class="row appointment-head"><div class="col-sm-4">Date</div><div class="col-sm-4">Time</div><div class="col-sm-4">Description</div></div>');
				for (var i = 0; i < jsonData.data.length; i++) {
					
					$(".container.appointment-area").append(
							"<div class='row'><div class='col-sm-4'>"
									+ jsonData.data[i].appointment_date
									+ "</div><div class='col-sm-4'>"
									+ jsonData.data[i].appointment_time
									+ "</div><div class='col-sm-4'>"
									+ jsonData.data[i].appointmentDesc + "</div></div>");

				}

			}
		}
	});
}