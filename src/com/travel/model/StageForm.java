package com.travel.model;

import java.util.ArrayList;
import java.util.List;

public class StageForm {
	
	private String title;
	private String description;
	private String duration;
	private String maxNumberAttendees;
	private String budget;
	private String category;
	private String countriesVisited;
	private List<Stage> stages = new ArrayList<Stage>();

	public List<Stage> getStages() {
		return stages;
	}
	public void setStages(List<Stage> stages) {
		this.stages = stages;
	}
	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getDuration() {
		return duration;
	}

	public void setDuration(String duration) {
		this.duration = duration;
	}

	public String getMaxNumberAttendees() {
		return maxNumberAttendees;
	}

	public void setMaxNumberAttendees(String maxNumberAttendees) {
		this.maxNumberAttendees = maxNumberAttendees;
	}

	public String getBudget() {
		return budget;
	}

	public void setBudget(String budget) {
		this.budget = budget;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}
	public String getCountriesVisited() {
		return countriesVisited;
	}
	public void setCountriesVisited(String countriesVisited) {
		this.countriesVisited = countriesVisited;
	}

	
}
