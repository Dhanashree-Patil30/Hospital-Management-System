package com.entity;

public class User {
	
	private int id;
	private String fname;
	private String uemail;
	private String upass;
	private String umobile;
	
	
	
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	public int getId() {
		return id;
	}
	public User(String fname, String uemail, String upass, String umobile) {
		super();
		this.fname = fname;
		this.uemail = uemail;
		this.upass = upass;
		this.umobile = umobile;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getUemail() {
		return uemail;
	}
	public void setUemail(String uemail) {
		this.uemail = uemail;
	}
	public String getUpass() {
		return upass;
	}
	public void setUpass(String upass) {
		this.upass = upass;
	}
	public String getUmobile() {
		return umobile;
	}
	public void setUmobile(String umobile) {
		this.umobile = umobile;
	}
	

}
