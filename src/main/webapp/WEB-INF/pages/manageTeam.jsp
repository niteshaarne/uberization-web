<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
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
		$("#adminReviewFeedback").removeClass("active");
		$("#generateReports").removeClass("active");
		$("#manageTeam").addClass("active");
		
		
		$('#userSelect').change(function() {
			if ($(this).val() === 'approvedOption') {
				$(".tr_false").hide();
				$(".tr_true").show();
				$(".hiddenTR").hide();
			}

			if ($(this).val() === 'requestedOption') {
				$(".tr_false").show();
				$(".tr_true").hide();
				$(".hiddenTR").hide();
			}

			if ($(this).val() === 'inPool') {
				$(".tr_false").show();
				$(".tr_true").show();
				$(".hiddenTR").hide();
			}
		});
	});
	
	function markApproved(ele){
		var id = ele.id;
		$("#"+id).hide();
		
	}
	
	function markReject(ele){
		var id = ele.id;
		var loopCounter = id.substr(id.indexOf("_") + 1);
		$("#trid_"+loopCounter).addClass("hiddenTR");
		$(".hiddenTR").hide();
	}
	
</script>

</head>
<body>
	<%@ include file="adminNavBar.jsp"%>
	<div class="container">
		<div class="row" style="margin-bottom: 5%;">
			<div class="col-md-3">
				<div class="form-group">
					<label>Select Pool</label> <select name="userSelect"
						id="userSelect" class="form-control">
						<option value="approvedOption" Selected>Approved</option>
						<option value="requestedOption">Requested</option>
						<option value="inPool">In Pool</option>
					</select>
				</div>
			</div>
		</div>
		<div class="row">
			<div class="table-responsive">
				<table class="table" id="reviewTable">
					<thead class="black white-text">
						<tr class="bg-light-blue">
							<th scope="col">Name</th>
							<th scope="col">Skill</th>
							<th scope="col">Action</th>
						</tr>
					</thead>
					<tbody>

						<c:forEach var="user" items="${userdetailsList}" varStatus="loop">
							<tr class="tr_${user.isApproved}" id="trid_${loop.index}">
								<td >${user.firstName}
									${user.lastName}</td>
								<td><c:forEach var="skill" items="${user.skillSet}"
										varStatus="counter">
   										${skill.name}
  										<c:if test="${!counter.last}">,</c:if>
									</c:forEach></td>
								<td >
									<a href="/generateReports"><button type="button" class="btn btn-primary btn-xs">View Resume</button></a>
									<c:if test="${not user.isApproved }">
										<button type="button" class="btn btn-primary btn-xs" id="approved_${loop.index}" onclick="markApproved(this)">Approve</button>
									</c:if>
									<button type="button" class="btn btn-primary btn-xs" id="reject_${loop.index}" onclick="markReject(this)">Reject</button>
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