package com.travel.dao;

import java.util.List;

import com.travel.model.*;

public interface CategoryDAO {
	
	 public int add( Category category);
	 public void delete( Category category);
	 public void update( Category category);
	 public List< Category> getAll();
	 public  Category getById(int id);

}
