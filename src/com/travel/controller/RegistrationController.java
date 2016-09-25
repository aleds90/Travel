package com.travel.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@RequestMapping("/")
@Controller
public class RegistrationController {
	
	@RequestMapping(value="/registration", method = RequestMethod.GET)
    public String registraion(ModelMap model) {
    return "registration";
     
    }

}
