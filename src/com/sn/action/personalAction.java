package com.sn.action;
import com.opensymphony.xwork2.interceptor.annotations.InputConfig;
import com.sn.tool.myPersonalAction;

public class personalAction extends myPersonalAction{


	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	public String info() throws Exception{
		return "info";	
	}
	public String showUpInfo() throws Exception{
		return "showUpInfo";	
	}
	@InputConfig(resultName="password_input")
	public String upPassword() throws Exception {

		if(pdi.upPassword(user, oldPassword,newPassword))
		{
			return "upPassword";
		}else{
			return "no";
		}
	}
	public void validateUpPassword() {
		if(!(this.getOldPassword()).equals(user.getPassword()))
		{
			this.addFieldError("oldPassword", "‘≠√‹¬Î¥ÌŒÛ£°");
		}
	}
	@InputConfig(resultName="upInfo_input")
	public String upInfo() throws Exception {

		if(pdi.upInfo(user))
		{
			return "upInfo";
		}else{
			return "no";
		}

	}
	

}
