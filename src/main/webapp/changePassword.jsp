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


<%
String change = request.getParameter("msg");
if("changed".equals(change)){
	%>
	<h3 class="alert">Password change successfully!</h3>
	<%	
}else if("bothNotMatch".equals(change)){
	%>
	<h3 class="alert">New password and Confirm password does not match!</h3>
	<%	
}else if("OldPassWrong".equals(change)){
	%>
	<h3 class="alert">Your old Password is wrong!</h3>
	<%	
}else if("SomeThingWrong".equals(change)){
	%>
	<h3 class="alert">Some thing went wrong! Try again!</h3>
	<%	
}
%>









<form action="changePasswordAction.jsp" method="post">
<h3>Enter Old Password</h3>
 <input class="input-style" type="text" name="OldPassword"
				placeholder="Enter Old Password" required>
  <hr>
 <h3>Enter New Password</h3>
 <input class="input-style" type="password" name="NewPassword"
				placeholder="New password" required>
 <hr>
<h3>Enter Confirm Password</h3>
<input class="input-style" type="text" name="ConfirmedNewPassword"
				placeholder="Confirmed Password" required>
<hr>
 <button class="button">
			Save <i class='far fa-arrow-alt-circle-right'></i>
		</button>
</form>
</body>
<br><br><br>
</html>