package com.hitch.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="reviewer")
public class Reviewer {
		
	@Id
	@Column(name="email")
	private String email;
	
	@Column(name="firstName")
	private String firstName;
	
	@Column(name="lastName")
	private String lastName;
	
	@Column(name="website")
	private String website;
	
	@Column(name="review")
	private String review;

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
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

	public String getWebsite() {
		return website;
	}

	public void setWebsite(String website) {
		this.website = website;
	}

	public String getReview() {
		return review;
	}

	public void setReview(String review) {
		this.review = review;
	}
	
	
	
}
