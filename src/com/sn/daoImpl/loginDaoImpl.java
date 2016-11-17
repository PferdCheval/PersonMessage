package com.sn.daoImpl;

import java.sql.*;

import com.sn.dao.loginDao;
import com.sn.model.User;
import com.sn.unit.conDB;

public class loginDaoImpl implements loginDao{

	private Connection conn=null;
	private PreparedStatement ps=null;
	private ResultSet rs=null;
	public boolean login(User user) {
		boolean b=false;
		conn = conDB.createConn();
		String sql = "select password from user where name='"+user.getName()+"'";
		System.out.println(sql);
		ps = conDB.prepare(conn, sql);
		try {
			rs = ps.executeQuery();
			if(rs.next())
			{
				if(user.getPassword().equals(rs.getString("password")))
				{
					b=true;
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		conDB.close(rs);
		conDB.close(ps);
		conDB.close(conn);
		return b;
	}
	
		public boolean register(User user) {
			
			conn = conDB.createConn();
			String sql = "insert into user values (null,'"+user.getName()+"','"+user.getPassword()+"','"+user.getTruename()+"','"+user.getSex()+"','"+user.getBirth()+"'," +
					"'"+user.getNation()+"','"+user.getEdu()+"','"+user.getWork()+"','"+user.getPhone()+"','"+user.getPlace()+"','"+user.getEmail()+"');";
			
			System.out.println(sql);
			ps = conDB.prepare(conn, sql);
			boolean b=conDB.affectRow(ps);
			conDB.close(conn);
			return b;
		}

		
		public User user(User user) {
			conn = conDB.createConn();
			String sql = "select * from user where name='"+user.getName()+"'";
			System.out.println(sql);
			ps = conDB.prepare(conn, sql);
			try {
				rs = ps.executeQuery();
				while(rs.next())
				{
					user=new User();
					user.setUserid(rs.getInt("userid"));
					user.setName(rs.getString("name"));
					user.setPassword(rs.getString("password"));
					user.setTruename(rs.getString("truename"));
					user.setSex(rs.getString("sex"));
					user.setBirth(rs.getString("birth"));
					user.setNation(rs.getString("nation"));
					user.setEdu(rs.getString("edu"));
					user.setWork(rs.getString("work"));
					user.setPhone(rs.getString("phone"));
					user.setEmail(rs.getString("email"));
					user.setPlace(rs.getString("place"));
					
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
			conDB.close(rs);
			conDB.close(ps);
			conDB.close(conn);
			return user;
		}
}
