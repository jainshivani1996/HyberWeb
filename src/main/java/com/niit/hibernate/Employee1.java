package com.niit.hibernate;

import java.util.Date;

public class Employee1 extends Person1{
	private Date joiningDate;
	private String deptName;
	
	
	public Employee1() {
		
	}
	public Employee1(String firstName, String lastName, Date joiningDate, String deptName) {
		super(firstName, lastName);
		this.joiningDate = joiningDate;
		this.deptName = deptName;
	}
	public Date getJoiningDate() {
		return joiningDate;
	}
	public void setJoiningDate(Date joiningDate) {
		this.joiningDate = joiningDate;
	}
	public String getDeptName() {
		return deptName;
	}
	public void setDeptName(String deptName) {
		this.deptName = deptName;
	}
	

}
