package com.uberization.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class RestController {
	
	@RequestMapping("/login")  
    public ModelAndView helloWorld() {  
        System.out.println("in login() method...");
        String message = "HELLO SPRING MVC HOW R U";  
        return new ModelAndView("login", "message", message);  
    }  
	
	
	@RequestMapping("/registration")  
    public ModelAndView registration() {  
        String message = "HELLO SPRING MVC HOW R U";  
        System.out.println("in login() method...");
        return new ModelAndView("login", "message", message);  
    } 
	
	
}