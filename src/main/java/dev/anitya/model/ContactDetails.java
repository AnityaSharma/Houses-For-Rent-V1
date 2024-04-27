package dev.anitya.model;

import java.io.Serializable;

import jakarta.annotation.Nonnull;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.SequenceGenerator;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.RequiredArgsConstructor;

@Entity
//@Data
@NoArgsConstructor
@AllArgsConstructor
//@RequiredArgsConstructor
//@Builder
@Table(name="contact_details")
public class ContactDetails implements Serializable{
	
	@Id
	@SequenceGenerator(name="gennn",sequenceName = "reg_contact_seq",initialValue = 1001,allocationSize = 1)
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "gennn")
	private Long id;
	
	@Nonnull
	@Column(length = 40,name="e_mail")
	private String eMail;
	@Nonnull
	private Long phoneNumber;
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String geteMail() {
		return eMail;
	}
	public void seteMail(String eMail) {
		System.out.println("ContactDetails.seteMail()");
		this.eMail = eMail;
	}
	public Long getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(Long phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	public ContactDetails(String eMail, Long phoneNumber) {
		this.eMail = eMail;
		this.phoneNumber = phoneNumber;
	}
	@Override
	public String toString() {
		return "ContactDetails [id=" + id + ", eMail=" + eMail + ", phoneNumber=" + phoneNumber + "]";
	}
	
}
