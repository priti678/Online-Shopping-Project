<%@page import="project.Connectionprovider"%>
<%@page import="java.sql.*"%>

<%
String id = request.getParameter("id");
String name = request.getParameter("name");
String category = request.getParameter("category");
String price = request.getParameter("price");
String action = request.getParameter("action");


try{
	Connection con = Connectionprovider.getConnection();
	PreparedStatement pr = con.prepareStatement("insert into product values(?,?,?,?,?)");
	pr.setString(1, id);
	pr.setString(2, name);
	pr.setString(3, category);
	pr.setString(4, price);
	pr.setString(5, action);
	pr.execute();
	response.sendRedirect("addNewProduct.jsp?msg=done");
	
}catch(Exception e){
	System.out.println(e);
	response.sendRedirect("addNewProduct.jsp?msg=invalid");
}
%>