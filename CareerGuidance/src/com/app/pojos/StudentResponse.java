package com.app.pojos;

import javax.persistence.EmbeddedId;
import javax.persistence.Entity;

@Entity
public class StudentResponse {
	private StudentResponseId responseid;
	private String studentresponse;
	
	public StudentResponse() {
		// TODO Auto-generated constructor stub
	}
	@EmbeddedId
	public StudentResponseId getResponseid() {
		return responseid;
	}
	public void setResponseid(StudentResponseId responseid) {
		this.responseid = responseid;
	}
	public String getStudentresponse() {
		return studentresponse;
	}
	public void setStudentresponse(String studentresponse) {
		this.studentresponse = studentresponse;
	}
}
