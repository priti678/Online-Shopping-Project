<%@page import="project.Connectionprovider"%>
<%@page import="java.sql.*"%>

<%
try{
	Connection con = Connectionprovider.getConnection();
	Statement st = con.createStatement();
	String q1 = "create table user(name varchar(100), email varchar(100) primary key,mobilenumber bigint, securityQuestion varchar(200),answer varchar(200), password varchar(100), address varchar(500), city varchar(100), state varchar(100), country varchar(100))";
	System.out.println(q1);
	st.execute(q1);
	System.out.println("table created");
	con.close();
}
catch(Exception e){
            System.out.println(e);
}
%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<title>Signup</title>
</head>
<body>
	<div id='container'>
		<div class='signup'>
			<form action="signupAction.jsp" action="post">
			    
				<input type="text" name="name" placeholder="Enter name" required>
				<input type="email" name="email" placeholder="Enter email" required>
				<input type="number" name="mobilenumber"
					placeholder="Enter mobile number" required> <select
					name="securityQuestion" required>
					<option value="What was your first car">What was your
						first car</option>
					<option value="What is the name of your first pet">What is
						the name of your first pet</option>
					<option value="what elementory school did you attend">what
						elementory school did you attend</option>
					<option value="what is the name of town where you were born">what
						is the name of town where you were born</option>
				</select> <input type="text" name="answer" placeholder="Enter Answer"
					required> <input type="password" name="password"
					placeholder="Enter password"> <input type="submit"
					value="signup">
			</form>
			<h2>
				<a href="login.jsp">Login</a>
			</h2>
		</div>
		<div class='whysign'>
			<% 
  String msg = request.getParameter("msg");
  if("valid".equals(msg)){
	  %>
	  <h1>Successfully Updated</h1>			  
 <%
  }
  %>
  
  <%
  if("invalid".equals(msg)){
	  %>
	  	<h1>Some thing Went Wrong! Try Again !</h1>
	  <%	  
  }
  %>

			


		

			<h2>Online Shopping</h2>
			<p>The Online Shopping System is the application that allows the
				users to shop online without going to the shops to buy them.</p>
		</div>
	</div>

</body>
</html>