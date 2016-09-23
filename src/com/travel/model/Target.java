package com.travel.model;
// Generated 4-set-2016 14.14.06 by Hibernate Tools 5.1.0.Beta1

import java.util.HashSet;
import java.util.Set;

import org.codehaus.jackson.annotate.JsonBackReference;

/**
 * Target generated by hbm2java
 */
public class Target implements java.io.Serializable {

	private Integer id;
	private String name;
	private Integer miniumBudget;
	private Integer maxiumBudget;
	private String description;
	@JsonBackReference
	private Set travels = new HashSet(0);

	public Target() {
	}

	public Target(String name, Integer miniumBudget, Integer maxiumBudget, String description, Set travels) {
		this.name = name;
		this.miniumBudget = miniumBudget;
		this.maxiumBudget = maxiumBudget;
		this.description = description;
		this.travels = travels;
	}

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Integer getMiniumBudget() {
		return this.miniumBudget;
	}

	public void setMiniumBudget(Integer miniumBudget) {
		this.miniumBudget = miniumBudget;
	}

	public Integer getMaxiumBudget() {
		return this.maxiumBudget;
	}

	public void setMaxiumBudget(Integer maxiumBudget) {
		this.maxiumBudget = maxiumBudget;
	}

	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Set getTravels() {
		return this.travels;
	}

	public void setTravels(Set travels) {
		this.travels = travels;
	}

}