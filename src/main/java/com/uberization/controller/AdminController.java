package com.uberization.controller;

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
import com.uberization.responsePojo.JobPostingDetails;

@Controller
public class AdminController {
	
	public static Log logger = LogFactory.getLog(AdminController.class);
	
	/**
	 * @param httpServletRequest
	 * @return
	 */
	@RequestMapping(value = "/publishWorkService", method = RequestMethod.POST, produces = {
			MediaType.TEXT_HTML_VALUE })
	public ModelAndView publishWork(HttpServletRequest httpServletRequest) {
		System.out.println("in publishWork() method...");
		logger.info("publishWork() method Start ...");
		ModelAndView model = null;
		String typeOfWork = null;
		String numberOfCases = null;
		String dateOfWork = null;
		String responseDeadline = null;
		JobPostingDetails jobPostingDetails = new JobPostingDetails();
		
		try {
			typeOfWork = httpServletRequest.getParameter("typeOfWork");
			numberOfCases = httpServletRequest.getParameter("numberOfCases");
			dateOfWork = httpServletRequest.getParameter("dateOfWork");
			responseDeadline = httpServletRequest.getParameter("responseDeadline");
			
			jobPostingDetails.setDateOfWork(dateOfWork);
			jobPostingDetails.setNumberOfCases(numberOfCases);
			jobPostingDetails.setTypeOfWork(typeOfWork);
			jobPostingDetails.setResponseDeadline(responseDeadline);
			
			/* REST CALL */
			Client client = Client.create();
			WebResource webResource = client.resource("http://10.0.0.10:8080/rest/publishJob");
			ObjectWriter ow = new ObjectMapper().writerWithDefaultPrettyPrinter();
			String regObjJason = ow.writeValueAsString(jobPostingDetails);
			System.out.println("request json : " + regObjJason);
			ClientResponse response = webResource.type("application/json").post(ClientResponse.class, regObjJason);
			if (response.getStatus() != 200) {
				throw new RuntimeException("Failed : HTTP error code : " + response.getStatus());
			}
			System.out.println("Output from Server .... \n" + response);
			String output = response.getEntity(String.class);
			System.out.println(output);
			
			model = new ModelAndView("adminDashboard");
			logger.info("publishWork() method End ...");

		} catch (Exception e) {
			System.out.println("Exception in publishWork() method..." + e);
			logger.error(" ExceptionpublishWork() method ...", e);
			model = new ModelAndView("adminDashboard");
	        model.addObject("errorMsg", "Error while publishing work.");
		}
		return model;

	}
	
	
	/**
	 * @param httpServletRequest
	 * @return
	 */
	@RequestMapping(value = "/assignWork", method = RequestMethod.POST, produces = {
			MediaType.TEXT_HTML_VALUE })
	public ModelAndView assignWork(HttpServletRequest httpServletRequest) {
		System.out.println("in assignWork() method...");
		logger.info("assignWork() method Start ...");
		ModelAndView model = null;
        model = new ModelAndView("assignWork");
        logger.info("assignWork() method End ...");
        return model;


	}
	

}
