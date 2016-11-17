package com.sn.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;

import com.sn.tool.myFilesAction;

public class filesAction extends myFilesAction{

	private static final long serialVersionUID = 1L;
	private String contentDisposition;
	private long contentLength;
	private InputStream inputStream;
	
	private File upLoad;
	private String upLoadContentType;
	private String upLoadFileName;
	
	public String delete() throws Exception{
		if(fdi.delete(file))
		{
			return "delete";
		}else
		{
			return "delete_fail";
		}
	}
	public String downLoad() throws Exception {

		//确定各个成员变量的值
		new String(file.getName().getBytes(), "ISO8859-1");

		contentDisposition = "attachment;filename="+new String(file.getName().getBytes(), "ISO8859-1");
		String fileName = file.getFilePath()+file.getName();
		System.out.println(fileName);
		inputStream = new FileInputStream(fileName);
		contentLength = inputStream.available();
		
		return SUCCESS;
	}
	
	public String list() throws Exception{
		
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
		al=fdi.list(user,key,pageNow,pageSize);	
		return "list";	
	}

	public String upLoad() throws Exception{
		String realpath =ServletActionContext.getServletContext().getRealPath("/upLoadFiles");//"E:/upload";
		System.out.println("真实路径："+realpath);

		if(upLoad!=null){
			File savefile = new File(new File(realpath), upLoadFileName);
			if(!savefile.getParentFile().exists()) savefile.getParentFile().mkdirs();
			FileUtils.copyFile(upLoad, savefile);
			String size=null;
	        DecimalFormat dcmFmt = new DecimalFormat("0.00");
	        float length=this.getUpLoad().length();
	        if(length<1024){
	            size=(dcmFmt.format(length))+"字节";
	        }else if(length<1024*1024){
	            size=(dcmFmt.format(length/1024))+"K";
	        }else{
	            size=(dcmFmt.format(length/(1024*1024)))+"M";
	        }
	        String nowPath=realpath+"\\";
	        Date d=new Date();
	        SimpleDateFormat bartDateFormat =new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
	        file.setUpLoadTime(bartDateFormat.format(d));
	        file.setName(upLoadFileName);
			file.setContentType(upLoadContentType);
			file.setSize(size);
			file.setFilePath(nowPath.replaceAll("\\\\", "\\\\\\\\"));
			
		}
		if(fdi.upLoad(user, file))
		{
			return "upLoad";
		}else
		{
			return "no";
		}
	}
	
	
	public String getContentDisposition() {
		return contentDisposition;
	}
	public long getContentLength() {
		return contentLength;
	}
	
	public InputStream getInputStream() {
		return inputStream;
	}
	public File getUpLoad() {
		return upLoad;
	}
	public String getUpLoadContentType() {
		return upLoadContentType;
	}
	public String getUpLoadFileName() {
		return upLoadFileName;
	}
	public void setUpLoad(File upLoad) {
		this.upLoad = upLoad;
	}
	public void setUpLoadContentType(String upLoadContentType) {
		this.upLoadContentType = upLoadContentType;
	}
	public void setUpLoadFileName(String upLoadFileName) {
		this.upLoadFileName = upLoadFileName;
	}
}
