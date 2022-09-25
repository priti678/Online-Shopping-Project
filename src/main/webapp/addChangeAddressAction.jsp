<%@page import="project.Connectionprovider"%>
<%@page import="java.sql.*"%>

<%
String Address = request.getParameter("Address");
String City = request.getParameter("City");
String State = request.getParameter("State");
String Country =  request.getParameter("Country");
try{
	Connection con = Connectionprovider.getConnection();
	String q = "update user set address='"+Address+"', city='"+City+"', state='"+State+"', country='"+Country+"' where email='"+session.getAttribute("email")+"'";
	Statement st = con.createStatement();
	st.executeUpdate(q);
	response.sendRedirect("addChangeAddress.jsp?msg=AdressUpdate");
}catch(Exception e){
	System.out.println(e);
	response.sendRedirect("addChangeAddress.jsp?msg=error");
}
%>