package com.sn.service;

import com.sn.model.User;

public interface personalService {

	
	public boolean upPassword(User user,String oldpassword,String newPassword);
	public boolean upInfo(User user);
}
