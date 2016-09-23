package com.travel.dao;

import java.util.List;

import com.travel.model.*;

public interface TargetDAO {
	
	 public int add(Target target);
	 public void delete(Target target);
	 public void update(Target target);
	 public List<Target> getAll();
	 public Target getById(int id);
}
