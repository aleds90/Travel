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

import com.travel.dao.CategoryDAO;
import com.travel.dao.CityDAO;
import com.travel.model.*;

@RestController
@RequestMapping("/city")
public class CityService {
	
	@Autowired
	 private CityDAO cityDAO;
	  
	 @RequestMapping(value = "/getAll", method = RequestMethod.GET)
	 public List<City> getById(@RequestParam(value="id", required=false) String id){  
		  if(id==null){
			  List<City> list = new ArrayList<City>();  
			  list = cityDAO.getAll();
			  return list;  
		  }else{
			  List<City> list = new ArrayList<City>();  
			  City city = cityDAO.getById(Integer.valueOf(id));
			  if(city!=null){
				  list.add(city);
				  return list;
			  }else{
				  return list;
			  }
		  }
	 }  
	 
	 @RequestMapping(value = "/add", method = RequestMethod.POST, consumes="application/json")
	 @ResponseBody
	 public void add(@RequestBody City city){  
		 cityDAO.add(city);
	 } 

}
