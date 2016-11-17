package com.sn.serviceImpl;

import com.sn.dao.personalDao;
import com.sn.daoImpl.personalDaoImpl;
import com.sn.model.User;
import com.sn.service.personalService;


public class personalServiceImpl implements personalService{

	private personalDao personaldao=new personalDaoImpl();
	
	public boolean upPassword(User user, String oldpassword, String newPassword) {

		return personaldao.upPassword(user, oldpassword, newPassword);
	}


	public boolean upInfo(User user) {
		
		return personaldao.upInfo(user);
	}

	

}
