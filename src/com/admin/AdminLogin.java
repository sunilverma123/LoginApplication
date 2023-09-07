package com.admin;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.AdminDao;

public class AdminLogin extends HttpServlet 
{
   @Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	// TODO Auto-generated method stub
	String aid = req.getParameter("aid");
	String apass = req.getParameter("apass");
	System.out.println("admin id is:"+aid);
	System.out.println("admin password is :"+apass); 
	boolean flag = AdminDao.admilogin(aid, apass);
	if(flag)
	{
		RequestDispatcher rd = req.getRequestDispatcher("adminhome.jsp");
		rd.forward(req, resp);
	}
	else
	{
		RequestDispatcher rd = req.getRequestDispatcher("adminlogin.jsp");
		rd.forward(req, resp);
	}
	
}
}
