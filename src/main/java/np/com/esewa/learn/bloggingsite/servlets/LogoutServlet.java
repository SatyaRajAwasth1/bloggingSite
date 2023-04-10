package np.com.esewa.learn.bloggingsite.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import np.com.esewa.learn.bloggingsite.entities.Message;


public class LogoutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public LogoutServlet() {
        super();
        
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// remove session to get logged out
		HttpSession session = request.getSession();	
		session.removeAttribute("currentUser");
		
		// send a message if successfully logge out
		Message message = new Message("Logged out successfully...  enter details to login", "success","alert-success");
		session.setAttribute("msg", message);
		response.sendRedirect("login_page.jsp");
		
	}

}
