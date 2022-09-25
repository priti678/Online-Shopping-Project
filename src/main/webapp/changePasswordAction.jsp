<%@page import="project.Connectionprovider"%>
<%@page import="java.sql.*"%>

<%

String OldPassword = request.getParameter("OldPassword");
String NewPassword = request.getParameter("NewPassword");
String ConfirmedNewPassword = request.getParameter("ConfirmedNewPassword");
String CorrectPassword = (String) session.getAttribute("password");
try{
	Connection con = Connectionprovider.getConnection();
	Statement st = con.createStatement();
	if(CorrectPassword.equals(OldPassword)){
		if(NewPassword.equals(ConfirmedNewPassword)){
			String q = "update user set password='"+ConfirmedNewPassword+"' where email= '"+session.getAttribute("email")+"' ";
			st.executeUpdate(q);
			response.sendRedirect("changePassword.jsp?msg=changed");
		}else{
			response.sendRedirect("changePassword.jsp?msg=bothNotMatch");
		}
	}else{
		response.sendRedirect("changePassword.jsp?msg=OldPassWrong");
	}
	
}catch(Exception e){
	System.out.println(e);
	response.sendRedirect("changePassword.jsp?msg=SomeThingWrong");
}
%>