<%@page import="project.Connectionprovider"%>
<%@page import="java.sql.*"%>

<%
String email = session.getAttribute("email").toString();
String id = request.getParameter("id");
int quantity = 1;
int Product_price = 0;
int product_total = 0;
int Cart_total = 0;

int z = 0;
try {
	Connection con = Connectionprovider.getConnection();
	String q = "select * from product where id='" + id + "'";
	Statement st = con.createStatement();
	ResultSet rs = st.executeQuery(q);
	while (rs.next()) {
		Product_price = rs.getInt(4);
		product_total = Product_price;
	}
	ResultSet rs1 = st.executeQuery("select * from cart where product_id='" + id + "' email='" + email + "' and address is NULL");
	while (rs1.next()) {
		Cart_total = rs1.getInt(5);
		Cart_total = Cart_total + product_total;
		quantity = rs1.getInt(3);
		quantity = quantity + 1;
		z = 1;
	}
	if (z == 1) {
		st.executeUpdate("update table cart set total='" + Cart_total + "', quantity='" + quantity
		+ "' where product_id='" + id + "' email='" + email + "' and address is NULL");
		response.sendRedirect("home.jsp?msg=exist");
	}
	if (z == 0) {
      PreparedStatement ps = con.prepareStatement("insert into cart(email, product_id, quantity, price, total) value(?, ?, ?, ?, ?)");
      ps.setString(1, email);
      ps.setString(2, id);
      ps.setInt(3, quantity);
      ps.setInt(4, Product_price);
      ps.setInt(5, product_total);
      ps.executeUpdate();
      response.sendRedirect("home.jsp?msg=added");
	}
} catch (Exception e) {
	System.out.println(e);
	response.sendRedirect("home.jsp?msg=invalid");
}
%>