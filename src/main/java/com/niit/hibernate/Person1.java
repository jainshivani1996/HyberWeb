package com.niit.hibernate;

public class Person1 {
private long personId;
private String firstName;
private String lastName;

public Person1() {
	super();
}

public Person1(String firstName, String lastName) {
	
	this.firstName = firstName;
	this.lastName = lastName;
}

public long getPersonId() {
	return personId;
}
public void setPersonId(long personId) {
	this.personId = personId;
}
public String getFirstName() {
	return firstName;
}
public void setFirstName(String firstName) {
	this.firstName = firstName;
}
public String getLastName() {
	return lastName;
}
public void setLastName(String lastName) {
	this.lastName = lastName;
}

}
