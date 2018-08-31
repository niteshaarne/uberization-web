package com.uberization.responsePojo;

public class JobPostingDetails {
	
	private String typeOfWork;
	private String numberOfCases;
	private String dateOfWork;
	private String responseDeadline;
	public String getTypeOfWork() {
		return typeOfWork;
	}
	public void setTypeOfWork(String typeOfWork) {
		this.typeOfWork = typeOfWork;
	}
	public String getNumberOfCases() {
		return numberOfCases;
	}
	public void setNumberOfCases(String numberOfCases) {
		this.numberOfCases = numberOfCases;
	}
	public String getDateOfWork() {
		return dateOfWork;
	}
	public void setDateOfWork(String dateOfWork) {
		this.dateOfWork = dateOfWork;
	}
	public String getResponseDeadline() {
		return responseDeadline;
	}
	public void setResponseDeadline(String responseDeadline) {
		this.responseDeadline = responseDeadline;
	}
	@Override
	public String toString() {
		return "JobPostingDetails [typeOfWork=" + typeOfWork + ", numberOfCases=" + numberOfCases + ", dateOfWork="
				+ dateOfWork + ", responseDeadline=" + responseDeadline + "]";
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((dateOfWork == null) ? 0 : dateOfWork.hashCode());
		result = prime * result + ((numberOfCases == null) ? 0 : numberOfCases.hashCode());
		result = prime * result + ((responseDeadline == null) ? 0 : responseDeadline.hashCode());
		result = prime * result + ((typeOfWork == null) ? 0 : typeOfWork.hashCode());
		return result;
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		JobPostingDetails other = (JobPostingDetails) obj;
		if (dateOfWork == null) {
			if (other.dateOfWork != null)
				return false;
		} else if (!dateOfWork.equals(other.dateOfWork))
			return false;
		if (numberOfCases == null) {
			if (other.numberOfCases != null)
				return false;
		} else if (!numberOfCases.equals(other.numberOfCases))
			return false;
		if (responseDeadline == null) {
			if (other.responseDeadline != null)
				return false;
		} else if (!responseDeadline.equals(other.responseDeadline))
			return false;
		if (typeOfWork == null) {
			if (other.typeOfWork != null)
				return false;
		} else if (!typeOfWork.equals(other.typeOfWork))
			return false;
		return true;
	}
	
}
