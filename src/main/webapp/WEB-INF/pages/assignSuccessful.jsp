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
			
	<div class="container">	
			<h2>Successfully Assigned Work to Freelancers</h2>
			<div class="row util-margin-top-20">	
		   	 <div class="col-md-4 col-xs-12">
		   	 <form action="goToPublish" method="POST">
		       <button type="button" class="btn btn-primary btn-lg">New Job Post</button>
		      </form>
		    </div>
		</div>
	</div>

</body>
<script src="https://www.principalcdn.com/css/horizon/v2/horizon.min.js"></script>
<script type="text/javascript">
function toggleTable() {
    var lTable = document.getElementById("freelancerTable");
    lTable.style.display = (lTable.style.display == "table") ? "none" : "table";
    
    var lTable2 = document.getElementById("publishDetailsTable");
    lTable2.style.display = (lTable2.style.display == "table") ? "none" : "table";
}
</script>
</html>