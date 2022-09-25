<%@page import="project.Connectionprovider"%>
<%@page import="java.sql.*"%>

<%
String email = request.getParameter("email");
String mobileNumber = request.getParameter("mobileNumber");
String question = request.getParameter("securityQuestion");
String answer = request.getParameter("answer");
String password = request.getParameter("password");


try{
	Connection con = Connectionprovider.getConnection();
	String q = "select * from user where email='"+email+"'";
	Statement st = con.createStatement();
	ResultSet rs = st.executeQuery(q);
	if(rs.next()){
		String q1 = "UPDATE user SET password='"+password+"' WHERE email='"+email+"'";
		st.executeUpdate(q1);
		response.sendRedirect("forgotPassword.jsp?msg=valid");
	}else{
		response.sendRedirect("forgotPassword.jsp?msg=notexist");
	}
	
}catch(Exception e){
	System.out.println(e);
	response.sendRedirect("forgotPassword.jsp?msg=invalid");
}
%>