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
$(document ).ready(function() {
	$("#userwork").addClass("active");
	$("#feedbackAndRatings").removeClass("active");
	$("#userNotification").removeClass("active");
});

function markComplete(ele){
	var id = ele.id;
	var loopCounter = id.substr(id.indexOf("_") + 1);
	$("#jobStatus_"+loopCounter).html("Completed");
	$("#"+id).prop('disabled', true);
	$("#"+id).toggleClass('btn-primary btn-default-alt');
	
}
</script>
	
</head>
<body>
	<%@ include file="userNavBar.jsp"%>

	<div class="container">
		<div class="row">
			<div class="table-responsive">
				<table class="table">
					<thead class="black white-text">
						<tr class="bg-light-blue">
							<th scope="col">Date</th>
							<th scope="col">Task assigned</th>
							<th scope="col">Status</th>
							<th scope="col">Actions</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="userwork" items="${userWorkList}" varStatus="loop">
							<tr>
								<td><fmt:formatDate type="both" dateStyle="medium" timeStyle="medium" value="${userwork.jobPostedDate}" /></td>
								<td>${userwork.numberOfCasesAssigned}</td>
								<td id="jobStatus_${loop.index}">${userwork.jobstatus}</td>
								<td>
									<button type="button" id="completebutton_${loop.index}" onclick="markComplete(this)" class="btn btn-primary btn-xs">Mark as complete</button>
									<button type="button" class="btn btn-primary btn-xs">Cancel</button>
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
			
		</div>
	</div>

</body>
</html>