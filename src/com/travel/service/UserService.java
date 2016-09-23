package com.travel.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.travel.dao.UserDAO;
import com.travel.model.User;

@RestController  
@RequestMapping("/user") 
public class UserService {
	
	 @Autowired
	 private UserDAO userDao;
	  
	 @RequestMapping(value = "/getAll", method = RequestMethod.GET)
	 public List<User> getById(@RequestParam(value="param", required=false) String param){  
		  if(param==null){
			  List<User> list = new ArrayList<User>();  
			  list = userDao.getAll();
			  return list;  
		  }else if(isInteger(param)){
			  List<User> list = new ArrayList<User>();  
			  User user = userDao.getById(Integer.valueOf(param));
			  if(user!=null){
				  list.add(user);
				  return list;
			  }else{
				  return list;
			  }
		  }else{ 
			  List<User> list =  userDao.getByAttributes(param);
			  return list;
		  }
	 }  
	 
	 @RequestMapping(value = "/add", method = RequestMethod.POST, consumes="application/json")
	 @ResponseBody
	 public void add(@RequestBody User user){  
		 userDao.add(user);
	 } 
	 
	 public static boolean isInteger(String s) {
		    return isInteger(s,10);
	}

	public static boolean isInteger(String s, int radix) {
	    if(s.isEmpty()) return false;
	    for(int i = 0; i < s.length(); i++) {
		        if(i == 0 && s.charAt(i) == '-') {
		            if(s.length() == 1) return false;
		            else continue;
		        }
		        if(Character.digit(s.charAt(i),radix) < 0) return false;
	    }return true;
	}
	 
	 
}
