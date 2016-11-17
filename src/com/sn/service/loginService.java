package com.sn.service;

import com.sn.model.User;

public interface loginService {

	public boolean login(User user);
	public User user(User user);
	public boolean register(User user);
}
