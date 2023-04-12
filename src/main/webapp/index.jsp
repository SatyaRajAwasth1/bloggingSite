<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
    <%@ page import="np.com.esewa.learn.bloggingsite.utilities.ConnectionProvider" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Blogging Site</title>
<!--Bootstrap css-->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="ext/moreStyle.css" type="text/css">
    <style type="text/css">
    .banner-bg{
    clip-path: polygon(0 0, 100% 0, 99% 78%, 100% 91%, 90% 98%, 11% 93%, 0 100%, 1% 16%);
    }

    </style>
</head>
<body>

<!-- top navbar --> 
<%@include file="topNavbar.jsp" %>
      
<!-- Banner -->
<div class="container-fluid p-0 m-0 banner-bg">
<div class="jumbotron primary-background text-white">
<div class="container banner ">
<h3 class="display-4">Awesome, Learners</h3>
<h3 class="display-3">Welcome to MaStR</h3>
<p>A learners Home, complete Solution to all of the doubts & questionnaire within a domain. With a moto of serving students, teachers & public during their carrier. Guidance, motivation, inspiration, notes, solutions and service.</p>
<button class=" btn btn-outline-light btn-lg"><span class="fa fa-external-link fa-spin"></span> Start learning now</button>
<a href="login_page.jsp" class=" btn btn-outline-light btn-lg ln"><span class="fa fa-user-circle"></span> Login</a>
</div>
</div>
</div>
<!-- Banner end -->

<br/>
<!-- Cards -->
<div class="container">
<div class="row mb-3">

<div class="col-md-4">
<div class="card">
  <div class="card-body">
    <h5 class="card-title">Programming in C</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href="#" class="btn primary-background text-white">Read More</a>
  </div>
</div>
</div>

<div class="col-md-4">
<div class="card">
  <div class="card-body">
    <h5 class="card-title">OOPs with C++</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href="#" class="btn primary-background text-white">Read More</a>
  </div>
</div>
</div>

<div class="col-md-4">
<div class="card">
  <div class="card-body">
    <h5 class="card-title">Core Java</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href="#" class="btn primary-background text-white">Read More</a>
  </div>
</div>
</div>

</div>

<div class="row ">

<div class="col-md-4">
<div class="card">
  <div class="card-body">
    <h5 class="card-title">Advanced Java J2EE</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href="#" class="btn primary-background text-white">Read More</a>
  </div>
</div>
</div>

<div class="col-md-4">
<div class="card">
  <div class="card-body">
    <h5 class="card-title">Web Devlopment Static</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href="#" class="btn primary-background text-white">Read More</a>
  </div>
</div>
</div>

<div class="col-md-4">
<div class="card">
  <div class="card-body">
    <h5 class="card-title">Spring Framework</h5>
    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
    <a href="#" class="btn primary-background text-white">Read More</a>
  </div>
</div>
</div>

</div>

</div>

 <!-- jquery, popper and bootstrap js -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<script src="ext/moreScript.js"></script>
</body>
</html>