package com.uberization.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class RestController {
	
	@RequestMapping("/login")  
    public ModelAndView helloWorld(HttpServletRequest httpServletRequest) {  
		ModelAndView model = null;
        System.out.println("in login() method...");
       
        model = new ModelAndView("login");
        model.addObject("message", "Username or Password is wrong!!");
        return model;
       
    }  
	
	
	@RequestMapping("/registration")  
    public ModelAndView registration() {  
		System.out.println("in registration() method...");
		ModelAndView model = null;
        model = new ModelAndView("registration");
        model.addObject("message", "Registration");
        
        
        return model;
    } 
	
	
}