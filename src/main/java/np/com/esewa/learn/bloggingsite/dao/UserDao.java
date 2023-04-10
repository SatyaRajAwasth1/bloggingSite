package np.com.esewa.learn.bloggingsite.dao;

import np.com.esewa.learn.bloggingsite.entities.User;

import java.sql.*;

public class UserDao {

	private Connection con;

	public UserDao(Connection con) {
		this.con = con;
	}
	
	//insert registered user to database
	
	public boolean insertUser(User user) {
		boolean temp=false;
		try {
			String query="insert into user (name, email, password, gender, about) values (?,?,?,?,?)";
			PreparedStatement prstmt= this.con.prepareStatement(query);
			prstmt.setString(1,user.getName());
			prstmt.setString(2, user.getEmail());
			prstmt.setString(3, user.getPassword());
			prstmt.setString(4, user.getGender());
			prstmt.setString(5, user.getAbout());
	
			prstmt.executeUpdate();
			temp=true;
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return temp;
	}
	// get user by email and password while logging in
	public User getUserByEmailPassword(String email, String password) {
	User user = null;
	try {
	String query = "select * from user where email =? and password =?";
	PreparedStatement pstmt= con.prepareStatement(query);
	pstmt.setString(1, email);
	pstmt.setString(2, password);
	ResultSet set = pstmt.executeQuery();
	
	if(set.next()) {
		user = new User();
		//data from db
		String name=set.getString("name");  //set to user object
		user.setName(name);
		user.setEmail(set.getString("email"));
		user.setAbout(set.getString("about"));
		user.setId(set.getInt("id"));
		user.setGender(set.getString("gender"));
		user.setPassword(set.getString("password"));
		user.setRegdate(set.getTimestamp("regdate"));
		user.setProfile(set.getString("profile"));
	}
	}
	catch(Exception e) {
		e.printStackTrace();
	}
	
	return user;
	}
	// method to update the user
	public boolean updateUser(User user) {
		boolean result = false;
		try {
		String query = "update user set name=? , email=? , about=? , password=?, profile=? where id=?";	
		PreparedStatement pstmt= con.prepareStatement(query);
		pstmt.setString(1, user.getName());
		pstmt.setString(2, user.getEmail());
		pstmt.setString(3, user.getAbout());
		pstmt.setString(4, user.getPassword());
		pstmt.setString(5, user.getProfile());
		pstmt.setInt(6, user.getId());
		pstmt.executeUpdate();
		result = true;
		}
		catch(Exception e) {
		e.printStackTrace();	
		}
		return result;
	}
	
	
	
	
	}
	
	

