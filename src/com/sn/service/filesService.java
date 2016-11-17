package com.sn.service;

import java.util.ArrayList;
import com.sn.model.Files;
import com.sn.model.User;

public interface filesService {

	public int count(User user,String key);
	public ArrayList<Files> list(User user,String key, int pageNow,int pageSize);
	public boolean upLoad(User user,Files file);
	public boolean delete(Files file);
}
