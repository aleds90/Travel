package com.travel.dao;

import java.util.List;

import com.travel.model.*;

public interface TagDAO {
	
	 public int add(Tag tag);
	 public void delete(Tag tag);
	 public void update(Tag tag);
	 public List<Tag> getAll();
	 public Tag getById(int id);

}
