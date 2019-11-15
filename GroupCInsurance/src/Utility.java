import java.sql.Connection;
import java.sql.DriverManager;

public class Utility {

	private static final String userName = "system";
	private static final String password = "Admin@123";
	private static final String driver = "oracle.jdbc.driver.OracleDriver";
	private static final String dbURL = "jdbc:oracle:thin:@Localhost:1521:xe";
	private static Connection conn;
	
	public static Connection getConnection() throws Exception{
		System.out.println("**********Utility Class Called**********");
		Class.forName(driver);
		conn = DriverManager.getConnection(dbURL, userName, password);
		return conn;
	}
	
	public static void getClose(){
		try {
		     if (conn != null){
		    	 conn.close();
		    	 System.out.println("**********Connection Closed**********");
		    	 }
		   }
		   catch (Exception e) {
		   }
	}
}
