package com.hitch.entity;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name = "apps")
public class Applications {

	@Column(name="appName")
	private String appName;

	@Id
	@Column(name="website")
	private String website;

	@Column(name="dateTracker")
	private String dateTracker;

	@Column(name="checklist")
	private String checklist;

	@Column(name="venueSearch")
	private String venueSearch;

	@Column(name="vendorSearch")
	private String vendorSearch;

	@Column(name="budget")
	private String budget;

	@Column(name="guestList")
	private String guestList;

	@Column(name="bookHotelBlock")
	private String bookHotelBlock;

	@Column(name="dressSearch")
	private String dressSearch;

	@Column(name="giftRegistry")
	private String giftRegistry;

	@Column(name="vendorChecklist")
	private String vendorChecklist;

	@Column(name="forumn")
	private String forumn;

	@Column(name="weddingWebsite")
	private String weddingWebsite;

	/*@Column(name="reviews")
	private List reviews;*/

	public String getAppName() {
		return appName;
	}

	public void setAppName(String appName) {
		this.appName = appName;
	}

	public String getWebsite() {
		return website;
	}

	public void setWebsite(String website) {
		this.website = website;
	}

	public String getDateTracker() {
		return dateTracker;
	}

	public void setDateTracker(String dateTracker) {
		this.dateTracker = dateTracker;
	}

	public String getChecklist() {
		return checklist;
	}

	public void setChecklist(String checklist) {
		this.checklist = checklist;
	}

	public String getVenueSearch() {
		return venueSearch;
	}

	public void setVenueSearch(String venueSearch) {
		this.venueSearch = venueSearch;
	}

	public String getVendorSearch() {
		return vendorSearch;
	}

	public void setVendorSearch(String vendorSearch) {
		this.vendorSearch = vendorSearch;
	}

	public String getBudget() {
		return budget;
	}

	public void setBudget(String budget) {
		this.budget = budget;
	}

	public String getGuestList() {
		return guestList;
	}

	public void setGuestList(String guestList) {
		this.guestList = guestList;
	}

	public String getBookHotelBlock() {
		return bookHotelBlock;
	}

	public void setBookHotelBlock(String bookHotelBlock) {
		this.bookHotelBlock = bookHotelBlock;
	}

	public String getDressSearch() {
		return dressSearch;
	}

	public void setDressSearch(String dressSearch) {
		this.dressSearch = dressSearch;
	}

	public String getGiftRegistry() {
		return giftRegistry;
	}

	public void setGiftRegistry(String giftRegistry) {
		this.giftRegistry = giftRegistry;
	}

	public String getVendorChecklist() {
		return vendorChecklist;
	}

	public void setVendorChecklist(String vendorChecklist) {
		this.vendorChecklist = vendorChecklist;
	}

	public String getForumn() {
		return forumn;
	}

	public void setForumn(String forumn) {
		this.forumn = forumn;
	}

	public String getWeddingWebsite() {
		return weddingWebsite;
	}

	public void setWeddingWebsite(String weddingWebsite) {
		this.weddingWebsite = weddingWebsite;
	}

	/*public List getReviews() {
		return reviews;
	}

	public void setReviews(List reviews) {
		this.reviews = reviews;
	}*/

	

}
