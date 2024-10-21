package com.user.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.AppointmentDAO;
import com.db.DBconnect;
import com.entity.Appoinment;


@WebServlet("/appAppointment")
public class AppointmentServlet extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		int userId=Integer.parseInt(req.getParameter("userid"));
		String fullname=req.getParameter("fullname");
		String Gender=req.getParameter("gender");
		String age=req.getParameter("age");
		String appoinDate=req.getParameter("appoinDate");
		String email=req.getParameter("email");
		String phNo=req.getParameter("phNo");
		String diseases=req.getParameter("diseases");
		
		int doctorId=Integer.parseInt(req.getParameter("doctorId"));
		String address=req.getParameter("address");
	
		
		Appoinment ap=new Appoinment(userId,fullname,Gender,age,appoinDate,email,phNo,diseases,doctorId,
				address,"pending");
		AppointmentDAO dao=new AppointmentDAO(DBconnect.getConn());
		HttpSession session=req.getSession();
		
		if(dao.addAppointment(ap)) 
		{
			session.setAttribute("sucMsg", "Appointment Sucessfuly");
			resp.sendRedirect("user_appointment.jsp");
			
		}else {
			session.setAttribute("errorMsg", "Something wrong on server");
			resp.sendRedirect("user_appointment.jsp");
		}
	    		
	}
	

}













