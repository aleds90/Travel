package com.travel.dao;

import java.util.List;

import com.travel.model.*;

public interface CityDAO {
	 public int add( City city);
	 public void delete( City city);
	 public void update( City city);
	 public List< City> getAll();
	 public  City getById(int id);


}
