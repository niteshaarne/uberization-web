package com.uberization.client;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.uberization.pojo.SkillSet;
import com.uberization.requestPojo.UserCredentials;
import com.uberization.responsePojo.UserDetails;
import com.uberization.service.ServiceBasedComponent;
import com.uberization.util.WebAppConstants;

@Component
public class UberClient {
	
	//@Autowired
	//private ServiceBasedComponent serviceBasedComponent;

	public UserDetails getUserDetails(UserCredentials userCredentials) {
		String response = null;
		UserDetails userDetails = new UserDetails();
		ServiceBasedComponent serviceBasedComponent = new ServiceBasedComponent();
		try {
			
			String webServiceURL = WebAppConstants.LOGIN_SERVICE;
			//response = serviceBasedComponent.getUserDetails(webServiceURL, userCredentials);
			
			userDetails.setEmail("nitesh.aarne@gmail.com");
			userDetails.setContactNumber("+910503340892");
			userDetails.setFirstName("nitesh");
			userDetails.setLastName("aa");
			userDetails.setUserType("1");
			ArrayList<SkillSet> skillSet = new ArrayList<SkillSet>();
			
			SkillSet skillSet1 = new SkillSet();
			skillSet1.setSkillName("Case processing");
			
			SkillSet skillSet2= new SkillSet();
			skillSet1.setSkillName("Medical Review");
			
			skillSet.add(skillSet1);
			skillSet.add(skillSet2);
			
			//userDetails.setSkillSetList(skillSet);
			
			
		}catch (Exception e) {
			System.out.println("Exception in getUserDetails() method..." + e);
		}
		return userDetails;
	}

}
