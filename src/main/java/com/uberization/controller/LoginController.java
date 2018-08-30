package com.uberization.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.uberization.client.UberClient;
import com.uberization.requestPojo.UserCredentials;
import com.uberization.responsePojo.UserDetails;


@Controller
public class LoginController {
	
	/*@Autowired
	UberClient uberClient;*/
	
	@RequestMapping(value = "/loginService", method = RequestMethod.POST, produces = { MediaType.TEXT_HTML_VALUE})  
    public ModelAndView loginService(HttpServletRequest httpServletRequest) {  
		System.out.println("in loginService() method...");
		UberClient uberClient = new UberClient();
		ModelAndView model = null;
		String emailId = null;
		String password = null;
		UserCredentials userCredentials = new UserCredentials();
		try {
	        System.out.println("in loginService() method...");
	        emailId = httpServletRequest.getParameter("emailId");
	        password = httpServletRequest.getParameter("password");
	        System.out.println(emailId);
	        System.out.println(password);
	        
	        userCredentials.setEmailId(emailId);
	        userCredentials.setPassword(password);
	        
	        UserDetails userDetails = uberClient.getUserDetails(userCredentials);
	       
	        if(userDetails.getUserType().equals("1")) {
	        	model = new ModelAndView("adminDashboard");
	        }else {
	        	model = new ModelAndView("userDashboard");
	        }
	        
	        model.addObject(userDetails);
	        
		}catch (Exception e) {
			// TODO: handle exception
		}
        return model;
       
    }  

}
