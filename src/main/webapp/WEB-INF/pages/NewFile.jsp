<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<form class="form">
		<div class="form-group">
			<small class="is-required-header pull-right">Required</small>
		</div>
		<div class="form-group">
			<label for="exampleInputtypeOfWork">Type of work</label> <select
				formControlName="typeOfWork" name="typeOfWork"
				id="exampleInputtypeOfWork">
				<option value="caseProcessing">Case processing</option>
				<option value="medicalReviews">Medical review</option>
			</select>
		</div>
		<div class="form-group">
			<label for="exampleInputnumberOfCases">Number of cases</label> <input
				type="number" name="numberOfCases" class="form-control-alt"
				id="exampleInputnumberOfCases" placeholder="Number of cases"
				size="45" formControlName="numberOfCases">
		</div>
		<div class="form-group">
			<label for="exampleInputDeadline">Date of work</label>
			<div class="input-group date">
				<input formControlName="dateOfWork" type="text" maxlength="14"
					placeholder="MM/DD/YYYY" data-input-mask-type="date"
					class="form-control horizon-date-picker horizon-input-mask"
					data-provide="horizon-date-picker"
					data-horizon-date-picker-start-date="0d" /> <span
					class="input-group-addon"> <i class="fa fa-calendar"></i>
				</span>
			</div>


			<div class="form-group">
				<label for="exampleInputDeadline">Response Deadline</label> <input
					type="number" name="responseDeadline"
					formControlName="responseDeadline" ngDefaultControl
					class="form-control-alt" id="exampleInputDeadline"
					placeholder="Response Deadline" size="45">
			</div>

			<input type="submit" [disabled] ="!formdata.valid"
				class="btn btn-primary" value="Add task">
	</form>





</body>
</html>