package np.com.esewa.learn.bloggingsite.utilities;
import java.sql.*;

public class ConnectionProvider {
	
	private static Connection con;
	public static Connection connectDB() {
	
		try {
			//do jdbc connectivity if there is not connection
			if(con==null) {
			// loading driver connection
				Class.forName("com.mysql.cj.jdbc.Driver");
			//creating connection
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bloggingSite","root","password");
			}
		}
		catch(Exception e) {
			e.printStackTrace();
			System.out.println("Error happened on connecting database");
		}
		return con;
	}
	

}
