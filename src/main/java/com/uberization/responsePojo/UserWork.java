package com.uberization.responsePojo;

import java.util.Date;

public class UserWork {
	private Date jobPostedDate;
	private Integer numberOfCasesAssigned;
	private String jobstatus;

	public UserWork() {
	}

	public UserWork(Date jobPostedDate, Integer numberOfCasesAssigned, String jobstatus) {
		this.jobPostedDate = jobPostedDate;
		this.numberOfCasesAssigned = numberOfCasesAssigned;
		this.jobstatus = jobstatus;
	}

	public Date getJobPostedDate() {
		return jobPostedDate;
	}

	public void setJobPostedDate(Date jobPostedDate) {
		this.jobPostedDate = jobPostedDate;
	}

	public Integer getNumberOfCasesAssigned() {
		return numberOfCasesAssigned;
	}

	public void setNumberOfCasesAssigned(Integer numberOfCasesAssigned) {
		this.numberOfCasesAssigned = numberOfCasesAssigned;
	}

	public String getJobstatus() {
		return jobstatus;
	}

	public void setJobstatus(String jobstatus) {
		this.jobstatus = jobstatus;
	}
}
