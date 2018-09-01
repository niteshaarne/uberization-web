package com.uberization.responsePojo;

public class JobDetailsUser {
	
	private String jobId;
	private String typeOfWork;
	private String jobDescription;
	private String requestedDate;
	
	private int numberOfCase;
	private int numberOfCaseAssigned;
	private String responsedByDate;
	private String availableHours;
	
	
	/**
	 * @return the numberOfCaseAssigned
	 */
	public int getNumberOfCaseAssigned() {
		return numberOfCaseAssigned;
	}
	/**
	 * @param numberOfCaseAssigned the numberOfCaseAssigned to set
	 */
	public void setNumberOfCaseAssigned(int numberOfCaseAssigned) {
		this.numberOfCaseAssigned = numberOfCaseAssigned;
	}
	/**
	 * @return the jobId
	 */
	public String getJobId() {
		return jobId;
	}
	/**
	 * @param jobId the jobId to set
	 */
	public void setJobId(String jobId) {
		this.jobId = jobId;
	}
	/**
	 * @return the typeOfWork
	 */
	public String getTypeOfWork() {
		return typeOfWork;
	}
	/**
	 * @param typeOfWork the typeOfWork to set
	 */
	public void setTypeOfWork(String typeOfWork) {
		this.typeOfWork = typeOfWork;
	}
	/**
	 * @return the jobDescription
	 */
	public String getJobDescription() {
		return jobDescription;
	}
	/**
	 * @param jobDescription the jobDescription to set
	 */
	public void setJobDescription(String jobDescription) {
		this.jobDescription = jobDescription;
	}
	/**
	 * @return the requestedDate
	 */
	public String getRequestedDate() {
		return requestedDate;
	}
	/**
	 * @param requestedDate the requestedDate to set
	 */
	public void setRequestedDate(String requestedDate) {
		this.requestedDate = requestedDate;
	}
	/**
	 * @return the numberOfCase
	 */
	public int getNumberOfCase() {
		return numberOfCase;
	}
	/**
	 * @param numberOfCase the numberOfCase to set
	 */
	public void setNumberOfCase(int numberOfCase) {
		this.numberOfCase = numberOfCase;
	}
	/**
	 * @return the responsedByDate
	 */
	public String getResponsedByDate() {
		return responsedByDate;
	}
	/**
	 * @param responsedByDate the responsedByDate to set
	 */
	public void setResponsedByDate(String responsedByDate) {
		this.responsedByDate = responsedByDate;
	}
	/**
	 * @return the availableHours
	 */
	public String getAvailableHours() {
		return availableHours;
	}
	/**
	 * @param availableHours the availableHours to set
	 */
	public void setAvailableHours(String availableHours) {
		this.availableHours = availableHours;
	}
	/* (non-Javadoc)
	 * @see java.lang.Object#hashCode()
	 */
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((availableHours == null) ? 0 : availableHours.hashCode());
		result = prime * result + ((jobDescription == null) ? 0 : jobDescription.hashCode());
		result = prime * result + ((jobId == null) ? 0 : jobId.hashCode());
		result = prime * result + numberOfCase;
		result = prime * result + numberOfCaseAssigned;
		result = prime * result + ((requestedDate == null) ? 0 : requestedDate.hashCode());
		result = prime * result + ((responsedByDate == null) ? 0 : responsedByDate.hashCode());
		result = prime * result + ((typeOfWork == null) ? 0 : typeOfWork.hashCode());
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
		JobDetailsUser other = (JobDetailsUser) obj;
		if (availableHours == null) {
			if (other.availableHours != null)
				return false;
		} else if (!availableHours.equals(other.availableHours))
			return false;
		if (jobDescription == null) {
			if (other.jobDescription != null)
				return false;
		} else if (!jobDescription.equals(other.jobDescription))
			return false;
		if (jobId == null) {
			if (other.jobId != null)
				return false;
		} else if (!jobId.equals(other.jobId))
			return false;
		if (numberOfCase != other.numberOfCase)
			return false;
		if (numberOfCaseAssigned != other.numberOfCaseAssigned)
			return false;
		if (requestedDate == null) {
			if (other.requestedDate != null)
				return false;
		} else if (!requestedDate.equals(other.requestedDate))
			return false;
		if (responsedByDate == null) {
			if (other.responsedByDate != null)
				return false;
		} else if (!responsedByDate.equals(other.responsedByDate))
			return false;
		if (typeOfWork == null) {
			if (other.typeOfWork != null)
				return false;
		} else if (!typeOfWork.equals(other.typeOfWork))
			return false;
		return true;
	}
	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "JobDetailsUser [jobId=" + jobId + ", typeOfWork=" + typeOfWork + ", jobDescription=" + jobDescription
				+ ", requestedDate=" + requestedDate + ", numberOfCase=" + numberOfCase + ", numberOfCaseAssigned="
				+ numberOfCaseAssigned + ", responsedByDate=" + responsedByDate + ", availableHours=" + availableHours
				+ "]";
	}
	
}
