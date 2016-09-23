package com.travel.dao;

import java.util.List;

import com.travel.model.*;

public interface CountryDAO {
	
	 public int add(Country country);
	 public void delete(Country country);
	 public void update(Country country);
	 public List<Country> getAll();
	 public Country getById(int id);
}
