package com.sn.tool;


import java.util.ArrayList;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.sn.model.*;
import com.sn.service.datesService;
import com.sn.serviceImpl.datesServiceImpl;

public class myDatesAction extends ActionSupport{

	private static final long serialVersionUID = 1L;
	protected User user;
	protected ArrayList<Dates> al;
	protected datesService ddi=new datesServiceImpl() ;
	protected Dates date;
	protected String key;

	protected int k;//�������ҳ����  
	protected int pageNow=1; //ҳ����,��ʼΪ1  
	protected int pageSize = 5 ; //ҳ������   
	protected int intRowCount;//������  
	protected int intPageCount;//��ҳ�� 
	public myDatesAction()
	{
		// TODO Auto-generated constructor stub
		user=(User)ActionContext.getContext().getSession().get("user");
		key="";
		
	}

	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public int getPageNow() {
		return pageNow;
	}
	public void setPageNow(int pageNow) {
		this.pageNow = pageNow;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	
	public int getK() {
		return k;
	}
	public void setK(int k) {
		this.k = k;
	}
	public int getIntRowCount() {
		return intRowCount;
	}
	public void setIntRowCount(int intRowCount) {
		this.intRowCount = intRowCount;
	}
	public int getIntPageCount() {
		return intPageCount;
	}
	public void setIntPageCount(int intPageCount) {
		this.intPageCount = intPageCount;
	}
	public String getKey() {
		return key;
	}

	public void setKey(String key) {
		this.key = key;
	}
	public ArrayList<Dates> getAl() {
		return al;
	}

	public void setAl(ArrayList<Dates> al) {
		this.al = al;
	}

	public Dates getDate() {
		return date;
	}

	public void setDate(Dates date) {
		this.date = date;
	}

}
