package com.sn.unit;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class conDB {
	public static Connection createConn() {
		Connection conn = null;
		//
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/","root","mikejulietkilo");
			//conn = DriverManager.getConnection("jdbc:mysql://localhost/person?useUnicode=true&characterEncoding=UTF-8", "root", "mikejulietkilo");
			//System.out.println("连接数据库成功");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return conn;
	}

	public static PreparedStatement prepare(Connection conn, String sql) {
		PreparedStatement ps = null;
		try {
			ps = conn.prepareStatement(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return ps;
	}
	public static boolean affectRow(PreparedStatement ps)
	{
		boolean b=false;
		try {

			if(ps.executeUpdate()==1)
			{
				b=true;
			}	

		} catch (SQLException e) {
			e.printStackTrace();
		}
		conDB.close(ps);
		return b;
	}

	public static void close(Connection conn) {

		try {
			conn.close();
			conn = null;
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	public static void close(Statement stmt) {
		try {
			stmt.close();
			stmt = null;
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	public static void close(ResultSet rs) {
		try {
			rs.close();
			rs = null;
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}


