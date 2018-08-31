package com.uberization.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
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
import com.uberization.responsePojo.UserDetails;
import com.uberization.util.SkillEnum;
import com.uberization.util.WebAppConstants;

@Controller
public class RegistrationController {
	
	public static Log logger = LogFactory.getLog(AdminController.class);

	/**
	 * @param httpServletRequest
	 * @return
	 */
	@RequestMapping(value = "/registrationService", method = RequestMethod.POST, produces = {
			MediaType.TEXT_HTML_VALUE })
	public ModelAndView registrationService(HttpServletRequest httpServletRequest) {
		System.out.println("in registrationService() method...");
		logger.info("registrationService() method Start ...");
		ModelAndView model = null;
		String emailId = null;
		String password = null;
		String firstName = null;
		String lastName = null;
		String countryCode = null;
		String mobileNumber = null;
		String caseProcessing = null;
		String medicalReview = null;

		UserDetails userDetails = new UserDetails();
		ArrayList<SkillEnum> skillSet = new ArrayList<SkillEnum>();
		try {
			System.out.println("In loginService() method...");
			emailId = httpServletRequest.getParameter("emailId");
			password = httpServletRequest.getParameter("password");
			firstName = httpServletRequest.getParameter("firstName");
			lastName = httpServletRequest.getParameter("lastName");
			countryCode = httpServletRequest.getParameter("countryCode");
			mobileNumber = httpServletRequest.getParameter("mobileNumber");
			caseProcessing = httpServletRequest.getParameter("caseProcessing");
			medicalReview = httpServletRequest.getParameter("medicalReview");

			userDetails.setContactNumber("+" + countryCode + "" + mobileNumber);
			userDetails.setEmail(emailId);
			userDetails.setFirstName(firstName);
			userDetails.setLastName(lastName);
			userDetails.setPassword(password);
			userDetails.setUserType("User");
			if (caseProcessing != null) {
				skillSet.add(SkillEnum.CASE_PROCESSING);
			}

			if (medicalReview != null) {
				skillSet.add(SkillEnum.MEDICAL_REVIEW);
			}

			userDetails.setSkillSet(skillSet);
			System.out.println("UserDetails : " + userDetails);

			/* REST CALL */

			Client client = Client.create();
			WebResource webResource = client.resource(WebAppConstants.REGISTRATION_SERVICE);
			ObjectWriter ow = new ObjectMapper().writerWithDefaultPrettyPrinter();
			String regObjJason = ow.writeValueAsString(userDetails);
			System.out.println("request json : " + regObjJason);
			ClientResponse response = webResource.type("application/json").post(ClientResponse.class, regObjJason);
			if (response.getStatus() != 200) {
				throw new RuntimeException("Failed : HTTP error code : " + response.getStatus());
			}
			System.out.println("Output from Server .... \n" + response);
			String output = response.getEntity(String.class);
			System.out.println(output);

			model = new ModelAndView("registrationConfirmation");
			model.addObject(userDetails);
			logger.info("registrationService() method End ...");

		} catch (Exception e) {
			System.out.println("Exception in registrationService() method..." + e);
			logger.info("Exception in registrationService() method..." , e);
			model = new ModelAndView("registration");
			model.addObject("errorMsg", "Error while adding your details.");
		}
		return model;

	}

}
