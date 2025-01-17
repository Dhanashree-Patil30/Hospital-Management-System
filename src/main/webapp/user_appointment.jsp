<%@page import="com.db.DBconnect"%>
<%@page import="com.dao.DoctorDao"%>
<% 
response.setHeader("Cache-Control", "no-Cache");
response.setHeader("Cache-Control", "no-store");
response.setHeader("Pragma", "no-Cache");
response.setDateHeader("Expires", 0);
%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

 <%@page isELIgnored="false" %>
  <%@page import="com.entity.Doctor" %>
   <%@page import="java.util.List" %>
 
 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User Appoinment</title>
<%@include file="component/allcss.jsp"%>

<style type="text/css">
.paint-card{
  box-shadow: 0 0 8px 0 rgba(0,0,0,0.3);
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
     <div class="container-fulid backImg p-5">
        <p class="text-center fs-2 text-white"></p>
     </div>
     <div class="container p-3">
       <div class="row">
          <div class="col-md-6 p-5">
              <img alt="" src="img/img10.jpg" width="300px" >
          </div>
          
          <div class="col-md-6">
           <div class="card paint-card">
           <div class="card-body">
             <p class="text-center fs-3">User Appointment</p>
             <c:if test="${not empty errorMsg }">
               <p class="fs-4 text-center text-danger"> ${errorMsg}</p>
             <!--  <:remove var="errorMsg" scope="session" />  --> 
             </c:if>
            
             <c:if test="${not empty sucMsg }">
               <p class="fs-4 text-center text-success"> ${sucMsg}</p>
              <!-- <:remove var="sucMsg" scope="session" /> --> 
             </c:if>
             <form class="row g-3" action="appAppointment" method="post">
               <input  type="hidden" name="userid" value="${userObj.id }">
               
             <div class="col-md-6">
             <lable for="inputEmail4" class="form-lable">Full Name</lable>
              <input  required name="fullname" type="text" class="form-control" ></input>
             </div>
             
             <div class="col-md-6">
             <label>Gender</label>
             <select class="form-control" name="gender" required>
               <option value="male">Male</option>
               <option value="female">Female</option>
             </select>
             </div>
             
             <div class="col-md-6">
             <lable for="inputEmail4" class="form-lable">Age</lable>
              <input name="age" type="number" class="form-control" required ></input>
             </div>
             
             <div class="col-md-6">
             <lable for="inputEmail4" class="form-lable">Appointment Date</lable>
              <input name="appoinDate" type="date" class="form-control" required ></input>
             </div>
             
             <div class="col-md-6">
             <lable for="inputEmail4" class="form-lable">Email</lable>
              <input name="email" type="email" class="form-control" required ></input>
             </div>
             
             <div class="col-md-6">
             <lable for="inputEmail4" class="form-lable">Phone No</lable>
              <input maxlength="10" name="phNo" type="number" class="form-control" required ></input>
             </div>
             
             <div class="col-md-6">
             <lable for="inputEmail4" class="form-lable">Diseases</lable>
              <input name="diseases" type="text" class="form-control"  required ></input>
             </div>
             
             
             <div class="col-md-6">
             <lable for="inputPassword4" class="form-lable">Doctor</lable>
             <select class="form-control" name="doctorId" required >
               <option value=" ">--select--</option>
               
               <%
               DoctorDao dao=new DoctorDao(DBconnect.getConn());
            		 List<Doctor>list=dao.getAllDoctor();
            		 for(Doctor d : list){
            			 %>
            			 <option value="<%=d.getId()%>"><%=d.getFullName()%> (<%=d.getSpecialist()%>)
            			 </option>
            			 <% 
            		 }
               %>
               
               
              
             </select>
             </div>
             
             <div class="col-md-12">
             <lable>Full Address</lable>
             <textarea  required name="address"  class="form-control" rows="3" cols=""></textarea>
             </div>
             
              <c:if test="${empty userObj }">
               <a href="UserLog.jsp" class="col-md-6 offset-md-3 btn btn-success">Submit</a>
             </c:if>
             
             <c:if test="${not empty userObj }">
               
                <button  class="col-md-6 offset-md-3 btn btn-success">Submit</button>
             </c:if>
             
             </form>
            
           </div>
           </div>
          </div>
       
       </div> 
     </div>
     <%@include file="component/footer.jsp" %>
</body>

























</html>