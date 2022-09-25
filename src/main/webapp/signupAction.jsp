<%@page import="project.Connectionprovider"%>
<%@page import="java.sql.*"%>

<%
String name = request.getParameter("name");
String email = request.getParameter("email");
String mobileNumber = request.getParameter("mobilenumber");
String securityQuestion = request.getParameter("securityQuestion");
String answer = request.getParameter("answer");
String password = request.getParameter("password");
String address = "";
String city = "";
String state = "";
String country = "";

try{
	Connection con = Connectionprovider.getConnection();
	PreparedStatement pr = con.prepareStatement("insert into user values(?,?,?,?,?,?,?,?,?,?)");
	pr.setString(1, name);
	pr.setString(2, email);
	pr.setString(3, mobileNumber);
	pr.setString(4, securityQuestion);
	pr.setString(5, answer);
	pr.setString(6, password);
	pr.setString(7, address);
	pr.setString(8, city);
	pr.setString(9, state);
	pr.setString(10, country);
	pr.execute();
	response.sendRedirect("index.jsp?msg=valid");
	
}catch(Exception e){
	System.out.println(e);
	response.sendRedirect("index.jsp?msg=invalid");
}
%>