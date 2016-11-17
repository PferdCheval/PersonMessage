package com.sn.serviceImpl;

import com.sn.dao.loginDao;
import com.sn.daoImpl.loginDaoImpl;
import com.sn.model.User;
import com.sn.service.loginService;


public class loginServiceImpl implements loginService{

	private loginDao logindao=new loginDaoImpl();

	public boolean login(User user) {
		
		return logindao.login(user);
	}

	
	public User user(User user) {
		return logindao.user(user);
	}

	
	public boolean register(User user) {
		return logindao.register(user);
	}

	
}
