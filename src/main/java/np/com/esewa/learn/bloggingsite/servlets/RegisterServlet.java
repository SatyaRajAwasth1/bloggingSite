package np.com.esewa.learn.bloggingsite.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

import np.com.esewa.learn.bloggingsite.dao.UserDao;
import np.com.esewa.learn.bloggingsite.entities.User;
import np.com.esewa.learn.bloggingsite.utilities.ConnectionProvider;

/**
 * Servlet implementation class RegisterServlet
 */
@MultipartConfig
public class RegisterServlet extends HttpServlet {
	
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter display = response.getWriter();
		
		String name = request.getParameter("userName");
		String email = request.getParameter("email");
		String password=request.getParameter("password");
		String cond = request.getParameter("cond");
		String about = request.getParameter("about");
		String gender = request.getParameter("gender");
		
		User user=new User(name, email, password, gender, about);
		UserDao dao= new UserDao(ConnectionProvider.connectDB());
		if(cond!=null) {
			if(cond.equals("on")) {
			if(dao.insertUser(user)) {
				display.println("registered");
			}
			else {
				display.println("Sorry! couldn't register. Please try again.");
			}
			
			}
			
		}
		
		else {
			display.println("Sorry, accept the terms and conditions.");
		}
	}

	//fetch all data from form i.e. user input from register_page.jsp
	

}
