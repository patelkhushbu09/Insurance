

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class PopulateNominee
 */
@WebServlet("/PopulateNominee")
public class PopulateNominee extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private ServletContext context; 
    /**
     * @see HttpServlet#HttpServlet()
     */
    @Override
    public void init(ServletConfig config) throws ServletException{
    	this.context = config.getServletContext();
    }
    public PopulateNominee() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		try{
			int certificateId = Integer.parseInt(request.getParameter("certificateId"));
			StringBuffer sb = new StringBuffer();
			boolean nomineeAdded = false;
			if(certificateId==0){
				context.getRequestDispatcher("/Error").forward(request, response);
			}
			else{
				AJAXPopulateNomineeUtility a = new AJAXPopulateNomineeUtility();
				sb = a.readData(certificateId);
				
				if(sb!=null || !sb.equals("")){
					//System.out.println("I'm here..."+sb.toString());
					nomineeAdded = true;
				}
				if(nomineeAdded){
					response.addHeader("Content-Type", "text/xml");
					response.setContentType("text/xml");
					
					//System.out.println("I'm here..."+sb.toString());
					response.getWriter().write("<?xml version=\"1.0\" encoding=\"utf-8\" ?>\n<nominees>\n"+sb.toString()+"</nominees>");
					
				}
				else{
					response.setStatus(HttpServletResponse.SC_NO_CONTENT);
				}
			}
		}
		catch(Exception e){
			
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
	}

}
