
public class User {

	private String userId;
	private String password;
	private int userType;
	
	public User(String userId, String password, int userType){
		this.userId = userId;
		this.password = password;
		this.userType = userType;
	}
	
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public int getUserType() {
		return userType;
	}
	public void setUserType(int userType) {
		this.userType = userType;
	}
}
