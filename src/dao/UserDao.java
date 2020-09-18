package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import model.User;
import utility.ConnectionManager;

public class UserDao implements UserDaoInterface {
		
	public int signUp(User user)  {
		
		 try {
			Connection con = ConnectionManager.getConnection();
		    int result = 0;	
		    String sql = "INSERT INTO USERS(email, password)VALUES(?,?)";
		   
			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1,user.getEmail());
			st.setString(2,user.getPassword());
			
			
			result = st.executeUpdate();
			return result;
		} catch (Exception e) {
			System.out.println(e);
		}
		return 0;
	}
	
	public boolean loginUser(User user){
		
			Connection con = ConnectionManager.getConnection();
			boolean result = false;
			System.out.println(con);
			PreparedStatement st;
			try {
				st = con.prepareStatement("SELECT * FROM USERS WHERE email = ? and password = ? ");
				st.setString(1, user.getEmail());
				st.setString(2, user.getPassword());

				System.out.println("Before Query");
				ResultSet rs = st.executeQuery();
				System.out.println("after Query"+rs);
				result = true;
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return result;			
			
	}

}