package com.travel.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.travel.dao.TravelDAO;
import com.travel.model.*;

@RequestMapping("/secured")
@Controller
public class ProfileController {
	
	@Autowired TravelDAO travelDao;
	private static List<Stage> contacts = new ArrayList<Stage>();
	
	static {
		contacts.add(new Stage());
		contacts.add(new Stage());
		contacts.add(new Stage());
		contacts.add(new Stage());
	}
	
    @RequestMapping(value="/profile", method = RequestMethod.GET)
    public String securedHome(ModelMap model) {
        Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        
        User user=null;
        if (principal instanceof User) {
        user = ((User)principal);
        }
	    String name = user.getUsername();
	    List<Travel> travels = new ArrayList<>();
	    
	    travels = travelDao.getByUser(user);
	    //Stage form testing
	    StageForm stageForm = new StageForm();
	    stageForm.setStages(contacts);
	    
	    model.addAttribute("stageForm", new StageForm());
	    model.addAttribute("my_travels", travels);
	    model.addAttribute("username", name);
	    model.addAttribute("message", "Welcome to the secured page");
	    return "profile";
    }
    
	/**
	 * @param model
	 * @param registration
	 * @return
	 * @throws ParseException
	 */
	@RequestMapping(value="/addTravel", method = RequestMethod.POST)
    public String createTravel(ModelMap model, @ModelAttribute("contactForm") StageForm stageForm) throws ParseException {
		List<Stage> stages = stageForm.getStages();
		System.out.println(stages.size());
		return "successful_registration";
    }
    
}
