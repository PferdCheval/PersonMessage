package com.sn.action;

import com.opensymphony.xwork2.interceptor.annotations.InputConfig;
import com.sn.tool.myFriendsAction;

public class friendsAction extends myFriendsAction{

	private static final long serialVersionUID = 1L;
	public String info() throws Exception{
		
		intRowCount=fdi.count(user,key);//获取总记录数
		k=(intRowCount + pageSize - 1)/pageSize;//
		intPageCount = (intRowCount + pageSize - 1)/pageSize;//计算出总页数
		if(pageNow<1)
		{  
			pageNow=1;  
		}  
		if(pageNow > intPageCount&&intPageCount>=1)
		{  
			pageNow=intPageCount;  
		}
		//if(fdi.info(user, key,pageNow, pageSize)!=null)
		al=fdi.info(user,key,pageNow,pageSize);	
		return "info";	
	}
	@InputConfig(resultName="add_input")
	public String add() throws Exception {
		if(fdi.add(user, friend))
		{
			return "add";
		}else
		{
			return "no";
		}
	}
	public String showUp() throws Exception {
		return "showUp";

	}
	public String delete() throws Exception {
		if(fdi.delete(friend))
		{
			return "delete";
		}else
		{
			return "no";
		}
	}
	@InputConfig(resultName="upInfo_input")
	public String upInfo() throws Exception {
		//System.out.println(friend.getFriendsName());
		if(fdi.upInfo(friend))
		{
			return "upInfo";
		}else
		{
			return "no";
		}
	}

}
