package com.doctor.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.DoctorDao;
import com.db.DBconnect;
import com.entity.Doctor;

@WebServlet("/doctorUpdateProfile")
public class EditProfile extends HttpServlet {
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			String fullName=req.getParameter("fullName");
			String dob=req.getParameter("dob");
			String qualification=req.getParameter("qualification");
			String specialist=req.getParameter("specialist");
			String email=req.getParameter("email");
			String mobNo=req.getParameter("mobNo");
			
			int id=Integer.parseInt(req.getParameter("id"));
			
			
			Doctor d=new Doctor(id,fullName,dob,qualification,specialist,email,mobNo,"");
			DoctorDao dao=new DoctorDao(DBconnect.getConn());
			HttpSession session=req.getSession();
			
			if(dao.editDoctorProfile(d))
			{
				 Doctor updateDoctor=dao.getDoctorById(id);
				session.setAttribute("sucMsgd", "Doctor Update Sucessfully..");
		        session.setAttribute("doctObj",updateDoctor);
				resp.sendRedirect("doctor/edit_profile.jsp");
			}else {
				session.setAttribute("errorMsgd", "Something wrong on server..");
				resp.sendRedirect("doctor/edit_profile.jsp");
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

	}
	
	


