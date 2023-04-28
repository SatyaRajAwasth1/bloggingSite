<%--
  User: satya
  Date: 4/19/23
  Time: 10:58 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ page import= "np.com.esewa.learn.bloggingsite.user.entities.*"%>
<%@ page import="np.com.esewa.learn.bloggingsite.user.entities.User" %>
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
    <title>Write a New Blog Post</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="ext/moreStyle.css" type="text/css">
    <%--    link for editor --%>
    <script src="https://cdn.ckeditor.com/4.21.0/standard/ckeditor.js"></script>
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
                <a class="nav-link" href="#"><span class="fa fa-home"></span> Home </a>
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
<%-- Navigation bar ends --%>
<%--Form for Writing Blog--%>
<form action="AddPostServlet" name="add-blog-form" method="post" onsubmit="validate()">
    <div class="form-group">
        <label for="postTitle">Post Title</label>
        <input type="text" class="form-control" id="postTitle" placeholder="your blog post title">
    </div>
    <div class="form-group">
        <label for="postCategory">Select Category of Blog</label>
        <select class="form-control" id="postCategory" name="postCategory">
            <option value="tutorial">Tutorial</option>
            <option value="error">Error</option>
            <option value="question">Question</option>
            <option value="sale">Sale</option>
            <option value="enjoy">Enjoy</option>
        </select>
    </div>
    <div class="form-group">
        <label for="postBody">Blog Post Body</label>
        <textarea class="form-control" name="postBody" id="postBody" rows="30"></textarea>
    </div>
    <button type="submit" class="btn btn-primary">Add Post</button>
</form>
<%--Script for postBody--%>
<script>
    CKEDITOR.replace( 'postBody' );
</script>
</body>
</html>
