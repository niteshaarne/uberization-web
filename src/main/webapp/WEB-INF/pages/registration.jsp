<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration</title>
<link href="https://www.principalcdn.com/css/horizon/v2/horizon.min.css" rel="stylesheet">
</head>
<body>
<nav class="navbar navbar-default">
        <div class="container-fluid">
          <div class="navbar-header">
            <a class="navbar-principal-brand" href="#">
            </a>
          </div>
        </div>
      </nav>
<div align="center">
<form id="registration"  action="registrationService" name="registrationName" method="POST" >
	<div class="form-group">
	  <!-- <label for="exampleInputfirstName">First Name</label> -->
	  <input type="text" name="firstName" formControlName="firstName" ngDefaultControl class="form-control-alt" id="exampleInputfirstName" placeholder="Enter first name" size="45">
	</div>
	<div class="form-group">
    <!-- <label for="exampleInputlastNamlastNamee">Last Name</label> -->
    <input type="text" name="lastName" formControlName="lastName" ngDefaultControl class="form-control-alt" id="exampleInputlastName" placeholder="Enter last name" size="45">
	 	</div>

	<div class="form-group">
    <!-- <label for="exampleInputmobileNumber">Mobile Number</label> -->
   <div class="input-w">
    <input type="number" name="countrtyCode" formControlName="countrycode" ngDefaultControl class="form-control-alt" id="exampleInputcountrycode" placeholder="Country code" size="5">
    <input type="number" name="mobileNumber" formControlName="mobileNumber" ngDefaultControl class="form-control-alt" id="exampleInputmobileNumber" placeholder="Enter mobile number" size="40">
  </div>
  </div>
  <div class="form-group">
		<!-- <label for="exampleInputEmail1">Emapasswordil Id</label> -->
		<input type="email" name="emailId" formControlName="emailId" ngDefaultControl class="form-control-alt" id="exampleInputEmail1" placeholder="Enter your email id" size="45">
  </div>

  <div class="form-group">
		<!-- <label for="exampleInputPassword">Password</label> -->
		<input type="password" name="password" formControlName="password" ngDefaultControl class="form-control-alt" id="exampleInputPassword" placeholder="Enter your password" size="45">
  </div>

  <fieldset class="form-group skillBorder">
    <legend class="hzn-radiocheckbox-legend">Select your skills</legend>
    <div class="checkbox styled-checkbox">
      <input type="checkbox" name="caseProcessing" id="checkboxLegend1" formControlName="caseProcessing" >
      <label for="checkboxLegend1">Case Processing</label>
    </div>
    <div class="checkbox styled-checkbox">
      <input type="checkbox" name="medicalReview" id="checkboxLegend2" formControlName="medicalReview" >
      <label for="checkboxLegend2">Medical review</label>
    </div>
  </fieldset>

  <div class="form-group">
      <label for="exampleInputFile">Upload your resume</label>
      <input type="file" id="exampleInputFile">
  </div>
	<input type="submit" [disabled] = "!formdata.valid"  class="btn btn-primary" value="Next">
  </form>
</div>
</body>
<script src="https://www.principalcdn.com/css/horizon/v2/horizon.min.js"></script>
</html>