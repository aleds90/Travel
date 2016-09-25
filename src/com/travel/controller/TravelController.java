package com.travel.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.travel.dao.TravelDAO;
import com.travel.model.Travel;
import com.travel.model.User;

@RequestMapping("/")
@Controller
public class TravelController {
	
	@Autowired TravelDAO travelDao;
	
    @RequestMapping(value="/secured/travel", method = RequestMethod.GET)
    public String securedHome(@RequestParam(value="id", required=false) String id, ModelMap model) {
        Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        User user=null;
	        if (principal instanceof User) {
	        user = ((User)principal);
        }
	        
	    String name = user.getUsername();
	    model.addAttribute("username", name);
	    model.addAttribute("message", "Welcome to the secured page");
	    
	    //Adding the travel on model
	    if(id==null || id.equals("")){
	    	return "redirect:/secured/home";
	    }
	    Travel travel = travelDao.getById(Integer.parseInt(id));
	    if(travel==null){
	    	return "redirect:/secured/home";
	    }else{
	    	model.addAttribute("travel", travel);
	    	return "travel";
	    }
    }
}
