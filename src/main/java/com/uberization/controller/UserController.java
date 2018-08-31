package com.uberization.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.servlet.ModelAndView;

import com.uberization.responsePojo.JobDetailsUser;
import com.uberization.responsePojo.UserDetails;

@Controller
public class UserController {
	
	public static Log logger = LogFactory.getLog(AdminController.class);
	
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
			
			jobDetailsUser1.setJobDescription("Medical review");
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
			
			jobDetailsUserList.add(jobDetailsUser1);
			
			jobDetailsUser2.setJobDescription("Medical review");
			jobDetailsUser2.setJobId("2");
			jobDetailsUser2.setNumberOfCase(5);
			jobDetailsUser2.setTypeOfWork("Case Processing");
		    Date date1 = new Date();  
		    Calendar calendar1 = Calendar.getInstance();
		    calendar1.setTime(date1);
		    calendar1.add(Calendar.HOUR, 4);
		    jobDetailsUser2.setRequestedDate(formatter.format(date1));
			jobDetailsUser2.setResponsedByDate(""+calendar1.getTime());
			jobDetailsUserList.add(jobDetailsUser2);
			
			/*jobDetailsUser3.setJobDescription("Medical review");
			jobDetailsUser3.setJobId("1");
			jobDetailsUser3.setNumberOfCase(10);
			jobDetailsUser3.setTypeOfWork("Medical review");
			
			SimpleDateFormat formatter3 = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");  
		    Date date3 = new Date();  
		    Calendar calendar3 = Calendar.getInstance();
		    calendar3.setTime(date3);
		    calendar3.add(Calendar.HOUR, 1);
		    
		    jobDetailsUser3.setRequestedDate(formatter3.format(date3));
			jobDetailsUser3.setResponsedByDate(""+calendar3.getTime());*/
			
		}catch (Exception e) {
			System.out.println("Exception in getJobDetailsForNotifications() method " + e);
			logger.error("Exception in getJobDetailsForNotifications() method " , e);
		}
		return jobDetailsUserList;
	}	

}
