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
</head>
<body>
	<%@ include file="userNavBar.jsp"%>

	<div class="container">
	<div class="row" style="margin-bottom: 5%;">
		<div class="col-md-2 col-xs-12"><label >Date Range</label></div>
		<div class="col-md-3 col-xs-12"><div class="input-group date">
  <input type="text" maxlength="14" id="startDate" placeholder="MM/DD/YYYY" data-input-mask-type="date" class="form-control horizon-date-picker horizon-input-mask" data-provide="horizon-date-picker" />
  <span class="input-group-addon">
      <i class="fa fa-calendar"></i>
  </span>
</div></div>
		<div class="col-md-3 col-xs-12"><div class="input-group date">
  <input type="text" maxlength="14" id="endDate" placeholder="MM/DD/YYYY" data-input-mask-type="date" class="form-control horizon-date-picker horizon-input-mask" data-provide="horizon-date-picker" />
  <span class="input-group-addon">
      <i class="fa fa-calendar"></i>
  </span>
</div></div>
		<div class="col-md-3 col-xs-12"><button type="button" class="btn btn-primary" onclick="toggleDiv();">Submit</button></div>
	</div>
		<div class="row">
			<div class="table-responsive">
				<table class="table" id="feedbackAndRatingTable" style="display:none">
					<thead class="black white-text">
						<tr class="bg-light-blue">
							<th scope="col">Date</th>
							<th scope="col">Cases completed</th>
							<th scope="col">Cases accepted</th>
							<th scope="col">Rating</th>
							
						</tr>
					</thead>
					<tbody>
						<c:forEach var="useFeedbackAndRating" items="${useFeedbackAndRating}">
							<tr>
								<td><fmt:formatDate type="both" dateStyle="medium"
										timeStyle="medium" value="${useFeedbackAndRating.jobPostedDate}" /></td>
								<td>${useFeedbackAndRating.numberOfCasesAssigned}</td>
								<td>${useFeedbackAndRating.numberOfCasesAccepted}</td>
								<td>${useFeedbackAndRating.rating}</td>
								
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
		
	</div>
</body>
<script src="https://www.principalcdn.com/css/horizon/v2/horizon.min.js"></script>		
	
<script type="text/javascript">
$(document ).ready(function() {
	$("#userwork").removeClass("active");
	$("#feedbackAndRatings").addClass("active");
	$("#userNotification").removeClass("active");
	
});
</script>

<script type="text/javascript">
function toggleDiv() {
    var lTable = document.getElementById("feedbackAndRatingTable");
    var startDate = $("#startDate").val();
    var endDate = $("#endDate").val();
    if(startDate != undefined && startDate != null && startDate != '' && endDate != undefined && endDate != null && endDate != ''){
    	lTable.style.display = (lTable.style.display == "table") ? "none" : "table";
    }
}
</script>
</html>