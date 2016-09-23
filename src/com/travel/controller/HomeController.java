package com.travel.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.travel.dao.TravelDAO;
import com.travel.model.Travel;
import com.travel.model.User;


@RequestMapping("/")
@Controller
public class HomeController {
	
	@Autowired
	private TravelDAO travelDao;
	
    @RequestMapping(value="/secured/home", method = RequestMethod.GET)
    public String securedHome(ModelMap model) {
        Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        User user=null;
	        if (principal instanceof User) {
	        user = ((User)principal);
        }
	    String name = user.getUsername();
	    model.addAttribute("username", name);
	    model.addAttribute("message", "Welcome to the secured page");
	    
	    //Give to jsp list of travels:
	    ArrayList<Travel> travels = (ArrayList<Travel>) travelDao.getAll();
	    model.addAttribute("travels", travels);
	    
	    return "home";
    }
    
    @RequestMapping(value="/logout", method = RequestMethod.GET)
    public String logoutPage (HttpServletRequest request, HttpServletResponse response) {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        if (auth != null){    
            new SecurityContextLogoutHandler().logout(request, response, auth);
        }
        return "redirect:/";
    }
}
