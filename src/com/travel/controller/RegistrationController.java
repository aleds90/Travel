package com.travel.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.travel.dao.CountryDAO;
import com.travel.model.Country;


@RequestMapping("/")
@Controller
public class RegistrationController {
	
	@Autowired CountryDAO countryDao;
	
	@RequestMapping(value="/registration", method = RequestMethod.GET)
    public String registraion(ModelMap model) {
		
		List<Country> countries = countryDao.getAll();
		List<String> countriesNames = new ArrayList<String>();
		
		for(int i=0; i<countries.size(); i++){
			countriesNames.add("'"+countries.get(i).getName()+"'"); 
		}
		
		model.addAttribute("countries", countriesNames);
		return "registration";
    }

}
