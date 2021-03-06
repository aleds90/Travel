package com.travel.dao;

import java.util.List;

import com.travel.model.User;

public interface UserDAO{
	 
	 public int add(User user);
	 public void delete(User user);
	 public void update(User user);
	 public List<User> getAll();
	 public User getById(int id);
	 public User getByUsername(final String username);
	 public List<User> getByAttributes(String keyword);
}
