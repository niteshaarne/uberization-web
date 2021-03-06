package com.uberization.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.uberization.pojo.JobStatus;
import com.uberization.responsePojo.JobDetailsUser;
import com.uberization.responsePojo.UserDetails;
import com.uberization.responsePojo.UserWork;

@Controller
public class UserController {
	
	public static Log logger = LogFactory.getLog(UserController.class);
	
	/**
	 * @param userDetails
	 * @return
	 */
	public ArrayList<JobDetailsUser> getJobDetailsForNotifications(UserDetails userDetails) {
		System.out.println("in getJobDetailsForNotifications() method...");
		logger.info("getJobDetailsForNotifications() method Start ...");
		ArrayList<JobDetailsUser> jobDetailsUserList = new ArrayList<JobDetailsUser>();
		try {
			JobDetailsUser jobDetailsUser1 = new JobDetailsUser();
			JobDetailsUser jobDetailsUser2 = new JobDetailsUser();
			
			jobDetailsUser1.setJobDescription("Dental claim staging");
			jobDetailsUser1.setJobId("1");
			jobDetailsUser1.setNumberOfCase(100);
			jobDetailsUser1.setTypeOfWork("Dental claim staging");
			SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");  
		    Date date = new Date();  
		    Calendar calendar = Calendar.getInstance();
		    calendar.setTime(date);
		    /*calendar.add(Calendar.HOUR,4);*/
		    
		    calendar.add(Calendar.DATE, -1);
		    jobDetailsUser1.setRequestedDate(formatter.format(date));
		    //jobDetailsUser1.setRequestedDate(""+calendar.getTime());
		    
		    calendar.setTime(date);
		    calendar.add(Calendar.HOUR,4);
		    
			jobDetailsUser1.setResponsedByDate(""+calendar.getTime());
			
			jobDetailsUserList.add(jobDetailsUser1);
		/*	
			jobDetailsUser2.setJobDescription("Medical review");
			jobDetailsUser2.setJobId("2");
			jobDetailsUser2.setNumberOfCase(5);
			jobDetailsUser2.setTypeOfWork("Medical review");
		    Date date1 = new Date();  
		    Calendar calendar1 = Calendar.getInstance();
		    calendar1.setTime(date1);
		    calendar1.add(Calendar.HOUR, 4);
		    jobDetailsUser2.setRequestedDate(formatter.format(date1));
			jobDetailsUser2.setResponsedByDate(""+calendar1.getTime());
			jobDetailsUserList.add(jobDetailsUser2);*/
			
		}catch (Exception e) {
			System.out.println("Exception in getJobDetailsForNotifications() method " + e);
			logger.error("Exception in getJobDetailsForNotifications() method " , e);
		}
		return jobDetailsUserList;
	}	

