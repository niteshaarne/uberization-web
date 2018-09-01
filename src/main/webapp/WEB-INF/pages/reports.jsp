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
</head>
<body>
	<%@ include file="adminNavBar.jsp"%>

	<%-- <div class="row">
		<div class="col-md-4"></div>
		<div class="col-md-4"></div>
		<div class="col-md-4">Welcome, ${userDetails.firstName}</div>
	</div> --%>


	<div class="container">
		<div class="row">
			<div class="col-md-4"></div>
			<div class="col-md-4">

				<form id="reports" action="generateReports"
					name="reportsName" method="POST">
					<!-- <div class="form-group">
						<label for="exampleInputnumberOfCases">Number of cases</label> <input
							type="number" name="numberOfCases" class="form-control-alt"
							id="exampleInputnumberOfCases" placeholder="Number of cases"
							size="45" formControlName="numberOfCases">
					</div> -->
					<div class="form-group">
						<label for="exampleInputDeadline">Date Range</label>
						<div class="input-group date">
							<input formControlName="dateOfWork1" name="dateRange1" type="text"
								maxlength="14" placeholder="MM/DD/YYYY"
								data-input-mask-type="date"
								class="form-control horizon-date-picker horizon-input-mask"
								data-provide="horizon-date-picker"
								data-horizon-date-picker-end-date="0d" /> <span
								class="input-group-addon"> <i class="fa fa-calendar"></i>
							</span>
							<input formControlName="dateOfWork2" name="dateRange2" type="text"
								maxlength="14" placeholder="MM/DD/YYYY"
								data-input-mask-type="date"
								class="form-control horizon-date-picker horizon-input-mask"
								data-provide="horizon-date-picker"
								data-horizon-date-picker-start-date="0d" /> <span
								class="input-group-addon"> <i class="fa fa-calendar"></i>
							</span>
						</div>
					</div>
					<div class="form-group">
						<label for="exampleInputtypeOfWork">Type of work</label> <select
							name="typeOfWork" id="typeOfWorks" class="form-control">
							<option value="Case Processing" Selected>Case processing</option>
							<option value="Medical Review">Medical review</option>
						</select>
					</div>

					<!-- <div class="form-group">
				<label for="exampleInputDeadline">Response Deadline</label> <input
					type="number" name="responseDeadline"
					formControlName="responseDeadline" ngDefaultControl
					class="form-control-alt" id="exampleInputDeadline"
					placeholder="Response Deadline" size="45">
			</div> -->

					<input type="submit" [disabled] ="!formdata.valid"
						class="btn btn-primary" value="Generate">
				</form>
			</div>

		</div>
	</div>
</body>
<script src="https://www.principalcdn.com/css/horizon/v2/horizon.min.js"></script>
<script type="text/javascript">
$( document ).ready(function() {
	$("#publishWork").removeClass("active");
	$("#assignWork").removeClass("active");
	$("#adminReviewFeedback").removeClass("active");
	$("#generateReports").addClass("active");
	$("#manageTeam").removeClass("active");
	
});
</script>
</html>