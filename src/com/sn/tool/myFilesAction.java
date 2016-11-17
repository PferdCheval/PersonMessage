package com.sn.tool;


import java.util.ArrayList;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.sn.model.*;
import com.sn.service.filesService;
import com.sn.serviceImpl.filesServiceImpl;

public class myFilesAction extends ActionSupport{

	private static final long serialVersionUID = 1L;
	protected User user;
	protected ArrayList<Files> al;
	public ArrayList<Files> getAl() {
		return al;
	}

	public void setAl(ArrayList<Files> al) {
		this.al = al;
	}

	protected filesService fdi=new filesServiceImpl() ;
	protected Files file;
	
	protected String key;
	protected int k;//储存最大页面数  
	protected int pageNow=1; //页码数,初始为1  
	protected int pageSize =3 ; //页面行数   
	protected int intRowCount;//总行数  
	protected int intPageCount;//总页数 
	public myFilesAction()
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

	public Files getFile() {
		return file;
	}

	public void setFile(Files file) {
		this.file = file;
	}
}
