package com.ssm.Entity;

import org.springframework.stereotype.Component;

@Component
public class User 
{
	private Integer userid ;
	private String username ;
	private String userpwd ;

	public Integer getUserid() {
		return userid;
	}
	public void setUserid(Integer userid) {
		this.userid = userid;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getUserpwd() {
		return userpwd;
	}
	public void setUserpwd(String userpwd) {
		this.userpwd = userpwd;
	}
	@Override
	public String toString() {
		return "User [userid=" + userid + ", username=" + username
				+ ", userpwd=" + userpwd + "]";
	}
	
}
