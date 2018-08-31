package com.uberization.pojo;

public enum JobStatus {
	IN_PROGRESS("In Progress"),
	NOT_STARTED("Not Started"),
	COMPLETED("Completed");
	private String description;

	public String getDescription() {
		return description;
	}

	private JobStatus(String description) {
		this.description = description;
	}
	
}
