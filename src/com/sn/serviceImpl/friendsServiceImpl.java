package com.sn.serviceImpl;
import java.util.ArrayList;

import com.sn.dao.friendsDao;
import com.sn.daoImpl.friendsDaoImpl;
import com.sn.model.*;
import com.sn.service.friendsService;


public class friendsServiceImpl implements friendsService{

	private friendsDao friendsdao=new friendsDaoImpl();
	
	public int count(User user, String key) {	
		return friendsdao.count(user, key);
	}


	public ArrayList<Friends> info(User user, String key, int pageNow,
			int pageSize) {
		
		return friendsdao.info(user, key, pageNow, pageSize);
	}


	public boolean add(User user, Friends friend) {
		
		return friendsdao.add(user, friend);
	}


	public boolean delete(Friends friend) {
	
		return friendsdao.delete(friend);
	}


	public boolean upInfo(Friends friend) {
		
		return friendsdao.upInfo(friend);
	}

	
}
