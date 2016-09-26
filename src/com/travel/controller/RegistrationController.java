package com.travel.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.travel.dao.CountryDAO;
import com.travel.dao.ProfileDAO;
import com.travel.dao.UserDAO;
import com.travel.model.Address;
import com.travel.model.Profile;
import com.travel.model.Registration;
import com.travel.model.User;


@RequestMapping("/")
@Controller
public class RegistrationController {
	
	@Autowired UserDAO userDao;
	@Autowired ProfileDAO profileDao;
	
	@RequestMapping(value="/registration", method = RequestMethod.GET)
    public String registration(ModelMap model) {
		
		return "registration";
    }
	
	/**
	 * @param model
	 * @param registration
	 * @return
	 * @throws ParseException
	 */
	@RequestMapping(value="/registration", method = RequestMethod.POST)
    public String postRegistration(ModelMap model, @ModelAttribute Registration registration) throws ParseException {
		
		Address address = new Address();
		address.setStreet(registration.getCountry());
		
		Profile profile = new Profile();
		profile.setAvatar(registration.getAvatar());
		profile.setAddress(address);
		profile.setName(registration.getFirstname());
		profile.setSurname(registration.getLastname());
		
	    SimpleDateFormat formatter = new SimpleDateFormat("dd-MM-yyyy");
		Date date = formatter.parse(registration.getBirthday());
		profile.setBirthday(date);
		
		User user = new User();
		user.setEmail(registration.getEmail());
		user.setUsername(registration.getUsername());
		user.setPassword(registration.getPassword());
		user.setProfile(profile);
		
		userDao.add(user);
		
		return "successful_registration";
    }

}
