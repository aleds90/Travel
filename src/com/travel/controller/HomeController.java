package com.travel.controller;

import java.util.ArrayList;
import java.util.List;

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
import org.springframework.web.bind.annotation.RequestParam;

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
    
    @RequestMapping(value="/secured/home", method = RequestMethod.POST)
    public String result(ModelMap model, @RequestParam(value="place", required=false) String place, @RequestParam(value="period", required=false) String period, 
    		@RequestParam(value="budget", required=false) String budget, @RequestParam(value="category", required=false) String category) {
        Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        User user=null;
	        if (principal instanceof User) {
	        user = ((User)principal);
        }
	    String name = user.getUsername();
	    model.addAttribute("username", name);
	    model.addAttribute("message", "Welcome to the secured page");
	    //Handle variable empty or null cases
	    if(budget==null || budget.equals(""))
	    	budget = "99999";
	    
	    //Give to jsp list of travels with all properties setted:
	    List<Integer> travelsId = travelDao.getTravelsIDByProperties(budget, place, category);
	    ArrayList<Travel> travels = new ArrayList<>();
	    if(!travelsId.isEmpty()){
		    for(int i=0; i<travelsId.size(); i++){
		    	Travel travel = travelDao.getById(travelsId.get(i));
		    	travels.add(travel);
		    }
	    }
	    //return model and view
	    model.addAttribute("travels", travels);
	    if(!budget.equals("99999"))
	    	model.addAttribute("budget", budget);
	    model.addAttribute("place",place);
	    
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
