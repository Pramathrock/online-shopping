package project;
import java.sql.*;

public class Connectionprovider {
	public static Connection getcon()
	{
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ospjsp","root","pram");
			return con;
			
	}
		catch(Exception e){
			System.out.print(e);
			return null;
			
			}
		}
	

}
