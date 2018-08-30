<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
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

	<nav class="navbar navbar-default">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-principal-brand" href="#"> </a>
		</div>
	</div>
	</nav>
	<div class="container">
		<div class="row">
			<div class="col-md-4"></div>
			<div class="col-md-4">
				<form id="login" action="loginService" name="loginName"
					method="POST">
					<div class="form-group">
						<!-- <label for="exampleInputEmail1">Email address</label> -->
						<input type="email" required name="emailId" class="form-control"
							id="exampleInputEmail1" placeholder="Enter email" size="45"
							formControlName="emailid">
					</div>
					<div class="form-group">
						<!-- <label for="exampleInputPassword1">Password</label> -->
						<input type="password" required name="password"
							class="form-control" id="exampleInputPassword1"
							placeholder="Password" size="45" formControlName="passwd">
					</div>
					<input type="submit" class="btn btn-primary" value="Login">
					<a href="registration" class="btn btn-link">Sign up</a>
				</form>
			</div>

		</div>
	</div>
</body>
<script src="https://www.principalcdn.com/css/horizon/v2/horizon.min.js"></script>
</html>