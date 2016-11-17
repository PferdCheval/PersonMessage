package com.sn.dao;

import java.util.ArrayList;

import com.sn.model.Friends;
import com.sn.model.User;

public interface friendsDao {

	public int count(User user,String key);
	public ArrayList<Friends> info(User user,String key, int pageNow,int pageSize);
	public boolean add(User user,Friends friend);
	public boolean delete(Friends friend);
	public boolean upInfo(Friends friend);
	
}
