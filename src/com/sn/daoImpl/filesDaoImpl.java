package com.sn.daoImpl;

import java.io.File;
import java.sql.*;
import java.util.ArrayList;

import com.sn.dao.filesDao;
import com.sn.model.Files;
import com.sn.model.User;
import com.sn.unit.conDB;

public class filesDaoImpl implements filesDao{

	private Connection conn=null;
	private PreparedStatement ps=null;
	private ResultSet rs=null;
	 //查询总行数
	@Override
	public int count(User user, String key) {
		 int intRowCount = 0;//总行数
	        conn = conDB.createConn();
	        String sql = "select count(*) from file where userid='"+user.getUserid()+"' and title like '%"+key.trim()+"%'";
	        System.out.println(sql);
	        ps = conDB.prepare(conn, sql);
	        try
	        {            
	        	rs = ps.executeQuery();	            
	            rs.next();//游标指向第一行
	            intRowCount=rs.getInt(1);//取得总行数
	        }
	        catch(Exception e)
	        {
	            System.out.println(e) ;
	        }
	        conDB.close(rs);
			conDB.close(ps);
			conDB.close(conn);
	        return intRowCount;
	}
	@Override
	public ArrayList<Files> list(User user, String key, int pageNow,int pageSize) {
		ArrayList<Files> al=new ArrayList<Files>();
		conn = conDB.createConn();
		String sql = "select * from file where userid='"+user.getUserid()+"' and title like '%"+key.trim()+"%' order by upLoadTime desc,title desc limit "+(pageNow -1)*pageSize+","+pageSize ;
		ps = conDB.prepare(conn, sql);
		System.out.println(sql);
		try {
			rs = ps.executeQuery();
			while(rs.next())
			{
				Files file=new Files();
				file.setFileid(rs.getInt("fileid"));
				file.setTitle(rs.getString("title"));
				file.setName(rs.getString("name"));
				file.setContentType(rs.getString("contentType"));
				file.setSize(rs.getString("size"));
				file.setUpLoadTime(rs.getString("upLoadTime"));
				file.setFilePath(rs.getString("filePath"));
				al.add(file);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		conDB.close(rs);
		conDB.close(ps);
		conDB.close(conn);
		return al;
	}

	@Override
	public boolean upLoad(User user, Files file) {
		conn = conDB.createConn();
		String sql = "insert into file values (null,"+user.getUserid()+",'"+file.getTitle()+"','"+file.getName()+"','"+file.getContentType()+"','"+file.getSize()+"','"+file.getUpLoadTime()+"','"+file.getFilePath()+"');";
		System.out.println(sql);
		ps = conDB.prepare(conn, sql);
		boolean b=conDB.affectRow(ps);
		conDB.close(conn);
		return b;
	}
	@Override
	public boolean delete(Files file) {
		boolean b=false;
		//删除本地文件
		File f=new File(file.getFilePath()+file.getName());
		System.out.println(file.getFilePath()+file.getName());
		if(f.exists())
		{
			f.delete();
		}
		if(!f.exists())
		{
			conn = conDB.createConn();
			String sql ="delete from file where fileid="+file.getFileid();
			System.out.println(sql);
			ps = conDB.prepare(conn, sql);
			b=conDB.affectRow(ps);
			conDB.close(conn);
		}
		
		return b;
	}


	
}
