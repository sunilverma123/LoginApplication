package com.dao;

import java.sql.Connection;

import com.database.DatabaseConnector;
import com.mysql.jdbc.ResultSet;
import com.mysql.jdbc.Statement;

public class UserDao 
{
	public static boolean userRegister(String name,String id,String pass,String city,String contact)
	{
		boolean flag = false;
		Connection con = null;
		Statement st = null;
		try
		{
		con = DatabaseConnector.databaseConnector();
			st = (Statement) con.createStatement();
		String sql = "insert into m_user(name,id,password,city,contact)values('"+name+"','"+id+"','"+pass+"','"+city+"','"+contact+"')";
				int n = st.executeUpdate(sql);
		        if(n!=0)
		        {
		        	flag = true;
		        }
		}
		        catch(Exception e)
		        {
		        	e.printStackTrace();
		        }
		        return flag;
	            }

   
	
 public static boolean userlogin(String uid,String upass)
 {
	 boolean flag = false;
	 Connection con = null;
	 Statement st = null;
	 try
	 {
		 con = DatabaseConnector.databaseConnector();
		 st = (Statement) con.createStatement();
	 String sql = "select * from m_user where id = '"+uid+"'and password = '"+upass+"'";
	 	ResultSet rs = (ResultSet) st.executeQuery(sql);
	 if(rs.next())
	 {
		 flag = true;
	 }
	 }
	 catch(Exception e)
	 {
		 e.printStackTrace();
	 }
	 return flag;		 
 }
	
  }

