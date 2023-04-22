package np.com.esewa.learn.bloggingsite.posts.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import np.com.esewa.learn.bloggingsite.posts.dao.PostDao;
import np.com.esewa.learn.bloggingsite.posts.dao.PostDaoImpl;
import np.com.esewa.learn.bloggingsite.posts.entities.Post;
import np.com.esewa.learn.bloggingsite.user.dao.UserDao;
import np.com.esewa.learn.bloggingsite.user.entities.User;
import np.com.esewa.learn.bloggingsite.utilities.ConnectionProvider;

import java.io.IOException;
import java.io.PrintWriter;
import java.time.OffsetDateTime;

public class AddPostServlet extends HttpServlet {
    public AddPostServlet() {
        super();
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter display = response.getWriter();

        String postTitle = request.getParameter("postTitle");
        String postCategory = request.getParameter("postCategory");
        String postBody = request.getParameter("postBody");
        String [] postTags = new String[]{request.getParameter("postTags")};

        //Get user from session for author
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("currentUser");
        String author = user.getName();

        OffsetDateTime postedTime = OffsetDateTime.now();

        Post post = new Post( postTitle, postCategory, postBody, author, postTags);
        PostDao postDao = new PostDaoImpl(ConnectionProvider.connectDB());

        postDao.createPost(post);
    }
}
