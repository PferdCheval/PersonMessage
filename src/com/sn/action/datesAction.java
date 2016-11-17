package com.sn.action;

import com.opensymphony.xwork2.interceptor.annotations.InputConfig;
import com.sn.tool.myDatesAction;

public class datesAction extends myDatesAction{

	private static final long serialVersionUID = 1L;
	public String info() throws Exception{
		
		intRowCount=ddi.count(user,key);//获取总记录数
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
		al=ddi.info(user,key,pageNow,pageSize);	
		return "info";	
	}
	@InputConfig(resultName="add_input")
	public String add() throws Exception{
		if(ddi.add(user, date))
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
	@InputConfig(resultName="upInfo_input")
	public String upInfo() throws Exception {
		//System.out.println(friend.getFriendsName());
		if(ddi.upInfo(date))
		{
			return "upInfo";
		}else
		{
			return "no";
		}
	}
	
	public String delete() throws Exception{
		if(ddi.delete(date))
		{
			return "delete";
		}else
		{
			return "no";
		}
	}
	
}
