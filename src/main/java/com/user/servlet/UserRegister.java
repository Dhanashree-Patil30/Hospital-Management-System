package com.user.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.UserDao;
import com.db.DBconnect;
import com.entity.User;
@WebServlet("/user_register")
public class UserRegister extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws 
	ServletException, IOException {
		
		try {
			String fname=req.getParameter("fname");
			String uemail=req.getParameter("uemail");
			String upass=req.getParameter("upass");
			String umobile=req.getParameter("umobile"); 
			
			User u=new User(fname,uemail,upass,umobile);
			UserDao dao=new UserDao(DBconnect.getConn());
			
			HttpSession session =req.getSession();
			
			boolean f=dao.UserRegister(u);
			
			if(f) {
				session.setAttribute("sucMsg", "Register succefully");
				resp.sendRedirect("singup.jsp");
				
			}else {
				
				session.setAttribute("errorMsg", "somthing wrong on Submite");
				resp.sendRedirect("singup.jsp");
			}
			
		}catch(Exception e){
			
			e.printStackTrace();
			
		}
		
	}
	
	

}
