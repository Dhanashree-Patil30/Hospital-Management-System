<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User login</title>

<%@include file="component/allcss.jsp"%>
<style type="text/css">
.point-card{
box-shadow:0 0 10px 0 rgba(0,0,0,0.3);
}
</style>
</head>
<body>

<%@include file="component/navbar.jsp" %>




<div class="container p-5">
<div class="row">
<div class="col-md-4 offset-md-4">
<div class="card point-card">
<div class="card-body">
<p class="fs-4 text-center">User Login</p>

<c:if test="${not empty sucMsg }">
<p class="text-center text-success fs-3">${sucMsg}</p>
<c:remove var="sucMsg" scope="session"/>
</c:if>

<c:if test="${not empty errorMsg }">
<p class="text-center text-danger fs-5">${errorMsg}</p>
<c:remove var="errorMsg" scope="session"/>
</c:if>

<form action="userLogin" method="post">
<div class="mb-3">
<lable class="form-lable">Email Address</lable>
<input name="uemail" type="Email" class="form-control" required></input>
</div>

<div class="mb-3">
<lable class="form-lable">Password</lable>
<input name="upass" type="Password" class="form-control" required></input>
</div>
<button type="submit" class="btn bg-success text-white col-md-12">Login</button>

</form>

<br>
Don't have in account <a href="singup.jsp" class="text-decoration-none"> Create one</a>

</div>
</div>

</div>
</div>
</div>




</body>
</html>