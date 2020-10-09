package com.ssm.Web.Controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ssm.Entity.User;
import com.ssm.Service.UserService;

@Controller
@RequestMapping(value="/user")
public class UserAction 
{
	@Autowired
	private UserService userServiceImpl ;
	
	@RequestMapping(value="/userLogin")
	public String userLogin(User u)
	{
		if(userServiceImpl.userLogin(u))
		{
			return "users/Users_login_success";
		}
		return "users/Users_login";
	}
}
