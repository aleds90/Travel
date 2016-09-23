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

import com.travel.dao.AddressDAO;
import com.travel.dao.CategoryDAO;
import com.travel.model.*;


@RestController
@RequestMapping("/category")
public class CategoryService {
	
	@Autowired
	 private CategoryDAO categoryDAO;
	  
	 @RequestMapping(value = "/getAll", method = RequestMethod.GET)
	 public List<Category> getById(@RequestParam(value="id", required=false) String id){  
		  if(id==null){
			  List<Category> list = new ArrayList<Category>();  
			  list = categoryDAO.getAll();
			  return list;  
		  }else{
			  List<Category> list = new ArrayList<Category>();  
			  Category category = categoryDAO.getById(Integer.valueOf(id));
			  if(category!=null){
				  list.add(category);
				  return list;
			  }else{
				  return list;
			  }
		  }
	 }  
	 
	 @RequestMapping(value = "/add", method = RequestMethod.POST, consumes="application/json")
	 @ResponseBody
	 public void add(@RequestBody Category category){  
		 categoryDAO.add(category);
	 } 
}
