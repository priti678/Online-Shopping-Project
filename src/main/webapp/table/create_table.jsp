<%@page import="project.Connectionprovider"%>
<%@page import="java.sql.*"%>

<%
try{
	
	Connection con = Connectionprovider.getConnection();
	Statement st = con.createStatement();
	String q1 = "create table user(name varchar(100), email varchar(100) primary key,mobilenumber bigint, securityQuestion varchar(200),answer varchar(200), password varchar(100), address varchar(500), state varchar(100), country varchar(100))";
	String q2 = "create table product(id int , name varchar(500), category varchar(500), price int,action varchar(10))";
	String q3 = "create table cart(email varchar(100), product_id int, quantity int, price int, total int, address varchar(500), city varchar(100), state varchar(100), country varchar(100),mobileNumber bigint, orderDate varchar(100), deliveryDate varchar(100), paymentMethod varchar(100), transactionId  varchar(100), status varchar(100))";
	System.out.println(q1);
	//st.execute(q2);
	//st.execute(q3);
	System.out.println("table created");
	con.close();
}
catch(Exception e){
            System.out.println(e);
}
%>