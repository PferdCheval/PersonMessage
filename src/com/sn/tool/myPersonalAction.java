package com.sn.tool;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.sn.model.User;
import com.sn.service.personalService;
import com.sn.serviceImpl.loginServiceImpl;
import com.sn.serviceImpl.personalServiceImpl;

public class myPersonalAction extends ActionSupport{

	private static final long serialVersionUID = 1L;
	protected String confirmPassword;
	protected loginServiceImpl login=new loginServiceImpl();
	protected String newPassword;
	protected String oldPassword;
	protected personalService pdi=new personalServiceImpl();
	protected User user;



	public myPersonalAction()
	{
		user=(User)ActionContext.getContext().getSession().get("user");
		user=login.user(user);//Ë¢ÐÂÊý¾Ý
	}
	public String getConfirmPassword() {
		return confirmPassword;
	}
	
	public String getNewPassword() {
		return newPassword;
	}
	public String getOldPassword() {
		return oldPassword;
	}
	
	public User getUser() {
		return user;
	}
	
	
	public void setConfirmPassword(String confirmPassword) {
		this.confirmPassword = confirmPassword;
	}

	public void setNewPassword(String newPassword) {
		this.newPassword = newPassword;
	}

	public void setOldPassword(String oldPassword) {
		this.oldPassword = oldPassword;
	}

	

	public void setUser(User user) {
		this.user = user;
	}
	
}
