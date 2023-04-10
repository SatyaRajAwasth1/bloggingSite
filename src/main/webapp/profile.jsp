<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import= "np.com.esewa.learn.bloggingsite.entities.*"%>
    <%@ page errorPage="error_page.jsp" %>
    <% 
    User user = (User) session.getAttribute("currentUser");
    if (user==null){
    	response.sendRedirect("login_page.jsp");
    }
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>profile - <%= user.getName() %> </title>
<!--Bootstrap css-->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="ext/moreStyle.css" type="text/css">
</head>
<body>
<!-- top Navigation Bar -->
<nav class="navbar navbar-expand-lg navbar-dark primary-background">
        <a class="navbar-brand" href="#"><img src="img/newLogo.jpeg" width="30" height="30" class="d-inline-block align-top" alt="">MaStR</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
      
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
              <a class="nav-link" href="index.jsp"><span class="fa fa-home"></span> Home </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#"><span class="fa fa-info-circle"></span> About Us</a>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <span class="fa fa-book"></span> Tutorials
              </a>
              <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                <a class="dropdown-item" href="#">C programming </a>
                <a class="dropdown-item" href="#">Java Programming</a>              
                <a class="dropdown-item" href="#">Web</a>
              </div>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#"><span class="fa fa-phone"></span> Contact Us</a>
            </li>
          </ul>
          <ul class="navbar-nav mr-right">
          <li class="nav-item">
              <a class="nav-link" href="#!" data-toggle="modal" data-target="#profile-detail-modal"> <span class="fa fa-user-circle"></span> <%= user.getName() %> </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="LogoutServlet"><span class="fa fa-user-times"></span> Logout</a>
            </li>
          </ul>
        </div>
      </nav>
      <!--  creating a profile modal to show user details and update profile details -->
<!-- Modal -->
<div class="modal fade" id="profile-detail-modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content ">
      <div class="modal-header primary-background text-white"> MaStR
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
            <div class="container text-center">
            <img src = "img/profImg/<%= user.getProfile() %>" class = "img-fluid " style = "border-radius: 50%;  max-width:150px;"/>
      <h5 class="modal-title" id="exampleModalLongTitle"> <%= user.getName() %>  </h5>
      <!-- showing details using table... -->
      <div id="profile-detail">
      <table class="table table-striped">
  <tbody>
    <tr>
      <th scope="row">User Id:</th>
      <td> <%= user.getId() %> </td>
    </tr>
    
    <tr>
      <th scope="row">Name:</th>
      <td><%= user.getName() %> </td>
    </tr>
    
     <tr>
      <th scope="row">Email:</th>
      <td><%= user.getEmail() %> </td>
    </tr>
     <tr>
      <th scope="row">Gender:</th>
      <td><%= user.getGender() %> </td>
    </tr>
     <tr>
      <th scope="row">About:</th>
      <td><%= user.getAbout() %> </td>
    </tr>
     <tr>
      <th scope="row">Registered Date:</th>
      <td><%= user.getRegdate() %> </td>
    </tr>
  </tbody>
</table>
</div>
     <!-- editing profile -->
     <div id="edit-profile" style="display: none;">  
          <h3 class="text-center mt-2"> Edit your profile </h3>
          <form action="UpdateServlet" method = "post" enctype="multipart/form-data">
          <table class = "table table-striped">
          <tr>
      <th scope="row">User Id:</th>
      <td> <%= user.getId() %> </td>
      </tr>
      <tr>
      <th scope="row">Email:</th>
      <td> <input type="email" class="form-control" name = "userEmail" value="<%= user.getEmail()%>"> </td>
    </tr>
      <tr>
      <th scope="row">Password:</th>
      <td> <input type="password" class="form-control" name = "userPassword" value="<%= user.getPassword()%>"> </td>
    </tr>
      <tr>
      <th scope="row">Name:</th> 
      <td> <input type="text" class="form-control" name = "userName" value="<%= user.getName()%>"> </td>
    </tr>
    
    <tr>
      <th scope="row">About:</th>
      <td> <textarea name="about" class = "form-control" rows="1" id="about"  value="<%= user.getAbout()%>">  </textarea></td>
    </tr>
      <tr>
      <th scope="row">Gender:</th>
      <td><%= user.getGender().toUpperCase() %> </td>
    </tr>
    <tr>
    <th scope="row">Profile Pic</th>
    <td> <input type="file" name="profilePic"/> </td>
    </tr>
          </table>
          <div class="container">
          <button type="submit" class="btn btn-success" >Save</button>
          </div>
          </form>
     </div>
    
      </div>
        
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary" id="edit-details-button">Edit Details</button>
      </div>
    </div>
  </div>
</div>
      
      
 <!-- jquery, popper and bootstrap js -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<script src="ext/moreScript.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	let editStatus = false;
	$('#edit-details-button').click(function(){
		if(editStatus==false){
			$('#profile-detail').hide()
			$('#edit-profile').show();
			$(this).text("Back")
			editStatus = true;
		}
		else {
			$('#profile-detail').show()
			$('#edit-profile').hide();
			$(this).text("Edit Details")
			editStatus = false;
		}
		
	})
});
</script>
</body>
</html>