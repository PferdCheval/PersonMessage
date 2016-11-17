package com.sn.daoImpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.sn.dao.datesDao;
import com.sn.model.Dates;
import com.sn.model.User;
import com.sn.unit.conDB;

public class datesDaoImpl implements datesDao{

	private Connection conn=null;
	private PreparedStatement ps=null;
	private ResultSet rs=null;
	 //查询总行数
	@Override
	public int count(User user, String key) {
		 int intRowCount = 0;//总行数
	        conn = conDB.createConn();
	        String sql = "select count(*) from date where userid="+user.getUserid()+" and time like '%"+key.trim()+"%'";
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
	public ArrayList<Dates> info(User user, String key, int pageNow,int pageSize) {
		ArrayList<Dates> al=new ArrayList<Dates>();
		conn = conDB.createConn();
		String sql = "select * from date where userid="+user.getUserid()+" and time like '%"+key.trim()+"%' order by time asc limit "+(pageNow -1)*pageSize+","+pageSize ;
		ps = conDB.prepare(conn, sql);
		System.out.println(sql);
		try {
			rs = ps.executeQuery();
			while(rs.next())
			{
				Dates date=new Dates();
				date.setDateid(rs.getInt("dateid"));
				date.setTime(rs.getString("time"));
				date.setThing(rs.getString("thing"));
				date.setNote(rs.getString("note"));
				al.add(date);
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
	public boolean add(User user, Dates date) {
		conn = conDB.createConn();
		String sql = "insert into date values (null,"+user.getUserid()+",'"+date.getTime()+"','"+date.getThing()+"','"+date.getNote()+"');";
		System.out.println(sql);
		ps = conDB.prepare(conn, sql);
		boolean b=conDB.affectRow(ps);
		conDB.close(conn);
		return b;
	}
	@Override
	public boolean delete(Dates date) {
		conn = conDB.createConn();
		String sql ="delete from date where dateid="+date.getDateid();
		System.out.println(sql);
		ps = conDB.prepare(conn, sql);
		boolean b=conDB.affectRow(ps);
		conDB.close(conn);	
		return b;
	}
	@Override
	public boolean upInfo(Dates date) {
		conn = conDB.createConn();
		String sql ="update date set time='"+date.getTime()+"',thing='"+date.getThing()+"',note='"+date.getNote()+"' where dateid="+date.getDateid();
		System.out.println(sql);
		ps = conDB.prepare(conn, sql);
		boolean b=conDB.affectRow(ps);
		conDB.close(conn);	
		return b;
	}

	
	
}
