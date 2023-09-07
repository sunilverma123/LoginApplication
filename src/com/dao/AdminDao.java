package com.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import com.database.DatabaseConnector;

public class AdminDao
{
	public static boolean admilogin(String aid,String apass)
	{
		boolean flag = false;
		Connection con = null;
		Statement st = null;
		try
		{
			con = DatabaseConnector.databaseConnector();
			st = con.createStatement();
			String sql = "Select * from m_admin where id = '"+aid+"'and password = '"+apass+"'";
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
