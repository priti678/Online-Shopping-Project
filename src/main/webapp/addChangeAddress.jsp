<%@include file="changeDetailsHeader.jsp"%>
<%@include file="footer.jsp"%>
<html>
<head>
<link rel="stylesheet" href="css/changeDetails.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<title>Message Us</title>
</head>
<body>
<%
String mesg = request.getParameter("msg");
if("AdressUpdate".equals(mesg)){
	%>
	<h3 class="alert">Address Successfully Updated !</h3>
	<%
}else if("error".equals(mesg)){
	%>
	<h3 class="alert">Some thing Went Wrong! Try Again!</h3>
	<%
}
%>

	<form action="addChangeAddressAction.jsp" method="post">
		<h3>Enter Address</h3>
		<input class="input-style" type="text" name="Address"
			placeholder="Enter Address" required>
		<hr>
		<h3>Enter city</h3>
		<input class="input-style" type="text" name="City"
			placeholder="Enter City" required>
		<hr>
		<h3>Enter State</h3>
		<input class="input-style" type="text" name="State"
			placeholder="Enter State" required>
		<hr>
		<h3>Enter country</h3>
		<input class="input-style" type="text" name="Country"
			placeholder="Enter Country" required>
		<hr>
		<button class="button">
			Save <i class='far fa-arrow-alt-circle-right'></i>
		</button>
	</form>
</body>
<br>
<br>
<br>
</html>