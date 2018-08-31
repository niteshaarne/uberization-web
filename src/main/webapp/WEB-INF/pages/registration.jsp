<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
     <meta charset="utf-8">
     <meta http-equiv="x-ua-compatible" content="ie=edge">
     <meta name="viewport" content="width=device-width, initial-scale=1">
     <meta name="description" content="">
     <meta name="author" content="">
     <title></title>
     <!-- Horizon CSS -->
     <link href="https://www.principalcdn.com/css/horizon/v2/horizon.min.css" rel="stylesheet" />
     
     <!-- Application specific CSS -->
     <!-- Optional favicon and apple/android homescreen icons -->
     <meta name="mobile-web-app-capable" content="yes">
     <link rel="shortcut icon" type="image/x-icon" href="https://www.principalcdn.com/css/horizon/v2/favicon.ico">
     <link rel="shortcut icon" type="image/x-icon" href="https://www.principalcdn.com/css/horizon/v2/apple-touch-icon.png">
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
      
<div class="container">
<div class ="row" >
<div class="col-md-4"></div>
<div class="col-md-4">    
	
	<div class="col-md-4"></div>
	<div class="col-md-4"><h4 style="color : #0076cf;"> Registration</h4></div>
	<div class="col-md-4"></div>
	 
<form id="registration"  action="registrationService" name="registrationName" method="POST">
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
   <select name="countryCode" id="countryCodes" class="form-control">
	<option data-countryCode="US" value="1" Selected>USA (+1)</option>
	<option data-countryCode="IN" value="91">India (+91)</option>
	<optgroup label="Other countries">
		<option data-countryCode="GB" value="44" >UK (+44)</option>
		</optgroup>
		</select>
    <!-- <input type="number" name="countrtyCode" formControlName="countrycode" ngDefaultControl class="form-control-alt" id="exampleInputcountrycode" placeholder="Country code" size="5"> -->
    <input style="margin-top:4%;" type="number" name="mobileNumber" formControlName="mobileNumber" ngDefaultControl class="form-control-alt" id="exampleInputmobileNumber" placeholder="Enter mobile number" size="40">
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
      <label for="checkboxLegend2">Medical Review</label>
    </div>
  </fieldset>

  <!-- <div class="form-group">
      <label for="exampleInputFile">Upload your resume</label>
      <input type="file" id="exampleInputFile" name="resume">
  </div> -->
	<input type="submit" [disabled] = "!formdata.valid"  class="btn btn-primary" value="Submit">
  </form>
</div>
  </div>
</body>
<script src="https://www.principalcdn.com/css/horizon/v2/horizon.min.js"></script>
</html>