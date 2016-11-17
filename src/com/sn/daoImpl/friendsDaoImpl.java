package com.sn.daoImpl;

import java.sql.*;
import java.util.ArrayList;

import com.sn.dao.friendsDao;
import com.sn.model.*;
import com.sn.unit.conDB;

public class friendsDaoImpl implements friendsDao{

	private Connection conn=null;
	private PreparedStatement ps=null;
	private ResultSet rs=null;
	 //查询总行数
    public int count(User user,String key) {
        int intRowCount = 0;//总行数
        conn = conDB.createConn();
        String sql = "select count(*) from friends where userid="+user.getUserid()+" and name like '%"+key.trim()+"%'";
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
    public ArrayList<Friends> info(User user, String key, int pageNow,int pageSize) {
		ArrayList<Friends> al=new ArrayList<Friends>();
		conn = conDB.createConn();
		String sql = "select * from friends where userid="+user.getUserid()+" and name like '%"+key.trim()+"%' limit "+(pageNow -1)*pageSize+","+pageSize ;
		ps = conDB.prepare(conn, sql);
		System.out.println(sql);
		try {
			rs = ps.executeQuery();
			while(rs.next())
			{
				Friends friend=new Friends();
				friend.setFriendid(rs.getInt("friendid"));
				friend.setName(rs.getString("name"));
				friend.setPhone(rs.getString("phone"));
				friend.setEmail(rs.getString("email"));
				friend.setWorkplace(rs.getString("workplace"));
				friend.setPlace(rs.getString("place"));
				friend.setQQ(rs.getString("QQ"));
				al.add(friend);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		conDB.close(rs);
		conDB.close(ps);
		conDB.close(conn);
		return al;
	}
    
	public boolean add(User user,Friends friend) {
		
		conn = conDB.createConn();
		String sql = "insert into friends values (null,"+user.getUserid()+",'"+friend.getName()+"','"+friend.getPhone()+"','"+friend.getEmail()+"','"+friend.getWorkplace()+"','"+friend.getPlace()+"','"+friend.getQQ()+"');";
		System.out.println(sql);
		ps = conDB.prepare(conn, sql);
		boolean b=conDB.affectRow(ps);
		conDB.close(conn);
		return b;
	}

	public boolean delete(Friends friend) {
		conn = conDB.createConn();
		String sql ="delete from friends where friendid="+friend.getFriendid();
		System.out.println(sql);
		ps = conDB.prepare(conn, sql);
		boolean b=conDB.affectRow(ps);
		conDB.close(conn);	
		return b;
	}


	
	public boolean upInfo(Friends friend) {
		conn = conDB.createConn();
		String sql ="update friends set name='"+friend.getName()+"', phone='"+friend.getPhone()+"',email='"+friend.getEmail()+"'," +
				"workplace='"+friend.getWorkplace()+"',place='"+friend.getPlace()+"',QQ='"+friend.getQQ()+"' where friendid="+friend.getFriendid();
		System.out.println(sql);
		ps = conDB.prepare(conn, sql);
		boolean b=conDB.affectRow(ps);
		conDB.close(conn);	
		return b;
	}
	
}
