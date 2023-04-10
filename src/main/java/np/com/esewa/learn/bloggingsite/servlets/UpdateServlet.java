package np.com.esewa.learn.bloggingsite.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.http.Part;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;

import np.com.esewa.learn.bloggingsite.dao.UserDao;
import np.com.esewa.learn.bloggingsite.entities.Message;
import np.com.esewa.learn.bloggingsite.entities.User;
import np.com.esewa.learn.bloggingsite.utilities.ConnectionProvider;
import np.com.esewa.learn.bloggingsite.utilities.Helper;

@MultipartConfig
public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
    public UpdateServlet() {
        super();
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = 	response.getWriter();
		// fetch all data to edit and update
		String userEmail = request.getParameter("userEmail");
		String userName = request.getParameter("userName");
		String userPassword = request.getParameter("userPassword");
		String about = request.getParameter("about");
		Part profilePic = request.getPart("profilePic"); //gets an input typ image
		String profilePicName = profilePic.getSubmittedFileName(); // gets the name of the submitted profile pic file
		
		//Get user from session to fire query for updating respective users data
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("currentUser");
		// setting update data or refreshing old data on the session
		user.setAbout(about);
		user.setEmail(userEmail);
		user.setName(userName);
		user.setPassword(userPassword);
		user.setProfile(profilePicName);
// updating updated data to database
		UserDao dao = new UserDao(ConnectionProvider.connectDB());
		boolean val = dao.updateUser(user);
		if(val==true) {

			String path = request.getServletContext().getRealPath("/")+ "img/profImg" +File.separator+user.getProfile();
			Helper.deletePhoto(path);
				if (Helper.savePhoto(profilePic.getInputStream(), path)) {
					// send a message if details successfully updated
					Message message = new Message("changes updated successfully... ", "success","alert-success");
					session.setAttribute("msg", message);
					
				}
		else {
			Message message = new Message("changes couldnt get saved, something went wrong... ", "error","alert-danger");
			session.setAttribute("msg", message);
			
		}
}
		else {
			Message message = new Message("changes couldnt get saved, something went wrong... ", "error","alert-danger");
			session.setAttribute("msg", message);
			
		}
		response.sendRedirect("profile.jsp");
}
}