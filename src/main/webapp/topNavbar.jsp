<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!--Bootstrap css-->
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
            <li class="nav-item">
              <a class="nav-link" href="login_page.jsp"><span class="fa fa-user-circle fa-spin"></span> Login</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="register_page.jsp"><span class="fa fa-user-plus "></span> SignUp</a>
            </li>
          </ul>
          <form class="form-inline my-2 my-lg-0">
            <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
          </form>
        </div>
      </nav>
      
 <!-- jquery, popper and bootstrap js -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<script src="ext/moreScript.js"></script>
</body>
</html>