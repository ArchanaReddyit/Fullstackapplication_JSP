package utility;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.util.Properties;

public class ConnectionManager {
	
	public static Connection getConnection() {
		Connection con = null;
		try {
		Properties prop  = loadPropertiesFile() ;
		Class.forName(prop.getProperty("driver"));
		con =	DriverManager.getConnection(prop.getProperty("url"),prop.getProperty("username"),prop.getProperty("password"));
		}catch (Exception e) {
				System.out.println(e.getMessage());
		}
		return con;
	
	}

	private static Properties loadPropertiesFile() throws IOException {
		// TODO Auto-generated method stub
		Properties prop = new Properties();	
		InputStream in = ConnectionManager.class.getClassLoader().getResourceAsStream("jdbc.properties");
		prop.load(in);
		in.close(); 
		return prop;
	}
	
}