package appointment;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectDB {
	
	private static String url = "jdbc:mysql://localhost:3306/oop";
	private static String username = "root";
	private static String password = "oop12";
	private static  Connection conn;
	
	public static Connection getConnection() {
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			
			conn = DriverManager.getConnection(url, username, password);
			
			
		}catch(Exception e) {
			
			
			System.out.println(" DB connection is unsuccesfull !!!");
			
		}
		
	return conn;
		
		
		
	}

}
