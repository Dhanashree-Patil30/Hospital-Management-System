package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.entity.User;


public class UserDao {

	private Connection conn;

	public UserDao(Connection conn) {
		super();
		this.conn = conn;
	}
	public boolean UserRegister(User u)
	{
		boolean f=false;
		try {
			String sql="insert into user(fname,uemail,upass,umobile)values(?,?,?,?)";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, u.getFname());
			ps.setString(2, u.getUemail());
			ps.setString(3, u.getUpass());
			ps.setString(4, u.getUmobile());
			
			int i=ps.executeUpdate();
			if(i==1) {
				f=true;
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}
	
	public User login(String em,String psw) {
		User u=null;
		
		try {
			String sql="select * from user where uemail=? and upass=?";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, em);
			ps.setString(2, psw);
			ResultSet rs= ps.executeQuery();
			
			while(rs.next()) {
				u=new User();
				u.setId(rs.getInt(1));
				u.setFname(rs.getString(2));
				u.setUemail(rs.getString(3));
				u.setUmobile(rs.getString(4));
				u.setUpass(rs.getString(5));
				
				
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return u;
	}
	
  public boolean checkOldPassword(int userid,String oldPassword) {
	  boolean f=false;
	  
	  try {
		  String sql = "select * from user where id=? and upass=?";
		  PreparedStatement ps=conn.prepareStatement(sql);
		  ps.setInt(1, userid);
		  ps.setString(2, oldPassword);
		  
		  ResultSet rs=ps.executeQuery();
		  while(rs.next())
		  {
			  f = true;
		  }
		  
		  
	  }catch(Exception e) {
		  e.printStackTrace();
	  }
	  return f;
  }
  
  
  public boolean changePassword(int userid,String newPassword) {
	  boolean f=false;
	  
	  try {
		  String sql = "update user set upass=? where id=?";
		  PreparedStatement ps=conn.prepareStatement(sql);
		  ps.setString(1, newPassword);
		  ps.setInt(2, userid);
		  
		  int i=ps.executeUpdate();
		  if(i ==1 ) {
			  f = true;
		  }
		  
		  
	  }catch(Exception e) {
		  e.printStackTrace();
	  }
	  return f;
  }
  
  
	
}









