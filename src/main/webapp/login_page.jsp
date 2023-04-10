<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page errorPage="error_page.jsp" %>
    <%@ page import="np.com.esewa.learn.bloggingsite.entities.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login ~MaStR</title>
<!--Bootstrap css-->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="ext/moreStyle.css" type="text/css">
    
    <style>
    .banner-bg{
    clip-path: polygon(0 0, 100% 0, 99% 78%, 100% 91%, 90% 98%, 11% 93%, 0 100%, 1% 16%);
    }
    </style>
    
</head>
<body>

<!-- Navigation bar -->
<%@include file="topNavbar.jsp" %>

<main class="d-flex align-items-center primary-background banner-bg" style="height:75vh;">
<div class="container">
	<div class="row">
	  <div class="col-md-4 offset-md-4">
		<div class="card">
		<div class="card-header primary-background text-white text-center "><span class="fa fa-user-circle fa-2x"></span><br> Login MaStR
		</div>
		
		<%
		Message message = (np.com.esewa.learn.bloggingsite.entities.Message)session.getAttribute("msg");
		if (message!=null){
			%>
			<div class="alert <%= message.getCssClass() %>" role="alert">
			<%= message.getContent() %>
			 </div>
		<% 
		session.removeAttribute("msg");
		}
		%>
		
  		<div class="card-body">
    	<form action="LoginServlet" method="POST">
  <div class="form-group">
    <label for="exampleInputEmail1">Email address</label>
    <input type="email" name="email" required class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Password</label>
    <input type="password" name="password" required class="form-control" id="exampleInputPassword1">
  </div>
  <center>
   <button type="submit" class="btn btn-primary">Submit</button>
  </center>
</form>
  		</div>
		</div>
	 </div>
   </div>

</div>
</main>

 <!-- jquery, popper and bootstrap js -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<script src="ext/moreScript.js"></script>

</body>
</html>