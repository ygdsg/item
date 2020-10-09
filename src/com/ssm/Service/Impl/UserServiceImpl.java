package com.ssm.Service.Impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ssm.Dao.UserDao;
import com.ssm.Entity.User;
import com.ssm.Service.UserService;

@Service
@Transactional
public class UserServiceImpl implements UserService
{

	@Autowired
	private UserDao userDao ;
	
	@Override
	public boolean userLogin(User u) 
	{
		return userDao.userLogin(u) > 0;
	}
	
}
