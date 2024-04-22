package dev.anitya.dto;

public class UserLogin {
	
	private String eMail;
	private String password;
	
	public String geteMail() {
		return eMail;
	}
	public void seteMail(String eMail) {
		this.eMail = eMail;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	@Override
	public String toString() {
		return "UserLogin [eMail=" + eMail + ", password=" + password + "]";
	}
	
}
