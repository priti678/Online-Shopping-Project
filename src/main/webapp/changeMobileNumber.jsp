<%@page import="project.Connectionprovider"%>
<%@page import="java.sql.*"%>
<%@include file="changeDetailsHeader.jsp"%>
<%@include file="footer.jsp"%>
<html>
<head>
<link rel="stylesheet" href="css/changeDetails.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<title>Message Us</title>
</head>
<body>

<h3 class="alert">Your Mobile Number successfully changed!</h3>

<h3 class="alert">Your Password is wrong!</h3>


 <h3>Enter Your New Mobile Number</h3>
 <input class="input-style" type="number" name="mobilenumber"
					placeholder="Enter mobile number" required>
 <hr>
<h3>Enter Password (For Security)</h3>
<input class="input-style" type="number" name="mobilenumber"
					placeholder="Enter mobile number" required>
<hr>
<button class="button">
			Save <i class='far fa-arrow-alt-circle-right'></i>
		</button>
</body>
<br><br><br>
</html>