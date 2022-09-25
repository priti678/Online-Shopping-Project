<%@page import="project.Connectionprovider"%>
<%@page import="java.sql.*"%>
<%
String email = request.getParameter("email");
String password = request.getParameter("password");
//String name = request.getParameter("name");
if("admin@gmail.com".equals(email) && "admin".equals(password)){
	session.setAttribute("email", email);
	
	response.sendRedirect("admin/adminHome.jsp");
}else{
	int z = 0;
	try{
		
		Connection con = Connectionprovider.getConnection();
		String q = "select email, password from user where email='"+email+"' and password='"+password+"'";
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery(q);
		if(rs.next()){
			z=1;
			session.setAttribute("email", email);
			session.setAttribute("password",password );
			response.sendRedirect("home.jsp");
		}
		if(z==0){
			response.sendRedirect("login.jsp?msg=notexist");
		}
		
	}catch(Exception e){
		response.sendRedirect("login.jsp?msg=invalid");
		System.out.println(e);	
	}
}

%>