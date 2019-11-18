package servlet;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class avnregister extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
	            throws ServletException, IOException {
	        response.setContentType("text/html;charset=UTF-8");
	        	        
	        String username = request.getParameter("username");
	        String userfname = request.getParameter("userfname");
			String userlname = request.getParameter("userlname");
			String useraddress = request.getParameter("useraddress");
			String useremail = request.getParameter("useremail");
	        String userpassword = request.getParameter("userpassword");
	       	
			request.setAttribute("successMessage", "User signed up successfully...!"); 
			RequestDispatcher rs = request.getRequestDispatcher("avnlogin.jsp");
			rs.forward(request, response);
	    }  
}

