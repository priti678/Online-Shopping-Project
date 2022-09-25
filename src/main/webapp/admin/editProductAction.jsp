<%@page import="project.Connectionprovider"%>
<%@page import="java.sql.*"%>
<%
String id = request.getParameter("id");
out.println("id: " + id);
String name = request.getParameter("name");
out.println("id: " + name);
String category = request.getParameter("category");
String price = request.getParameter("price");
String Action = request.getParameter("action");
try{
	Connection con = Connectionprovider.getConnection();
	String q = "update product set name='"+name+"', category='"+category+"', price='"+price+"', action='"+Action+"' where id='"+id+"'";
    Statement st = con.createStatement(); 
    st.execute(q);
    if(Action.equals("No")){
    	st.executeUpdate("delete from cart where product_id='"+id+"'and address is NULL");
    }
        response.sendRedirect("allProductEditProduct.jsp?msg=done");  
}catch(Exception e){
	System.out.println(e);
	response.sendRedirect("allProductEditProduct.jsp?msg=wrong");
}
%>