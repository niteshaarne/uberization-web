package com.uberization.responsePojo;

public class JobDetailsUser {

	private String typeOfWork;
	private String jobDescriptio;
	private String requestedDate;
	
	private int numberOfCase;
	private String responsedByDate;
	private String availableHours;
	public String getTypeOfWork() {
		return typeOfWork;
	}
	public void setTypeOfWork(String typeOfWork) {
		this.typeOfWork = typeOfWork;
	}
	public String getJobDescriptio() {
		return jobDescriptio;
	}
	public void setJobDescriptio(String jobDescriptio) {
		this.jobDescriptio = jobDescriptio;
	}
	public String getRequestedDate() {
		return requestedDate;
	}
	public void setRequestedDate(String requestedDate) {
		this.requestedDate = requestedDate;
	}
	public int getNumberOfCase() {
		return numberOfCase;
	}
	public void setNumberOfCase(int numberOfCase) {
		this.numberOfCase = numberOfCase;
	}
	public String getResponsedByDate() {
		return responsedByDate;
	}
	public void setResponsedByDate(String responsedByDate) {
		this.responsedByDate = responsedByDate;
	}
	public String getAvailableHours() {
		return availableHours;
	}
	public void setAvailableHours(String availableHours) {
		this.availableHours = availableHours;
	}
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((availableHours == null) ? 0 : availableHours.hashCode());
		result = prime * result + ((jobDescriptio == null) ? 0 : jobDescriptio.hashCode());
		result = prime * result + numberOfCase;
		result = prime * result + ((requestedDate == null) ? 0 : requestedDate.hashCode());
		result = prime * result + ((responsedByDate == null) ? 0 : responsedByDate.hashCode());
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
		JobDetailsUser other = (JobDetailsUser) obj;
		if (availableHours == null) {
			if (other.availableHours != null)
				return false;
		} else if (!availableHours.equals(other.availableHours))
			return false;
		if (jobDescriptio == null) {
			if (other.jobDescriptio != null)
				return false;
		} else if (!jobDescriptio.equals(other.jobDescriptio))
			return false;
		if (numberOfCase != other.numberOfCase)
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
	@Override
	public String toString() {
		return "JobDetailsUser [typeOfWork=" + typeOfWork + ", jobDescriptio=" + jobDescriptio + ", requestedDate="
				+ requestedDate + ", numberOfCase=" + numberOfCase + ", responsedByDate=" + responsedByDate
				+ ", availableHours=" + availableHours + "]";
	}
	
}
