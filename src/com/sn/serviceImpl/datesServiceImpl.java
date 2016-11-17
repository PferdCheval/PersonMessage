package com.sn.serviceImpl;

import java.util.ArrayList;

import com.sn.dao.datesDao;
import com.sn.daoImpl.datesDaoImpl;
import com.sn.model.Dates;
import com.sn.model.User;
import com.sn.service.datesService;


public class datesServiceImpl implements datesService{

	private datesDao datesdao=new datesDaoImpl();
	
	public int count(User user, String key) {
		return datesdao.count(user, key);
	}


	public ArrayList<Dates> info(User user, String key, int pageNow,
			int pageSize) {
		
		return datesdao.info(user, key, pageNow, pageSize);
	}


	public boolean add(User user, Dates date) {
		
		return datesdao.add(user, date);
	}


	public boolean upInfo(Dates date) {
		
		return datesdao.upInfo(date);
	}


	public boolean delete(Dates date) {
		
		return datesdao.delete(date);
	}

	
}
