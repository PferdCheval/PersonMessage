package com.sn.action;
import org.apache.struts2.dispatcher.SessionMap;
import com.opensymphony.xwork2.interceptor.annotations.InputConfig;
import com.sn.tool.myLoginAction;

public class loginAction extends myLoginAction {

	private static final long serialVersionUID = 1L;
	@InputConfig(resultName="login_input")
	public String login() throws Exception {

		if(login.login(user))
		{
			user=login.user(user);
			session.put("user", user);
			return "login";
		}else
		{
			return "no";
		}
	}

	@InputConfig(resultName="register_input")
	public String register() throws Exception {
		if(login.register(user))
		{
			return "register";
		}else
		{
			return "no";
		}
	}
	public String logout() throws Exception {

		((SessionMap<String,Object>)session).invalidate();

		return "logout";
	}
	
	
}
