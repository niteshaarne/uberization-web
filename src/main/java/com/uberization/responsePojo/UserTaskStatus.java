package com.uberization.responsePojo;

public class UserTaskStatus {
	private Integer jobID;
	private Integer userID;
	private String userName;
	private Integer taskAssigned;
	private Integer taskCompleted;
	private Integer taskAcceptable;
	public Integer getTaskAcceptable() {
		return taskAcceptable;
	}
	public void setTaskAcceptable(Integer taskAcceptable) {
		this.taskAcceptable = taskAcceptable;
	}
	private Double rating;
	private String feedBack;
	public Integer getJobID() {
		return jobID;
	}
	public void setJobID(Integer jobID) {
		this.jobID = jobID;
	}
	public Integer getUserID() {
		return userID;
	}
	public void setUserID(Integer userID) {
		this.userID = userID;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public Integer getTaskAssigned() {
		return taskAssigned;
	}
	public void setTaskAssigned(Integer taskAssigned) {
		this.taskAssigned = taskAssigned;
	}
	public Integer getTaskCompleted() {
		return taskCompleted;
	}
	public void setTaskCompleted(Integer taskCompleted) {
		this.taskCompleted = taskCompleted;
	}
	public Double getRating() {
		return rating;
	}
	public void setRating(Double rating) {
		this.rating = rating;
	}
	public String getFeedBack() {
		return feedBack;
	}
	public void setFeedBack(String feedBack) {
		this.feedBack = feedBack;
	}
	
}
