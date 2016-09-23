package com.travel.dao;

import java.util.List;

import com.travel.model.*;

public interface PhotoDAO {
	
	 public int add(Photo photo);
	 public void delete(Photo photo);
	 public void update(Photo photo);
	 public List<Photo> getAll();
	 public Photo getById(int id);
}
