package com.uberization.pojo;

public enum JobStatus {
	ASSIGNED("Assigned"),
	COMPLETED("Completed");
	private String description;

	public String getDescription() {
		return description;
	}

	private JobStatus(String description) {
		this.description = description;
	}
	
}
