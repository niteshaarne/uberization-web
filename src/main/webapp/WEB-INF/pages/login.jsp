<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
 <link href="https://www.principalcdn.com/css/horizon/v2/horizon.min.css" rel="stylesheet">
</head>
<body>
<div align="center">
<form role="form" [formGroup]="formdata" (ngSubmit) = "onClickSubmit(formdata.value)" >
  <div class="form-group">
    <!-- <label for="exampleInputEmail1">Email address</label> -->
    <input type="email" class="form-control-alt" id="exampleInputEmail1" placeholder="Enter email" size="45"  formControlName="emailid">
  </div>
  <div class="form-group">
    <!-- <label for="exampleInputPassword1">Password</label> -->
    <input type="password" class="form-control-alt" id="exampleInputPassword1" placeholder="Password" size="45" formControlName="passwd">
  </div>
  <input type="submit" [disabled] = "!formdata.valid"  class="btn btn-primary" value="Login">
   <a routerLink = "/registration"  class="btn btn-link">Sign up</a>
  </form>
  </div>
</body>
<script src="https://www.principalcdn.com/css/horizon/v2/horizon.min.js"></script>
</html>