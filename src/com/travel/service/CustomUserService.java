package com.travel.service;

import com.travel.model.User;

public interface CustomUserService {
	
	 public User loadUserByUsername(String username);
}
