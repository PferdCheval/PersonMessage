package com.sn.serviceImpl;


import java.util.ArrayList;

import com.sn.dao.filesDao;
import com.sn.daoImpl.filesDaoImpl;
import com.sn.model.Files;
import com.sn.model.User;
import com.sn.service.filesService;


public class filesServiceImpl implements filesService{

	private filesDao filesdao=new filesDaoImpl();
	
	public int count(User user, String key) {
		return filesdao.count(user, key);
	}


	public ArrayList<Files> list(User user, String key, int pageNow,
			int pageSize) {
		
		return filesdao.list(user, key, pageNow, pageSize);
	}

	public boolean upLoad(User user, Files file) {
		
		return filesdao.upLoad(user, file);
	}


	public boolean delete(Files file) {
	
		return filesdao.delete(file);
	}

	
}
