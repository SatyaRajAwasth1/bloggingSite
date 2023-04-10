package np.com.esewa.learn.bloggingsite.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;

import np.com.esewa.learn.bloggingsite.dao.UserDao;
import np.com.esewa.learn.bloggingsite.entities.Message;
import np.com.esewa.learn.bloggingsite.entities.User;
import np.com.esewa.learn.bloggingsite.utilities.ConnectionProvider;

/**
 * Servlet implementation class Login
 */
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public LoginServlet() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/HTML");
	PrintWriter display = 	response.getWriter();

	// getting userEmail and Password from login.jsp
	String userEmail = request.getParameter("email");
	String userPassword = request.getParameter("password");
	
	//validating user credits
	UserDao dao = new UserDao(ConnectionProvider.connectDB());
	User user = dao.getUserByEmailPassword(userEmail, userPassword);
	
	if(user!=null) {
		// user email password match
		HttpSession session = request.getSession();
		session.setAttribute("currentUser", user);
		response.sendRedirect("profile.jsp");
	}
	else {
		// error in login password or email mismatch.
		Message msg = new Message("Wrong credentials! Either username or password wrong. Try again...","error","alert-danger");
		HttpSession session = request.getSession();
		session.setAttribute("msg",msg);
		
		response.sendRedirect("login_page.jsp");
	}

	}

}
