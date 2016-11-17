package com.sn.service;

import java.util.ArrayList;

import com.sn.model.Dates;
import com.sn.model.User;

public interface datesService {

	public int count(User user,String key);
	public ArrayList<Dates> info(User user,String key, int pageNow,int pageSize);
	public boolean add(User user,Dates date);
	public boolean upInfo(Dates date);
	public boolean delete(Dates date);
}
