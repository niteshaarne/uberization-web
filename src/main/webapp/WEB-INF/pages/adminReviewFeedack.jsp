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
	
});

</script>
	
</head>
<body>
<%@ include file = "adminNavBar.jsp" %>
<div class="container">
		
		<div class="row">
			<div class="table-responsive">
				<table class="table">
					<thead class="black white-text">
						<tr class="bg-light-blue">
							<th scope="col">Name</th>
							<th scope="col">Assigned</th>
							<th scope="col">Completed</th>
							<th scope="col">Acceptable</th>
							<th scope="col">Rating</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="userTaskStatus" items="${userTaskStatusList}" varStatus="loop">
							<tr>
								<td>${userTaskStatus.userName}</td>
								<td>${userTaskStatus.taskAssigned}</td>
								<td>${userTaskStatus.taskCompleted}</td>
								<td><input type="number" formControlName="lastName" ngDefaultControl class="form-control-alt" id="exampleInputlastName" placeholder="Acceptable tasks" size="10"></td>
								<td><input type="number" formControlName="lastName" ngDefaultControl class="form-control-alt" id="exampleInputlastName" placeholder="Rating" size="10"></td>
								<td>
									<button type="button" class="btn btn-primary btn-xs">Sign off</button>
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