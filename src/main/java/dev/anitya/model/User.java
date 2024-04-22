package dev.anitya.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

//@Entity
@Table(name = "registered_user")
public class User {
	
	@Id
//	@GeneratedValue(strategy = GenerationType.AUTO)
	private long id;
	
	@Column(name="e_mail",length = 50)
	private String eMail;
	
	@Column(name="password",length = 50)
	private String password;
	
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
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
		return "User [id=" + id + ", eMail=" + eMail + ", password=" + password + "]";
	}
	public User(String eMail, String password) {
		super();
		this.eMail = eMail;
		this.password = password;
	}
	public User(long id, String eMail, String password) {
		super();
		this.id = id;
		this.eMail = eMail;
		this.password = password;
	}
	public User() {
		super();
		
	}
	
	
}
