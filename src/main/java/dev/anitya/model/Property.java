package dev.anitya.model;

import java.io.Serializable;

import jakarta.persistence.CascadeType;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToOne;
import jakarta.persistence.SequenceGenerator;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Table(name="property")
public class Property implements Serializable {
	
	
	public String getImageUrl() {
		return imageUrl;
	}

	public void setImageUrl(String imageUrl) {
		this.imageUrl = imageUrl;
	}

	@Id
	@SequenceGenerator(name="gen",sequenceName = "reg_prop_seq",initialValue = 1001,allocationSize = 1)
	@GeneratedValue(strategy = GenerationType.SEQUENCE,generator = "gen")
	private Long id;
	@Column(length = 50, name="property_name")
	private String propertyName;
	@Column(length = 20)
	private String country;
	@Column(length = 20)
	private String state;
	@Column(length = 20,name = "city_p")
	private String city;
	@Column(length = 60)
	private String address;
	@Column(name="image_url")
	private String imageUrl;
	private Integer rooms;
	private Double price;
	@OneToOne(targetEntity =ContactDetails.class, cascade = CascadeType.ALL)
    @JoinColumn(name = "CONTACT_ID",referencedColumnName = "id")
	private ContactDetails contactDetails;
	
	@ManyToOne
	@JoinColumn(name="user_id")
	private UserRegisteration user;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public Integer getRooms() {
		return rooms;
	}

	public void setRooms(Integer rooms) {
		this.rooms = rooms;
	}

	public Double getPrice() {
		return price;
	}

	public void setPrice(Double price) {
		this.price = price;
	}

	public ContactDetails getContactDetails() {
		return contactDetails;
	}

	public void setContactDetails(ContactDetails contactDetails) {
		this.contactDetails = contactDetails;
	}

	public UserRegisteration getUser() {
		return user;
	}

	public void setUser(UserRegisteration user) {
		this.user = user;
	}

	@Override
	public String toString() {
		return "Property [id=" + id + ", country=" + country + ", state=" + state + ", city=" + city + ", address="
				+ address + ", rooms=" + rooms + ", price=" + price + ", contactDetails=" + contactDetails + "]";
	}

	public String getPropertyName() {
		return propertyName;
	}

	public void setPropertyName(String propertyName) {
		this.propertyName = propertyName;
	}

	
	
//	@Lob
//	private byte[] photo;
	
	
	
}
