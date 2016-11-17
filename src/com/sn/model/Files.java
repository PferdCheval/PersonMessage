package com.sn.model;

public class Files {

	private String contentType;
	private int fileid;
	private String filePath;
	private String name;
	private String size;
	private String title;
	private String upLoadTime;
	public String getContentType() {
		return contentType;
	}
	public int getFileid() {
		return fileid;
	}
	public String getFilePath() {
		return filePath;
	}
	public String getName() {
		return name;
	}
	public String getSize() {
		return size;
	}
	public String getTitle() {
		return title;
	}
	public String getUpLoadTime() {
		return upLoadTime;
	}
	public void setContentType(String contentType) {
		this.contentType = contentType;
	}
	public void setFileid(int fileid) {
		this.fileid = fileid;
	}
	
	public void setFilePath(String filePath) {
		this.filePath = filePath;
	}
	public void setName(String name) {
		this.name = name;
	}
	public void setSize(String size) {
		this.size = size;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public void setUpLoadTime(String upLoadTime) {
		this.upLoadTime = upLoadTime;
	}
	
}
