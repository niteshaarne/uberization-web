package com.uberization.controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class RestController {
	
	public static Log logger = LogFactory.getLog(AdminController.class);
	
	/**
	 * @param httpServletRequest
	 * @return
	 */
	@RequestMapping("/login")  
    public ModelAndView login(HttpServletRequest httpServletRequest) {  
		logger.info("login() method Start ...");
		ModelAndView model = null;
        System.out.println("in login() method...");
        model = new ModelAndView("login");
        logger.info("login() method End ...");
        return model;
    }  
	
	/**
	 * @return
	 */
	@RequestMapping("/registration")  
    public ModelAndView registration() {  
		logger.info("registration() method Start ...");
		System.out.println("in registration() method...");
		ModelAndView model = null;
        model = new ModelAndView("registration");
        logger.info("registration() method End ...");
        return model;
    } 
	
}