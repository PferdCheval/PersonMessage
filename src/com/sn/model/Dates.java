package com.sn.model;

public class Dates {

	private int dateid;
	private String time;
	private String thing;
	private String note;
	public int getDateid() {
		return dateid;
	}
	public String getNote() {
		return note;
	}
	
	public String getThing() {
		return thing;
	}
	public String getTime() {
		return time;
	}
	public void setDateid(int dateid) {
		this.dateid = dateid;
	}
	public void setNote(String note) {
		this.note = note;
	}
	public void setThing(String thing) {
		this.thing = thing;
	}
	public void setTime(String time) {
		this.time = time;
	}

}
