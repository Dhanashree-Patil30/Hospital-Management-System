<%@page import="com.entity.Specalist"%>
<%@page import="java.util.List"%>
<%@page import="com.db.DBconnect"%>
<%@page import="com.dao.SpecialistDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@page isELIgnored="false" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.paint-card{
  box-shadow: 0 0 10px 0 rgba(0,0,0,0.3);
}

</style>
<%@include file="../component/allcss.jsp" %>

</head>
<body>
<c:if test="${empty doctObj}">
  <c:redirect url="../DocterLog.jsp"></c:redirect>
 </c:if>
 
   <%@include file="navbar.jsp" %>
   
    <div class="container p-4">
    <div class="row">
     <div class="col-md-4">
       <div class="card paint-card">
          <p class="text-center fs-3">Change password</p>
          
          <c:if test="${not empty sucMsg }">
<p class="text-center text-success fs-3">${sucMsg}</p>
<c:remove var="sucMsg" scope="session"/>
</c:if>

<c:if test="${not empty errorMsg }">
<p class="text-center text-danger fs-5">${errorMsg}</p>
<c:remove var="errorMsg" scope="session"/>
</c:if>
          
          <div class="card-body">
             <form action="../doctChangepassword" method="post">
              <div class="mb-3">
                <label>Enter New Password</label>
                <input type="text" name="newPassword" class="form-control" required>
              </div>
              
              <div class="mb-3">
                <label>Enter Old Password</label>
                <input type="text" name="oldPassword" class="form-control" required>
              </div>
              
              <input type="hidden" value="${doctObj.id }" name="uid">
              
              <button class="btn btn-success col-md-12">Change password</button>
              
             </form>
          </div>
       </div>
     </div>
     
     <div class="col-md-5 offset-md-2">
        <div class="card paint-card">
        
    <p class="text-center fs-3">Edit Profile</p>      
        
      <c:if test="${not empty sucMsgd }">
<p class="text-center text-success fs-3">${sucMsgd}</p>
<c:remove var="sucMsgd" scope="session"/>
</c:if>

<c:if test="${not empty errorMsgd }">
<p class="text-center text-danger fs-5">${errorMsgd}</p>
<c:remove var="errorMsgd" scope="session"/>
</c:if>      
           
   <div class="card-body">      
  <form action="../doctorUpdateProfile" method="post">

<div class="mb-3">
<label class="form-label">Full name</label>
<input type="text" required name="fullName" class="form-control" value="${doctObj.fullName }">
</div>

<div class="mb-3">
<label class="form-label">DOB</label>
<input type="date" required name="dob" class="form-control" value="${doctObj.dob }">
</div>

<div class="mb-3">
<label class="form-label">Qualification</label>
<input type="text" required name="qualification" class="form-control" value="${doctObj.qualification }">
</div>

<div class="mb-3">
<label class="form-label">Specialist</label>
<select name="specialist" required class="form-control" >
<option>${doctObj.specialist }</option>
  <%  SpecialistDao dao=new SpecialistDao(DBconnect.getConn());
  List<Specalist> list=dao.getAllSpecialist();
  for(Specalist s:list)
  {%>
       <option><%=s.getSpecialistName()%></option>
  <%} 
  %>
</select>
</div>

<div class="mb-3">
<label class="form-label">Email</label><input type="text" readonly
 required name="email" class="form-control" value="${doctObj.email }">
</div>

<div class="mb-3">
<label class="form-label">Mob no</label>
<input type="text" required name="mobNo" class="form-control" value="${doctObj.mobNo }">
</div>


  <input type="hidden" name="id" value="${doctObj.id }">

<button type="submit" class="btn btn-primary">Update</button>
</form>
           
           </div>
        </div>
     </div>
     
    </div> 
  </div>


</body>
</html>