package com.sn.dao;

import com.sn.model.User;

public interface personalDao {

	
	public boolean upPassword(User user,String oldpassword,String newPassword);
	public boolean upInfo(User user);
}
