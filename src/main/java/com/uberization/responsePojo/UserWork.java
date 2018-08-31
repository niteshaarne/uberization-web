package com.uberization.responsePojo;

import java.util.Date;

public class UserWork {
	private Date jobPostedDate;
	private Integer numberOfCasesAssigned;
	private String jobstatus;
	private int numberOfCasesAccepted;
	private int rating;
	private String feedback;
	
	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "UserWork [jobPostedDate=" + jobPostedDate + ", numberOfCasesAssigned=" + numberOfCasesAssigned
				+ ", jobstatus=" + jobstatus + ", numberOfCasesAccepted=" + numberOfCasesAccepted + ", rating=" + rating
				+ ", feedback=" + feedback + "]";
	}

	/* (non-Javadoc)
	 * @see java.lang.Object#hashCode()
	 */
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((feedback == null) ? 0 : feedback.hashCode());
		result = prime * result + ((jobPostedDate == null) ? 0 : jobPostedDate.hashCode());
		result = prime * result + ((jobstatus == null) ? 0 : jobstatus.hashCode());
		result = prime * result + numberOfCasesAccepted;
		result = prime * result + ((numberOfCasesAssigned == null) ? 0 : numberOfCasesAssigned.hashCode());
		result = prime * result + rating;
		return result;
	}

	/* (non-Javadoc)
	 * @see java.lang.Object#equals(java.lang.Object)
	 */
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		UserWork other = (UserWork) obj;
		if (feedback == null) {
			if (other.feedback != null)
				return false;
		} else if (!feedback.equals(other.feedback))
			return false;
		if (jobPostedDate == null) {
			if (other.jobPostedDate != null)
				return false;
		} else if (!jobPostedDate.equals(other.jobPostedDate))
			return false;
		if (jobstatus == null) {
			if (other.jobstatus != null)
				return false;
		} else if (!jobstatus.equals(other.jobstatus))
			return false;
		if (numberOfCasesAccepted != other.numberOfCasesAccepted)
			return false;
		if (numberOfCasesAssigned == null) {
			if (other.numberOfCasesAssigned != null)
				return false;
		} else if (!numberOfCasesAssigned.equals(other.numberOfCasesAssigned))
			return false;
		if (rating != other.rating)
			return false;
		return true;
	}

	/**
	 * @return the numberOfCasesAccepted
	 */
	public int getNumberOfCasesAccepted() {
		return numberOfCasesAccepted;
	}

	/**
	 * @param numberOfCasesAccepted the numberOfCasesAccepted to set
	 */
	public void setNumberOfCasesAccepted(int numberOfCasesAccepted) {
		this.numberOfCasesAccepted = numberOfCasesAccepted;
	}

	/**
	 * @return the rating
	 */
	public int getRating() {
		return rating;
	}

	/**
	 * @param rating the rating to set
	 */
	public void setRating(int rating) {
		this.rating = rating;
	}

	/**
	 * @return the feedback
	 */
	public String getFeedback() {
		return feedback;
	}

	/**
	 * @param feedback the feedback to set
	 */
	public void setFeedback(String feedback) {
		this.feedback = feedback;
	}

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
