package com.sn.tool;
import java.util.Map;
import org.apache.struts2.interceptor.SessionAware;
import com.opensymphony.xwork2.ActionSupport;
import com.sn.model.User;
import com.sn.service.loginService;
import com.sn.serviceImpl.loginServiceImpl;

public class myLoginAction extends ActionSupport implements SessionAware{

	private static final long serialVersionUID = 1L;
	protected User user;
	protected String confirmPassword;
	protected Map<String, Object> session;
	protected loginService login=new loginServiceImpl();

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
	
	public String getConfirmPassword() {
		return confirmPassword;
	}

	public void setConfirmPassword(String confirmPassword) {
		this.confirmPassword = confirmPassword;
	}
	@Override
	public void setSession(Map<String, Object> session) {
		// TODO Auto-generated method stub
		this.session=session;
	}
}
