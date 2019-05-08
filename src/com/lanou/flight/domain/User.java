package com.lanou.flight.domain;

import java.io.Serializable;

import org.springframework.stereotype.Controller;

@Controller
public class User implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Integer userid;
	private String username;
	private String userpassword;
	private String userphone;
	private String useridentity;
	private String usermail;//邮箱
	private Integer jurisdiction;//权限 1为用户 2 为管理人员
	
	
	
	public Integer getUserid() {
		return userid;
	}
	public void setUserid(Integer userid) {
		this.userid = userid;
	}
	public Integer getJurisdiction() {
		return jurisdiction;
	}
	public void setJurisdiction(Integer jurisdiction) {
		this.jurisdiction = jurisdiction;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	
	public String getUserpassword() {
		return userpassword;
	}
	public void setUserpassword(String userpassword) {
		this.userpassword = userpassword;
	}
	public String getUserphone() {
		return userphone;
	}
	public void setUserphone(String userphone) {
		this.userphone = userphone;
	}
	public String getUseridentity() {
		return useridentity;
	}
	public void setUseridentity(String useridentity) {
		this.useridentity = useridentity;
	}
	public String getUsermail() {
		return usermail;
	}
	public void setUsermail(String usermail) {
		this.usermail = usermail;
	}
	
	
	

}
