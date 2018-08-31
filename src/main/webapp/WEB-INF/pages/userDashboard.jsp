<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<%@ include file = "userNavBar.jsp" %>

	<div class="row">
		<div class="col-md-4"></div>
		<div class="col-md-4"></div>
		<div class="col-md-4">Welcome, ${userDetails.firstName}</div>
	</div>
			
			
	<div class="container">
	<div class="row">
	<div class="col-md-4"></div>
	
	
	<div class="col-md-4" >
	<c:forEach var="listValue" items="${jobDetailsUserList}">
	<input type="hidden" name= "jobId" value="${listValue.jobId}">
		<div class="panel panel-default">
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
			<label for="exampleInputDeadline">Number of Cases</label>
			<div>${listValue.numberOfCase}</div>
		</div>
	
		<div class="form-group">
			<label for="exampleInputDeadline">Available hours</label> 
			<div><input type="number" name="availableHours" formControlName="mobileNumber" class="form-control-alt" id="exampleInputmobileNumber" placeholder="Enter available hours" size="40"></div>
		</div>
		<div class="form-group">
			<label for="exampleInputDeadline">Respond by</label> 
			<div>${listValue.responsedByDate}</div>
		</div>
		
		<div class="form-group">
			<button type="button" class="btn btn-primary">Accept</button>
			<button type="button" class="btn btn-danger">Decline</button>
		</div>
		</div>
	</div>
	</c:forEach>	
	</div>
	</div></div>
	
	
	
</body>
<script src="https://www.principalcdn.com/css/horizon/v2/horizon.min.js"></script>
</html>