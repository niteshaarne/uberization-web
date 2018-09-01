<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
	
<script type="text/javascript">
$( document ).ready(function() {
	$("#userwork").addClass("active");
	$("#feedbackAndRatings").removeClass("active");
	$("#userNotification").removeClass("active");
	
});
</script>

</head>
<body>
<%@ include file = "userNavBar.jsp" %>

	<%-- <div class="row">
		<div class="col-md-4"></div>
		<div class="col-md-4"></div>
		<div class="col-md-4">Welcome, ${userDetails.firstName}</div>
	</div> --%>
			
			
	<div class="container">
	<div class="row">
	<div class="col-md-4"></div>
	
	
	<div class="col-md-4" >
	<c:forEach var="listValue" items="${jobDetailsUserList}">
	<input type="hidden" name= "jobId" value="${listValue.jobId}">
		<div class="panel panel-primary">
		<div class="panel-heading">Available Work</div>
      <div class="panel-body">	
		<div class="form-group">
			<label for="exampleInputtypeOfWork">Type of work</label> 
			<div>${listValue.typeOfWork}</div>
		</div>
		<div class="form-group">
			<label for="exampleInputnumberOfCases">Requested Date</label>
			<div>${listValue.requestedDate}</div>
		</div>
		<div class="form-group">
			<label for="exampleInputDeadline">Total available cases</label>
			<div>${listValue.numberOfCase}</div>
		</div>
	
		<div class="form-group">
			<label for="exampleInputDeadline">Elected cases</label> 
			<div><input type="number" name="availableHours" formControlName="availableHours" class="form-control-alt" id="exampleInputavailableHours" placeholder="Enter available hours" size="40"></div>
		</div>
		<div class="form-group">
			<label for="exampleInputDeadline">Respond by</label> 
			<div class="text-danger"><strong>${listValue.responsedByDate} <i class="fa fa-clock-o" style="color : #006fa7";></i></strong></div>
		</div>
		
		<div class="form-group">
			 <!-- <a class="btn btn-primary" href="#" role="button" onclick="this.disabled=true">Accept</a> -->
			 <button type="button" onclick="acceptClick();" class="btn btn-primary acceptBtn" onclick="this.disabled=true">Accept</button>
			<button type="button" onclick="declineClick();" class="btn btn-danger declineBtn" onclick="this.disabled=true">Decline</button>
		</div>
		</div>
	</div>
	</c:forEach>	
	
	
	
	<c:forEach var="listValue" items="${jobAssignedDetailsUserList}">
	<input type="hidden" name= "jobId" value="${listValue.jobId}">
		<div class="panel panel-success">
		<div class="panel-heading">Assigned Work</div>
      <div class="panel-body">	
		<div class="form-group">
			<label for="exampleInputtypeOfWork">Type of work</label> 
			<div>${listValue.typeOfWork}</div>
		</div>
		<div class="form-group">
			<label for="exampleInputnumberOfCases">Requested Date</label>
			<div>${listValue.requestedDate}</div>
		</div>
		<div class="form-group">
			<label for="exampleInputDeadline">Number of Cases Assigned</label>
			<div>${listValue.numberOfCaseAssigned}</div>
		</div>
	 </div>
	</div>
	</c:forEach>
	</div>
	</div></div>
	
	
	
</body>
<script src="https://www.principalcdn.com/css/horizon/v2/horizon.min.js"></script>
<script type="text/javascript">

	  $('.acceptBtn').on('click', function() {
		  $(this).parent().find(".acceptBtn").prop("disabled", true);
		  $(this).parent().find(".declineBtn").prop("disabled", true);
	    /* var getParentID = $(this).parent().attr('id');
	    $("#" + getParentID).remove(); */
	  });
	
/* function acceptClick() {
    var lTable = document.getElementById("feedbackAndRatingTable");
    var startDate = $("#startDate").val();
    var endDate = $("#endDate").val();
    if(startDate != undefined && startDate != null && startDate != '' && endDate != undefined && endDate != null && endDate != ''){
    	lTable.style.display = (lTable.style.display == "table") ? "none" : "table";
    }
} */
</script>

<script type="text/javascript">

$('.declineBtn').on('click', function() {
	  $(this).parent().find(".acceptBtn").prop("disabled", true);
	  $(this).parent().find(".declineBtn").prop("disabled", true);
  /* var getParentID = $(this).parent().attr('id');
  $("#" + getParentID).remove(); */
});
	
/* function declineClick() {
    var lTable = document.getElementById("feedbackAndRatingTable");
    var startDate = $("#startDate").val();
    var endDate = $("#endDate").val();
    if(startDate != undefined && startDate != null && startDate != '' && endDate != undefined && endDate != null && endDate != ''){
    	lTable.style.display = (lTable.style.display == "table") ? "none" : "table";
    }
} */
</script>


</html>