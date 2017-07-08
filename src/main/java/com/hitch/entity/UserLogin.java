package com.hitch.entity;

import java.beans.Transient;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name = "userLogin")
public class UserLogin {

	@Column(name="id")
	@GeneratedValue(strategy = GenerationType.AUTO)
	private long id;

	@Column(name="lname")
	@NotEmpty(message = "Last Name required")
	//@Pattern(regexp = "([a-zA-Z0-9]+([ ][a-zA-Z0-9])*)+", message = "Last Name Must be alphanumeric ")
	private String lname;

	@Column(name="fname")
	@NotEmpty(message = "First Name required")
	//@Pattern(regexp = "([a-zA-Z0-9]+([ ][a-zA-Z0-9])*)+", message = "First Name Required")
	private String fname;

	@Column(name="city")
	@NotEmpty(message = "City required")
	private String city;

	@Column(name="state")
	@NotEmpty(message = "State required")
	//@Pattern(regexp = "([a-zA-Z0-9]+([ ][a-zA-Z0-9])*)+", message = "Please select State")
	private String state;

	@Id
	@Column(name="emailAddress")
	@NotEmpty(message = "Email Address required")
	//@Pattern(regexp = "^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$", message = "Invalid Email Use format JohnSmith@sbc.com")
	private String emailAddress;

	@Column(name="password")
	@NotEmpty(message = "Password required")
	@Size(min = 8, max = 15, message = "The length must be between {min} and {max}")
	private String password;


	@Column(name="passwordConfirm")
	@NotEmpty(message = "Please re-enter password ")
	private String passwordConfirm;
	
	
	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getLname() {
		return lname;
	}

	public void setLname(String lname) {
		this.lname = lname;
	}

	public String getFname() {
		return fname;
	}

	public void setFname(String fname) {
		this.fname = fname;
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

	public String getEmailAddress() {
		return emailAddress;
	}

	public void setEmailAddress(String emailAddress) {
		this.emailAddress = emailAddress;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public void setPasswordConfirm(String passwordConfirm) {
		this.passwordConfirm = passwordConfirm;
	}

	@Transient
	public String getPasswordConfirm() {
		return passwordConfirm;
	}

	
}
