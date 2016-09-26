package com.travel.model;

import java.util.List;

public class Registration {
	
	private String username;
	private String email;
	private String confirmEmail;
	private String phoneNumber;
	private String password;
	private String confirmPassword;
	private String firstname;
	private String lastname;
	private String birthday;
	private String avatar;
	private String country;
	private int travelExperience;
	private List<String> countriesVisited;
	
	public Registration(String username, String email, String confirmEmail, String phoneNumber, String password,
			String confirmPassword, String firstname, String lastname, String birthday, String avatar, String country,
			int travelExperience, List<String> countriesVisited) {
		super();
		this.username = username;
		this.email = email;
		this.confirmEmail = confirmEmail;
		this.phoneNumber = phoneNumber;
		this.password = password;
		this.confirmPassword = confirmPassword;
		this.firstname = firstname;
		this.lastname = lastname;
		this.birthday = birthday;
		this.avatar = avatar;
		this.country = country;
		this.travelExperience = travelExperience;
		this.countriesVisited = countriesVisited;
	}
	
	public Registration(){}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getConfirmEmail() {
		return confirmEmail;
	}

	public void setConfirmEmail(String confirmEmail) {
		this.confirmEmail = confirmEmail;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getConfirmPassword() {
		return confirmPassword;
	}

	public void setConfirmPassword(String confirmPassword) {
		this.confirmPassword = confirmPassword;
	}

	public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	public String getBirthday() {
		return birthday;
	}

	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}

	public String getAvatar() {
		return avatar;
	}

	public void setAvatar(String avatar) {
		this.avatar = avatar;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public int getTravelExperience() {
		return travelExperience;
	}

	public void setTravelExperience(int travelExperience) {
		this.travelExperience = travelExperience;
	}

	public List<String> getCountriesVisited() {
		return countriesVisited;
	}

	public void setCountriesVisited(List<String> countriesVisited) {
		this.countriesVisited = countriesVisited;
	}

}
