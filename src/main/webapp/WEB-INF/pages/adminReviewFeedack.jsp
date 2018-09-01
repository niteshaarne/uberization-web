<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<title></title>
<!-- Horizon CSS -->
<link href="https://www.principalcdn.com/css/horizon/v2/horizon.min.css"
	rel="stylesheet">
<!-- Application specific CSS -->
<link href="[URL TO APP CSS]" rel="stylesheet">
<!-- Optional favicon and apple/android homescreen icons -->
<meta name="mobile-web-app-capable" content="yes">
<link rel="shortcut icon" type="image/x-icon"
	href="https://www.principalcdn.com/css/horizon/v2/favicon.ico">
<link rel="shortcut icon" type="image/x-icon"
	href="https://www.principalcdn.com/css/horizon/v2/apple-touch-icon.png">
<script src="https://www.principalcdn.com/css/horizon/v2/horizon.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$("#publishWork").removeClass("active");
		$("#assignWork").removeClass("active");
		$("#adminReviewFeedback").addClass("active");
		$("#generateReports").removeClass("active");
		$("#manageTeam").removeClass("active");
		$("#reviewTable").hide();

		$("#submit").click(function() {
			$("#reviewTable").show();
		});

		calculateTotal();
	});

	function calculateTotal() {
		var totalAssigned = 0;
		$('[id^=taskAssigned_]')
				.each(
						function() {
							var number = this.id.split('_').pop();
							if ($("#tr_" + number).css('display') != 'none'
									&& $("#tr_" + number).css("visibility") != "hidden") {
								totalAssigned = totalAssigned
										+ Number($("#taskAssigned_" + number)
												.html());

							}
						});

		var totalCompleted = 0;
		$('[id^=taskCompleted_]')
				.each(
						function() {
							var number = this.id.split('_').pop();
							if ($("#tr_" + number).css('display') != 'none'
									&& $("#tr_" + number).css("visibility") != "hidden") {
								totalCompleted = totalCompleted
										+ Number($("#taskCompleted_" + number)
												.html());
							}

						});

		$("#totalAssigned").html(totalAssigned);
		$("#totalCompleted").html(totalCompleted);
		calculateAccepted();
	}

	function signOff(ele) {
		var id = ele.id;
		var loopCounter = id.substr(id.indexOf("_") + 1);
		$("#tr_" + loopCounter).hide();
		calculateTotal()
	}

	function calculateAccepted() {
		var total = 0;
		$(".acceptableTextBox")
				.each(
						function() {
							var number = this.id.split('_').pop();
							if ($("#tr_" + number).css('display') != 'none'
									&& $("#tr_" + number).css("visibility") != "hidden") {
								total = Number(total) + Number($(this).val());
							}
						});

		$("#totalAccepted").html(total);
	}
</script>

</head>
<body>
	<%@ include file="adminNavBar.jsp"%>
	<div class="container">
		<div class="row" style="margin-bottom: 5%;">
			<div class="col-md-4 col-xs-12">
				<div class="form-group">
					<label>Type of work</label> <select name="typeOfWork"
						id="typeOfWorks" class="form-control">
						<option value="Dental Claim" Selected>Dental Claim</option>
						<option value="Medical Review">Medical review</option>
					</select>
				</div>
			</div>
			<div class="col-md-4 col-xs-12">
				<label>Date</label>
				<div class="input-group date">
					<input type="text" maxlength="14" placeholder="MM/DD/YYYY"
						data-input-mask-type="date"
						class="form-control horizon-date-picker horizon-input-mask"
						data-provide="horizon-date-picker" /> <span
						class="input-group-addon"> <i class="fa fa-calendar"></i>
					</span>
				</div>
			</div>
			<div class="col-md-4 col-xs-12 util-margin-top-25">
				<button type="button" id="submit" class="btn btn-primary">Submit</button>
			</div>
		</div>
		<div class="row">
			<div>
				<table class="table table-responsive" id="reviewTable">
					<thead class="black white-text">
						<tr class="bg-light-blue">
							<th scope="col">Name</th>
							<th scope="col">Case Assigned</th>
							<th scope="col">Case Completed</th>
							<th scope="col">Acceptable Cases</th>
							<th scope="col">Rating(1-5)</th>
							<th scope="col">Action</th>
						</tr>
					</thead>
					<tbody>

						<c:forEach var="userTaskStatus" items="${userTaskStatusList}"
							varStatus="loop">
							<tr id="tr_${loop.index}">
								<td>${userTaskStatus.userName}</td>
								<td id="taskAssigned_${loop.index}">${userTaskStatus.taskAssigned}</td>
								<td id="taskCompleted_${loop.index}">${userTaskStatus.taskCompleted}</td>
								<td><input type="number" onchange="calculateAccepted(this)"
									class="acceptableTextBox" id="completebutton_${loop.index}"></td>
								<td><input type="number" id="exampleInputlastName"></td>
								<td>
									<button type="button" id="signOff_${loop.index}"
										onclick="signOff(this)" class="btn btn-primary btn-xs">Sign
										off</button>
								</td>
							</tr>
						</c:forEach>
						<tr>
							<td>Total</td>
							<td id="totalAssigned"></td>
							<td id="totalCompleted"></td>
							<td id="totalAccepted"></td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>

</body>
</html>