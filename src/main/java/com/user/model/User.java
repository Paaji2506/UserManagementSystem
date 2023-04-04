package com.user.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Users")
public class User {

	@Id
	@Column(name="id")
	private int userId;
	@Column(name="Name")
	private String uName;
	private String uPass;
	private String uEmail;
	private String uSex;
	private String uCountry;
	
	public User() {
		super();
	}

	public User(int userId, String uName, String uPass, String uEmail, String uSex, String uCountry) {
		super();
		this.userId= userId;
		this.uName = uName;
		this.uPass = uPass;
		this.uEmail = uEmail;
		this.uSex = uSex;
		this.uCountry = uCountry;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int uId) {
		this.userId = uId;
	}

	public String getuName() {
		return uName;
	}

	public void setuName(String uName) {
		this.uName = uName;
	}

	public String getuPass() {
		return uPass;
	}

	public void setuPass(String uPass) {
		this.uPass = uPass;
	}

	public String getuEmail() {
		return uEmail;
	}

	public void setuEmail(String uEmail) {
		this.uEmail = uEmail;
	}

	public String getuSex() {
		return uSex;
	}

	public void setuSex(String uSex) {
		this.uSex = uSex;
	}

	public String getuCountry() {
		return uCountry;
	}

	public void setuCountry(String uCountry) {
		this.uCountry = uCountry;
	}

	@Override
	public String toString() {
		return "User [userId=" + userId + ", uName=" + uName + ", uPass=" + uPass + ", uEmail=" + uEmail + ", uSex="
				+ uSex + ", uCountry=" + uCountry + "]";
	}

	
	

}
