package dev.anitya.dto;

public class Location {
	
	private String state;
	private String city;
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
	@Override
	public String toString() {
		return "Location [state=" + state + ", city=" + city + "]";
	}
	
	

}
