package com.sn.dao;

import com.sn.model.User;

public interface loginDao {

	public boolean login(User user);
	public User user(User user);
	public boolean register(User user);
}
