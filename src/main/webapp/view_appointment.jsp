<%@page import="com.entity.User"%>
<%@page import="com.entity.Doctor"%>
<%@page import="com.dao.DoctorDao"%>
<%@page import="com.entity.Appoinment"%>
<%@page import="java.util.List"%>
<%@page import="com.db.DBconnect"%>
<%@page import="com.dao.AppointmentDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="component/allcss.jsp"%>
<style type="text/css">
.point-card{
box-shadow:0 0 10px 0 rgba(0,0,0,0.3);
}


.backImg{
  background:Linear-gradient(rgba(0,0,0,.4), rgba(0,0,0,.4)),
  url("img/hos1.jpg");
   
   height:20vh;
   width:10%0;
   background-size:cover;
   background-repeat:no-repeat; 

}

</style>

</head>
<body>
<%@include file="component/navbar.jsp" %>
<c:if test="${empty userObj }">
     <c:redirect url="UserLog.jsp"></c:redirect>
   </c:if>


  <div class="cantainer-fulid backImg p-5">
  <p class="fs-2 text-center text-white"></p>
  </div>
  
  <div class="container p-3">
  <div class="row">
  <div class="col-md-9">
  <div class="card point-card">
  <div class="card-body">
  <p class="fs-4 fw-bold text-center text-success">Appointment List</p>
  <table class="table">
  <thead>
  <tr>
    <th scope="col">Full Name</th>
    <th scope="col">Gender</th>
    <th scope="col">Age</th>
    <th scope="col">Appointment Date</th>
    <th scope="col">Diseases</th>
     <th scope="col">Doctor Name</th>
     <th scope="col">Status</th> 
  </tr>
  </thead>
  <tbody>
  
  <%
  User user=(User) session.getAttribute("userObj");
  AppointmentDAO dao=new AppointmentDAO(DBconnect.getConn());
  DoctorDao dao2=new DoctorDao(DBconnect.getConn());
  List<Appoinment> list=dao.getAllAppoinmentByLoginUser(user.getId());
  for(Appoinment ap:list){
	  Doctor d=dao2.getDoctorById(ap.getDoctorId());
  
  %>
  
  <tr>
    <th><%=ap.getFullname() %></th>
    <td><%=ap.getGender() %></td>
    <td><%=ap.getAge() %></td>
    <td><%=ap.getAppoinDate() %></td>
    
    <td><%=ap.getDiseases() %></td>
    <td><%=d.getFullName() %></td>
    <td>
    <% if("pending".equals(ap.getStatus())){%>
       <a href="#" class="btn btn-sm btn-warning">Pending</a>
    	
    <%
    }else{
    %><%=ap.getStatus() %>
    	
    	<%
    	}
    %>
    	
    
    </td>
  </tr>
  
  <%
  } 
  
  %>
  
  
  
  
  </tbody>
  </table>
  </div>
  </div>
  </div>
  
  <div class="col-md-3 p-3">
    <img alt="" src="img/img10.jpg" width="280px" >
  </div>
  
  </div>
  
  </div>
  
</body>
</html>