package com.sn.daoImpl;

import java.sql.*;

import com.sn.dao.personalDao;
import com.sn.model.User;
import com.sn.unit.conDB;

public class personalDaoImpl implements personalDao{

	private Connection conn=null;
	private PreparedStatement ps=null;

	public boolean upInfo(User user) {
		conn = conDB.createConn();
		String sql ="update user set truename='"+user.getTruename()+"',sex='"+user.getSex()+"',birth='"+user.getBirth()+"'," +
				"nation='"+user.getNation()+"',edu='"+user.getEdu()+"',work='"+user.getWork()+"',phone='"+user.getPhone()+"',place='"+user.getPlace()+"',email='"+user.getEmail()+"' where userid="+user.getUserid();
		
		System.out.println(sql);
		ps = conDB.prepare(conn, sql);
		boolean b=conDB.affectRow(ps);
		conDB.close(conn);	
		return b;
		
	}

	public boolean upPassword(User user,String oldPassword,String newPassword) {
		boolean b=false;
		
		if(oldPassword.equals(user.getPassword()))
		{
			conn = conDB.createConn();
			String sql ="update user set password='"+newPassword+"' where userid="+user.getUserid();
			System.out.println(sql);
			ps = conDB.prepare(conn, sql);
			b=conDB.affectRow(ps);
			conDB.close(conn);	
		}
		return b;
	}

}
