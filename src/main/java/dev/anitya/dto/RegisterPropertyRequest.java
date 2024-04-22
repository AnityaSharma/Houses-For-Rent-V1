package dev.anitya.dto;

import dev.anitya.model.ContactDetails;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


@NoArgsConstructor
@AllArgsConstructor
public class RegisterPropertyRequest {

	private String country;
	private String city;
	private String state;
	private Integer rooms;
	private String address;
	private Double price;
	private ContactDetails contactDetails;
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public Integer getRooms() {
		return rooms;
	}
	public void setRooms(Integer rooms) {
		this.rooms = rooms;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
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
	@Override
	public String toString() {
		return "RegisterPropertyRequest [country=" + country + ", city=" + city + ", state=" + state + ", rooms="
				+ rooms + ", address=" + address + ", price=" + price + ", contactDetails=" + contactDetails + "]";
	}
	
	
	
}
