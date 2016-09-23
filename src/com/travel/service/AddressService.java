package com.travel.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.travel.dao.AddressDAO;
import com.travel.dao.UserDAO;
import com.travel.model.Address;
import com.travel.model.User;

@RestController
@RequestMapping("/address")
public class AddressService {
	
	 @Autowired
	 private AddressDAO addressDao;
	  
	 
	 @RequestMapping(value = "/getAll", method = RequestMethod.GET, produces = "application/xml")
	 public List<Address> getById(@RequestParam(value="id", required=false) String id){  
		  if(id==null){
			  List<Address> list = new ArrayList<Address>();  
			  list = addressDao.getAll();
			  return list;  
		  }else{
			  List<Address> list = new ArrayList<Address>();  
			  Address address = addressDao.getById(Integer.valueOf(id));
			  if(address!=null){
				  list.add(address);
				  return list;
			  }else{
				  return list;
			  }
		  }
	 }  
	 
	 @RequestMapping(value = "/add", method = RequestMethod.POST, consumes="application/json")
	 @ResponseBody
	 public void add(@RequestBody Address address){  
		 addressDao.add(address);
	 } 
}
