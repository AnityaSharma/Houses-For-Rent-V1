package dev.anitya.model;

import java.util.List;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.SequenceGenerator;
import jakarta.persistence.Table;

@Entity
@Table(name = "registered_user")
public class UserRegisteration {
	
	@Id
	@SequenceGenerator(name="genn",sequenceName = "reg_user_seq",initialValue = 1001,allocationSize = 1)
	@GeneratedValue(strategy = GenerationType.SEQUENCE,generator = "genn")
	private Long id;
	@Column(name="first_name",length = 50)
	private String firstName;
	@Column(name="last_name",length = 50)
	private String lastName;
	@Column(name="e_mail",length = 50)
	private String eMail;
	@Column(name="password",length = 50)
	private String password;
	
	@OneToMany(mappedBy = "user",cascade = CascadeType.ALL)
	private List<Property> properties;
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
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
	
	public List<Property> getProperties() {
		return properties;
	}
	public void setProperties(List<Property> properties) {
		this.properties = properties;
	}
	
	public UserRegisteration(Long id, String firstName, String lastName, String eMail, String password,
			List<Property> properties) {
		super();
		this.id = id;
		this.firstName = firstName;
		this.lastName = lastName;
		this.eMail = eMail;
		this.password = password;
		this.properties = properties;
	}
	
	public UserRegisteration(Long id, String firstName, String lastName, String eMail, String password) {
		super();
		this.id = id;
		this.firstName = firstName;
		this.lastName = lastName;
		this.eMail = eMail;
		this.password = password;
	}
	public UserRegisteration(String firstName, String lastName, String eMail, String password) {
		super();
		this.firstName = firstName;
		this.lastName = lastName;
		this.eMail = eMail;
		this.password = password;
	}
	public UserRegisteration() {
		super();
	}
	@Override
	public String toString() {
		return "UserRegisteration [id=" + id + ", firstName=" + firstName + ", lastName=" + lastName + ", eMail="
				+ eMail + ", password=" + password + "]";
	}
	
	
	
}
