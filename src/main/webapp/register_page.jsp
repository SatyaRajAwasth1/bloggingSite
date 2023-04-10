<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Become a valuable Heart ~MaStR</title>
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

<main class=" primary-background banner-bg" style="padding-bottom:80; height:80vh;">
<div class="container">
	<div class="row">
	  <div class="col-md-6 offset-md-3">
		<div class="card">
		<div class="card-header primary-background text-white text-center "><span class="fa fa-user-plus fa-2x"></span><br> Register to be in</div>
  		<div class="card-body">
 
<form action="RegisterServlet" method="POST" id="reg-form">
  <div class="form-group">
  <label for="user_name">User Name</label>
    <input type="text" class="form-control" name="userName" required aria-describedby="textHelp" placeholder="Enter username">
    <label for="user_name">Email address</label>
    <input type="email" class="form-control" required name="email" aria-describedby="emailHelp" placeholder="Enter email">
    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
  </div>
  
  <div class="form-group">
    <label for="exampleInputPassword1">Password</label>
    <input type="password" class="form-control" required name="password" placeholder="Password">
  </div>
  
  <div class="form-group">
  <label for="gender">Select Gender</label> <br>
  <input type="radio" name="gender" id="gender" value="male">  Male 
  <input type="radio" name="gender" id="gender" value="female">  Female
</div>

<div class="form-group">
<textarea name="about" placeholder="Something about yours"  rows="1" id="about" class="form-control"></textarea>
</div>

  <div class="form-check">
    <input name="cond" type="checkbox" class="form-check-input" id="exampleCheck1">
    <label class="form-check-label" for="exampleCheck1">Agree terms and conditions.</label> 
  </div>
 <div class="container text-center" style="display:none;" id="loader">
 <span class="fa fa-refresh fa-spin fa-3x"> </span> 
 <h5>please wait, its registering...</h5>
  </div>
 <br>
 <div class="form-submit text-center">
 <button type="submit" class="btn btn-primary" id="reg-btn"> Register </button>
 </div>
</form>
  		</div>
  	
		</div>
	 </div>
   </div>

</div>
</main>

 <!-- jquery, popper and bootstrap js -->
 <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script> <!-- Sweet alert for popup signup and login  -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<script src="ext/moreScript.js"></script>

<script>
$(document).ready(function() {
	console.log("loaded")
	$('#reg-form').on('submit',function(event) {
	event.preventDefault();
	let form= new FormData(this);
	
	$("#reg-btn").hide();
	$("#loader").show();
	
	//send form data to Register Servlet using AJAX without going to servlet as default.
	$.ajax({
		url: "RegisterServlet",
		type: 'POST',
		data: form,
		success: function(data,textStatus,jqXHR){
		console.log(data);	
		
		$("#reg-btn").show();
		$("#loader").hide();
		
		if(data.trim() === "registered") {
		swal("You have been successfully registered. Use your Email address and Password to login.")
		.then((value) => {
		  window.location="login_page.jsp";
		});
				
		}
		else {
			swal(data);
		}
			
		},
		error: function(jqXHR,textStatus,errorThrown){
			console.log(jqXHR);
			swal("couldn't register..try aagain");
			$("#reg-btn").show();
			$("#loader").hide();
			
		},
		processData: false,
		contentType: false
	});
	
	});
	
});
</script>
</body>
</html>