<%@page import="project.Connectionprovider"%>
<%@page import="java.sql.*"%>
<%@include file="changeDetailsHeader.jsp"%>
<%@include file="footer.jsp"%>
<html>
<head>
<link rel="stylesheet" href="css/changeDetails.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<title>Change Security Question</title>
</head>
<body>

	<h3 class="alert">Your security Question successfully changed !</h3>

	<h3 class="alert">Your Password is wrong!</h3>


	<h3>Select Your New Securtiy Question</h3>
	<select  class="input-style" name="securityQuestion" required>
		<option value="What was your first car">What was your first
			car</option>
		<option value="What is the name of your first pet">What is
			the name of your first pet</option>
		<option value="what elementory school did you attend">what
			elementory school did you attend</option>
		<option value="what is the name of town where you were born">what
			is the name of town where you were born</option>
	</select>
	<hr>
	<h3>Enter Your New Answer</h3>
	<input class="input-style" type="number" name="mobilenumber"
					placeholder="Enter mobile number" required>

	<hr>
	<h3>Enter Password (For Security)</h3>
<input class="input-style"type="number" name="mobilenumber"
					placeholder="Enter mobile number" required>
	<hr>
		<button class="button">
			Save <i class='far fa-arrow-alt-circle-right'></i>
		</button>
</body>
<br>
<br>
<br>
</html>