
package com.user;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.UserDao;

public class UserLogin  extends HttpServlet
{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String uname = req.getParameter("uname");
		String uid = req.getParameter("uid");
		String upass = req.getParameter("upass");
		String cityname = req.getParameter("ucity");
		String mob = req.getParameter("ucontact");
		System.out.println("user name is :"+uname);
		System.out.println("user id is :"+uid);
		System.out.println("user password is :"+upass);
		System.out.println("user cityname is :"+cityname);
		System.out.println("user mobile is :"+mob);
		
		boolean flag = UserDao.userRegister(uname, uid, upass, cityname, mob);
		if(flag)
		{
			RequestDispatcher rd = req.getRequestDispatcher("index.jsp?no=4");
			rd.forward(req, resp);
		}
		else
		{
			RequestDispatcher rd = req.getRequestDispatcher("usersignup1.jsp?no=3");
			rd.forward(req, resp);
		}
		
		
	}

}