	@RequestMapping(value="/userwork",method=RequestMethod.GET)
	public ModelAndView getUserMyWork(HttpServletRequest httpServletRequest) {
		ModelAndView model = new ModelAndView("userwork");
		try {
			List<UserWork> userWorkList = new ArrayList<UserWork>();
			
			UserWork userwork1 = new UserWork(new Date(), 20, JobStatus.ASSIGNED.getDescription());
			Date dt = new Date();
			Calendar c = Calendar.getInstance(); 
			c.setTime(dt); 
			c.add(Calendar.DATE, -1);
			UserWork userwork2 = new UserWork(c.getTime(), 20, JobStatus.COMPLETED.getDescription());
			c.add(Calendar.DATE, -1);
			UserWork userwork3 = new UserWork(c.getTime(), 30, JobStatus.COMPLETED.getDescription());
			
			userWorkList.add(userwork1);
			userWorkList.add(userwork2);
			userWorkList.add(userwork3);
			model.addObject("userWorkList", userWorkList);
			
			
		}catch (Exception e) {
			
			logger.error(" Exception in getUserMyWork() for User method ...", e);
			model = new ModelAndView("userDashboard");
	        model.addObject("errorMsg", "Error while getting work details.");
		}
		return model;
	}
	
	
	@RequestMapping(value="/feedbackAndRating",method=RequestMethod.GET)
	public ModelAndView getFeedbackAndRating(HttpServletRequest httpServletRequest) {
		ModelAndView model = new ModelAndView("feedbackAndRating");
		try {
			List<UserWork> userWorkList = new ArrayList<UserWork>();
			UserWork userwork1 = new UserWork(new Date(), 20, JobStatus.ASSIGNED.getDescription());
			Date dt = new Date();
			Calendar c = Calendar.getInstance(); 
			c.setTime(dt); 
			c.add(Calendar.DATE, -1);
			UserWork userwork2 = new UserWork(c.getTime(), 20, JobStatus.ASSIGNED.getDescription());
			c.add(Calendar.DATE, -1);
			UserWork userwork3 = new UserWork(c.getTime(), 30, JobStatus.COMPLETED.getDescription());
			
			userwork1.setFeedback("Good");
			userwork1.setNumberOfCasesAccepted(20);
			userwork1.setRating(4);
			userWorkList.add(userwork1);
			
			userwork2.setFeedback("Good");
			userwork2.setNumberOfCasesAccepted(20);
			userwork2.setRating(5);
			userWorkList.add(userwork2);
			
			userwork3.setFeedback("Average");
			userwork3.setNumberOfCasesAccepted(22);
			userwork3.setRating(3);
			userWorkList.add(userwork3);
			model.addObject("useFeedbackAndRating", userWorkList);
			
		}catch (Exception e) {
			
			logger.error(" Exception in mywork for User method ...", e);
			model = new ModelAndView("userDashboard");
	        model.addObject("errorMsg", "Error while publishing work.");
		}
		return model;
	}
	
	
	/**
	 * @param httpServletRequest
	 * @return
	 */
	@RequestMapping(value="/notification",method=RequestMethod.GET)
	public ModelAndView getNotifications(HttpServletRequest httpServletRequest) {
		ModelAndView model = new ModelAndView("userDashboard");
		ArrayList<JobDetailsUser> jobDetailsUserList;
		ArrayList<JobDetailsUser> jobAssignedDetailsUserList;
		try {
			jobDetailsUserList = getJobDetailsForNotifications(new UserDetails());
        	model.addObject("jobDetailsUserList",jobDetailsUserList);
        	jobAssignedDetailsUserList = new UserController().getAssignedJobDetailsForNotifications(new UserDetails());
        	model.addObject("jobAssignedDetailsUserList",jobAssignedDetailsUserList);
        	
        	System.out.println("User login...");
			
		}catch (Exception e) {
			logger.error(" Exception in getNotifications() for User method ...", e);
			model = new ModelAndView("userDashboard");
	        model.addObject("errorMsg", "Error while getting notification details.");
		}
		return model;
	}

	public ArrayList<JobDetailsUser> getAssignedJobDetailsForNotifications(UserDetails userDetails) {
		System.out.println("in getJobDetailsForNotifications() method...");
		logger.info("getJobDetailsForNotifications() method Start ...");
		ArrayList<JobDetailsUser> jobDetailsUserList = new ArrayList<JobDetailsUser>();
		try {
			JobDetailsUser jobDetailsUser1 = new JobDetailsUser();
			JobDetailsUser jobDetailsUser2 = new JobDetailsUser();
			SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");  
			
			/*jobDetailsUser1.setJobDescription("Medical review");
			jobDetailsUser1.setJobId("1");
			jobDetailsUser1.setNumberOfCase(10);
			jobDetailsUser1.setTypeOfWork("Medical review");
			SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");  
		    Date date = new Date();  
		    Calendar calendar = Calendar.getInstance();
		    calendar.setTime(date);
		    calendar.add(Calendar.HOUR,4);
		    
		    jobDetailsUser1.setRequestedDate(formatter.format(date));
			jobDetailsUser1.setResponsedByDate(""+calendar.getTime());
			
			jobDetailsUserList.add(jobDetailsUser1);*/
			
			jobDetailsUser2.setJobDescription("Dental claim staging");
			jobDetailsUser2.setJobId("2");
			jobDetailsUser2.setNumberOfCaseAssigned(5);
			jobDetailsUser2.setTypeOfWork("Dental claim staging");
		    Date date1 = new Date();  
		    Calendar calendar1 = Calendar.getInstance();
		    calendar1.setTime(date1);
		    calendar1.add(Calendar.HOUR, 1);
		    
		    jobDetailsUser2.setRequestedDate(""+calendar1.getTime());
			jobDetailsUserList.add(jobDetailsUser2);
			
		}catch (Exception e) {
			System.out.println("Exception in getJobDetailsForNotifications() method " + e);
			logger.error("Exception in getJobDetailsForNotifications() method " , e);
		}
		return jobDetailsUserList;
	}
	
}
