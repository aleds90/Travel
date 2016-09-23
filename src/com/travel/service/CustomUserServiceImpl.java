package com.travel.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.travel.dao.UserDAO;
import com.travel.model.User;


@Service
public class CustomUserServiceImpl implements UserDetailsService, CustomUserService{

    @Autowired
    private UserDAO userDao;
    
    @Override
    public User loadUserByUsername(String username) throws UsernameNotFoundException {
    	return userDao.getByUsername(username);
    }

}
