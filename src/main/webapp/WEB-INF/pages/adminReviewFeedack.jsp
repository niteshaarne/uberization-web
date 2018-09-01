<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
		$("#publishwork").removeClass("active");
		$("#assignWork").removeClass("active");
		$("#reviewFeedback").addClass("active");
		$("#reviewTable").hide();

		$("#submit").click(function() {
			$("#reviewTable").show("slow");
		});

	});

	function calculateAccepted() {
		var total = 0;
		$(".acceptableTextBox").each(function() {
			total = Number(total) + Number($(this).val());
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
						<option value="Case Processing" Selected>Case processing</option>
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
				<button type="button" id="submit" class="btn btn-danger">Submit</button>
			</div>
		</div>
		<div class="row">
			<div class="table-responsive">
				<table class="table" id="reviewTable">
					<thead class="black white-text">
						<tr class="bg-light-blue">
							<th scope="col">Name</th>
							<th scope="col">Assigned</th>
							<th scope="col">Completed</th>
							<th scope="col">Acceptable</th>
							<th scope="col">Rating</th>
							<th scope="col">Action</th>
						</tr>
					</thead>
					<tbody>

						<c:forEach var="userTaskStatus" items="${userTaskStatusList}"
							varStatus="loop">
							<tr>
								<td>${userTaskStatus.userName}</td>
								<td>${userTaskStatus.taskAssigned}</td>
								<td>${userTaskStatus.taskCompleted}</td>
								<td><input type="number" onchange="calculateAccepted(this)"
									class="acceptableTextBox" id="completebutton_${loop.index}"
									placeholder="Acceptable tasks" size="10"></td>
								<td><input type="number" id="exampleInputlastName"
									placeholder="Rating" size="10"></td>
								<td>
									<button type="button" class="btn btn-primary btn-xs">Sign
										off</button>
								</td>
							</tr>
						</c:forEach>
						<tr>
							<td>Total</td>
							<td>${totalAssigned}</td>
							<td>${totalCompleted}</td>
							<td id="totalAccepted">${totalCompleted}</td>
						</tr>
					</tbody>
				</table>
			</div>

		</div>
	</div>

</body>
</html>