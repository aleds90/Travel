package com.travel.model;

// default package
// Generated 4-set-2016 14.14.06 by Hibernate Tools 5.1.0.Beta1

import java.util.HashSet;
import java.util.Set;

import org.codehaus.jackson.annotate.JsonBackReference;

/**
 * Address generated by hbm2java
 */
public class Address implements java.io.Serializable {

	private Integer id;
	private City city;
	private String street;
	private String phone;
	private Integer postalCode;
	@JsonBackReference
	private Set profiles = new HashSet(0);

	public Address() {
	}

	public Address(City city, String street, String phone, Integer postalCode, Set profiles) {
		this.city = city;
		this.street = street;
		this.phone = phone;
		this.postalCode = postalCode;
		this.profiles = profiles;
	}

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public City getCity() {
		return this.city;
	}

	public void setCity(City city) {
		this.city = city;
	}

	public String getStreet() {
		return this.street;
	}

	public void setStreet(String street) {
		this.street = street;
	}

	public String getPhone() {
		return this.phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public Integer getPostalCode() {
		return this.postalCode;
	}

	public void setPostalCode(Integer postalCode) {
		this.postalCode = postalCode;
	}

	public Set getProfiles() {
		return this.profiles;
	}

	public void setProfiles(Set profiles) {
		this.profiles = profiles;
	}

}
