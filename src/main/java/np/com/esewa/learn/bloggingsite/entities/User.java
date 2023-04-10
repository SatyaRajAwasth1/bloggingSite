package np.com.esewa.learn.bloggingsite.entities;

import java.sql.Timestamp;

public class User {

	private int id;
	private String name;
	private String email;
	private String password;
	private String about;
	private String gender;
	private Timestamp regdate;
	private String profile;
	public String getProfile() {
		return profile;
	}
	public void setProfile(String profile) {
		this.profile = profile;
	}
	public User(int id, String name, String email, String password, String about, String gender, Timestamp regdate) {
		this.id = id;
		this.name = name;
		this.email = email;
		this.password = password;
		this.about = about;
		this.gender = gender;
		this.regdate = regdate;
	}
	public User() {
		//super();
	}
	public User(String name, String email, String password, String gender , String about) {
		this.name = name;
		this.email = email;
		this.password = password;
		this.about = about;
		this.gender = gender;
		
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getAbout() {
		return about;
	}
	public void setAbout(String about) {
		this.about = about;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public Timestamp getRegdate() {
		return regdate;
	}
	public void setRegdate(Timestamp regdate) {
		this.regdate = regdate;
	}
	
	
}
