package com.niit.hibernate;
public class User {
private String name,password;
private String email;
private int id ;
	public User() {
		// TODO Auto-generated constructor stub
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public User(String name, String password, String email, int id) {
		super();
		this.name = name;
		this.password = password;
		this.email = email;
		this.id = id;
	}

}

