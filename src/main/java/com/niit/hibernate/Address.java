package com.niit.hibernate;

public class Address {
	private int pincode;
	private String city,country;
	public Address() {
		super();
	}
	public Address(int pincode, String city, String country) {
		super();
		this.pincode = pincode;
		this.city = city;
		this.country = country;
	}
	public int getPincode() {
		return pincode;
	}
	public void setPincode(int pincode) {
		this.pincode = pincode;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	
}
