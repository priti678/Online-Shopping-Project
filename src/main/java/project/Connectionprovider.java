package project;
import java.sql.*;
public class Connectionprovider {	
	public static Connection getConnection() {		
	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ospjsp","root","root0135");
				
		return con;
	}catch(Exception e){
		System.out.println(e);
		System.out.print("connection not establish");
		return null;
	}	}
}
