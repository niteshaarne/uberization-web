package com.uberization.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.ObjectWriter;
import com.sun.jersey.api.client.Client;
import com.sun.jersey.api.client.ClientResponse;
import com.sun.jersey.api.client.WebResource;
import com.uberization.client.UberClient;
import com.uberization.requestPojo.UserCredentials;
import com.uberization.responsePojo.JobDetailsUser;
import com.uberization.responsePojo.UserDetails;
import com.uberization.util.WebAppConstants;


@Controller
public class LoginController {
	
	public static Log logger = LogFactory.getLog(AdminController.class);
	
	/**
	 * @param httpServletRequest
	 * @return
	 */
	@RequestMapping(value = "/loginService", method = RequestMethod.POST, produces = { MediaType.TEXT_HTML_VALUE})  
    public ModelAndView loginService(HttpServletRequest httpServletRequest) {  
		System.out.println("in loginService() method...");
		logger.info("loginService() method Start ...");
		//UberClient uberClient = new UberClient();
		ModelAndView model = null;
		String emailId = null;
		String password = null;
		ObjectMapper mapper = null;
		UserCredentials userCredentials = new UserCredentials();
		HttpSession session=httpServletRequest.getSession();
		ArrayList<JobDetailsUser> jobDetailsUserList =  new ArrayList();
        
		try {
	        emailId = httpServletRequest.getParameter("emailId");
	        password = httpServletRequest.getParameter("password");
	        userCredentials.setEmailId(emailId);
	        userCredentials.setPassword(password);
	        
	        /* REST CALL */
			Client client = Client.create();
			WebResource webResource = client.resource(WebAppConstants.LOGIN_SERVICE);
			ObjectWriter ow = new ObjectMapper().writerWithDefaultPrettyPrinter();
			String regObjJason = ow.writeValueAsString(userCredentials);
			System.out.println("request json : " + regObjJason);
			ClientResponse response = webResource.type("application/json").post(ClientResponse.class, regObjJason);
			if (response.getStatus() != 200) {
				throw new RuntimeException("Failed : HTTP error code : " + response.getStatus());
			}
			System.out.println("Output from Server .... \n" + response);
			String output = response.getEntity(String.class);
			System.out.println(output);
			
			mapper = new ObjectMapper();
			UserDetails userDetails =  mapper.readValue(output, UserDetails.class);
			System.out.println("userdetails : " + userDetails) ;
	       
	        if(userDetails.getUserType().equalsIgnoreCase("admin")) {
	        	model = new ModelAndView("adminDashboard");
	        	System.out.println("Admin login...");
	        }else {
	        	model = new ModelAndView("userDashboard");
	        	jobDetailsUserList = new UserController().getJobDetailsForNotifications(userDetails);
	        	model.addObject("jobDetailsUserList",jobDetailsUserList);
	        	System.out.println("User login...");
	        }
	        model.addObject("userDetails",userDetails);
	        session.setAttribute("userDetails",userDetails);  
	        logger.info("loginService() method End ...");
	        
		}catch (Exception e) {
			System.out.println("Exception in loginService() method " + e);
			logger.error("Exception in loginService() method " , e);
			model = new ModelAndView("login");
		}
        return model;
       
    }  

}
