package com.travel.dao;

import java.util.List;

import com.travel.model.*;

public interface ProfileDAO {
	
	 public int add(Profile profile);
	 public void delete(Profile profile);
	 public void update(Profile profile);
	 public List<Profile> getAll();
	 public Profile getById(int id);

}
