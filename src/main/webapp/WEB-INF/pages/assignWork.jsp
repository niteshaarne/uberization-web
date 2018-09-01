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
<%@ include file = "adminNavBar.jsp" %>

	<%-- <div class="row">
		<div class="col-md-4 col-xs-12">Welcome, ${userDetails.firstName}</div>
	</div>	 --%>
			
	<div class="container">
			<div class="row util-margin-top-20">
			<div class="col-md-4 col-xs-12">
			<div class="form-group">
			<label for="inputtypeOfWork">Type of work</label> 
				  <select class="form-control">
		            <option>Medical Review</option>
		            <option>Case Processing</option>
		          </select>
			</div>
			</div>
			<div class="col-md-4 col-xs-12">
			<div class="form-group">
			<label for="inputDeadline">Date of work</label>
				<div class="input-group date">
				  <input type="text" maxlength="14" placeholder="MM/DD/YYYY" data-input-mask-type="date" class="form-control horizon-date-picker horizon-input-mask" data-provide="horizon-date-picker" />
				  <span class="input-group-addon">
				      <i class="fa fa-calendar"></i>
				  </span>
				</div>
			</div>
			</div>
			<div class="col-md-4 col-xs-12 util-margin-top-25">
				<input type="submit" [disabled] ="!formdata.valid" class="btn btn-primary" onclick="toggleTable();" value="Search">
			</div>
		</div>
		
		<div class="row util-margin-top-10">
		<div class="col-md-4 col-xs-12">
			<table class="table table-bordered" id="publishDetailsTable" style="text-align:center;display:none">
				<tbody>
            		<tr>
	            		<td class="active">Published</td>
	              		<td>100</td>
              		</tr>
              		<tr>
	            		<td class="active">Unassigned</td>
	              		<td>10</td>
              		</tr>
			</table>	
		</div>
		</div>
		
		
		<form id="assignWork"  action="assignWorkPage" name="assignWorkName" method="POST" >
		<div class="row util-margin-top-10">
			
		<table class="table table-bordered" id="freelancerTable" style="text-align:center;display:none">
          <thead>
            <tr class="tr-divider">
              <th class="text-center">Name</th>
              <th class="text-center">Aggregate Rating</th>
              <th class="text-center">Availability</th>
              <th class="text-center">Assigned</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td>Aritra Banerjee</td>
              <td>4.5</td>
              <td>20</td>
              <td><div contenteditable>0</div></td>
            </tr>
            <tr>
              <td>Nitesh Aarne</td>
              <td>4</td>
              <td>40</td>
              <td><div contenteditable>0</div></td>
            </tr>
            <tr>
              <td>Srutarshi Dutta</td>
              <td>5</td>
              <td>30</td>
              <td><div contenteditable>0</div></td>
            </tr>
            <tr class="success">
              <td>Total</td>
              <td></td>
              <td>90</td>
              <td></td>
            </tr>
          </tbody>
		</table>
		</div>
		<div class="row">
		<div class="col-md-4 col-xs-12"></div>
		<div class="col-md-4 col-xs-12"></div>
			<input type="submit" [disabled] ="!formdata.valid"
					class="btn btn-primary" value="Publish to All" id="publishAll" style="display:none;">
		</div>
		</form>
	</div>
</body>
<script src="https://www.principalcdn.com/css/horizon/v2/horizon.min.js"></script>
<script type="text/javascript">
function toggleTable() {
    var lTable = document.getElementById("freelancerTable");
    lTable.style.display = (lTable.style.display == "table") ? "none" : "table";
    
    var lTable2 = document.getElementById("publishDetailsTable");
    lTable2.style.display = (lTable2.style.display == "table") ? "none" : "table";
    
    document.getElementById("publishAll").style.display = "block";
}
</script>
<script type="text/javascript">
$( document ).ready(function() {
	$("#publishWork").removeClass("active");
	$("#assignWork").addClass("active");
	$("#adminReviewFeedback").removeClass("active");
	$("#generateReports").removeClass("active");
	$("#manageTeam").removeClass("active");
	
});
</script>
</html>