<%@page import="com.db.DBconnect"%>
<%@page import="java.sql.Connection"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Index page</title>
<%@include file="component/allcss.jsp"%>

<style type="text/css">
.paint-card{
  box-shadow: 0 0 10px 0 rgba(0,0,0,0.3);
}
</style>


</head>
<body>
<%@include file="component/navbar.jsp" %>



<div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
  </div>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="img/img1.jpg" class="d-block w-100" alt="..." height="500px">
    </div>
    <div class="carousel-item">
      <img src="img/img2.jpg" class="d-block w-100" alt="..." height="500px">
    </div>
    <div class="carousel-item">
      <img src="img/img.jpg" class="d-block w-100" alt="..." height="500px">
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>
<div class="container p-3">
<p class="text-center fs-2">key Features of our Hospital</p>
<div class="row">
<div class="col-md-8 p-5">
<div class="row">
<div class="col-md-6">
<div class="card paint-card">
<div class="card-body">
<p class="fs-5">100% Safety</p>
<p>Patient Safety is a health care discipline that emerged with the evolving complexity in health 
care systems and the resulting rise of patient harm in health care facilities. </p>
</div>
</div>
</div>
<div class="col-md-6">
<div class="card paint-card">
<div class="card-body">
<p class="fs-5">Clean Environment</p>
<p>A cleanroom is designed to keep everything from dust, to airborne organisms, 
or vaporised particles, away from it, and so from whatever material is being handled inside it.
.</p>

</div>
</div>
</div>
<div class="col-md-6 mt-2">
<div class="card paint-card">
<div class="card-body">
<p class="fs-5">Friendly Doctors</p>
<p>Youth Friendly Doctors are doctors (usually General Practitioners) who have completed additional
 training and attended workshops in youth specific health issues.  </p>
</div>
</div>
</div>
<div class="col-md-6 mt-2">
<div class="card paint-card">
<div class="card-body">
<p class="fs-5">Medical Research</p>
<p>Search for new medical research articles. Find new medical research articles with us at findresultsnow.com.
 Find New Medical Research Articles. Find New Medical Research Articles </p>

</div>
</div>
</div>
</div>
</div>
<div class="col-md-4">
<img alt="" src="img/img5.jpg" height="350px" width="300px">
</div>
</div>
</div>

<hr>

<div class="container p-2">
<p class="text-center fs-2">Our Team</p>
<div class="row">



<div class="col-md-3">
<div class="card paint-card">
<div class="card-body text-center">
<img src="img/do1.jpg" width="220px" height="300px">
<p class="fw-bold fs-5"> Dr.Omkar Patil</p>
<p class="fw-7"> (Chief Docter)</p>
</div>
</div>
</div>

<div class="col-md-3">
<div class="card paint-card">
<div class="card-body text-center">
<img src="img/doc2.jpg" width="220px" height="300px">
<p class="fw-bold fs-5">Smita simi </p>
<p class="fw-7"> (CEO & Chairman))</p>
</div>
</div>
</div>

<div class="col-md-3">
<div class="card paint-card">
<div class="card-body text-center">
<img src="img/d2.jpg" width="220px" height="300px">
<p class="fw-bold fs-5">Dr.Shiv kumar </p>
<p class="fw-7"> (Chief Docter)</p>
</div>
</div>
</div>





<div class="col-md-3">
<div class="card paint-card">
<div class="card-body text-center">
<img src="img/d9.jpg" width="220px" height="300px">
<p class="fw-bold fs-5"> Sushmi sen</p>
<p class="fw-7"> (Chief Docter)</p>
</div>
</div>
</div>
</div>
</div>

<%@include file="component/footer.jsp" %>

</body>
</html>