import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

/**
 * Servlet implementation class ControllerServlet
 */
@WebServlet("/ControllerServlet")
public class ControllerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    Service service = new Service();
    PrintWriter pw = null;
    RequestDispatcher rs = null;
    HttpSession session = null;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ControllerServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		pw = response.getWriter();
		String navigate = null;
		User loginUser = null;
		navigate = request.getParameter("navigate");
		//System.out.println(navigate);
		//Navigate to appropriate screen according to user type.
		if(navigate.equals("navigate")){
			String userId = request.getParameter("userId");
			String password = request.getParameter("password");
			//System.out.println(userId + password);
			try {
				loginUser = service.callGetUser(userId, password);
				if(loginUser==null){
					//pw.println("<h3 style='color:red;text-align: center;'>Invalid Credentials...!</h3>");
					request.setAttribute("errorMessage", "Invalid username or password...!"); 
					rs = request.getRequestDispatcher("Login.jsp");
					rs.forward(request, response);
				}
				else{
					//user type 0 for Admin
					int userType = 0;
					userType = loginUser.getUserType();
					//user type 1 for Customer
					if(userType==1)
						userType = 1;
					//user type 2 for Agent
					if(userType==2)
						userType = 2;
					//user type 3 for Manager
					if(userType==3)
						userType = 3;
					//Setting session
					session = request.getSession(true);
					session.setAttribute("userId", userId);
					session.setAttribute("userType", userType);
					response.setHeader("Cache-Control","no-store");
					response.setHeader("Cache-Control","no-cache");
					response.setDateHeader("Expires",0);
					response.setHeader("Pragma","no-cache");
					
					if(loginUser.getUserType()==0){
						response.sendRedirect("AdminHome.jsp");
					}
						//rs = request.getRequestDispatcher("RegisterCustomer.jsp");
					else if(loginUser.getUserType()==1){
						//session.setAttribute("userid", loginUser.getUserId());
						response.sendRedirect("CustomerHome.jsp");
					}
					else if(loginUser.getUserType()==2)
						response.sendRedirect("AgentHome.jsp");
					else
						response.sendRedirect("ManagerHome.jsp");
				}
			} catch (Exception e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		}
		//navigate to register customer or agent screen
		else if(navigate.equalsIgnoreCase("registerUser")){
			String registerType = request.getParameter("buttonType");
			if(registerType.equalsIgnoreCase("cust"))
				response.sendRedirect("RegisterCustomer.jsp");
			else if(registerType.equalsIgnoreCase("manager"))
				response.sendRedirect("RegisterManager.jsp");
			else
				response.sendRedirect("RegisterAgent.jsp");
		}
		//navigate to reset password screen
		else if(navigate.equalsIgnoreCase("logout")){
			session=request.getSession(false);
			System.out.println("**********Logout*********");			
			response.setHeader("Cache-Control","no-store");
			response.setHeader("Cache-Control","no-cache");
			response.setDateHeader("Expires",0);
			response.setHeader("Pragma","no-cache");
			checkSession(session, response);
				
		}
		else if(navigate.equalsIgnoreCase("contact")){
			session=request.getSession(false);
			if(session.getAttribute("userId")!=null)
				response.sendRedirect("Contact.jsp");
			else
				response.sendRedirect("Login.jsp");
		}
		else if(navigate.equalsIgnoreCase("about")){
			session=request.getSession(false);
			if(session.getAttribute("userId")!=null)
				response.sendRedirect("About.jsp");
			else
				response.sendRedirect("Login.jsp");
		}
		else if(navigate.equalsIgnoreCase("registerUserAdmin")){
			session=request.getSession(false);
			if(session.getAttribute("userId")!=null){
				String registerType = request.getParameter("buttonType");
				if(registerType.equalsIgnoreCase("cust"))
					response.sendRedirect("RegisterCustomer.jsp");
				else if(registerType.equalsIgnoreCase("manager"))
					response.sendRedirect("RegisterManager.jsp");
			}
			else
				response.sendRedirect("Login.jsp");
		}
		else if(navigate.equalsIgnoreCase("registerUserManager")){
			session=request.getSession(false);
			if(session.getAttribute("userId")!=null)
				response.sendRedirect("RegisterCustomer.jsp");
			else
				response.sendRedirect("Login.jsp");
		}
		else if(navigate.equalsIgnoreCase("addpolicylink")){
			session=request.getSession(false);
			if(session.getAttribute("userId")!=null)
				response.sendRedirect("AdminHome.jsp");
			else
				response.sendRedirect("Login.jsp");
		}
		else if(navigate.equalsIgnoreCase("addpolicyadminhome")){
			session=request.getSession(false);
			if(session.getAttribute("userId")!=null)
				response.sendRedirect("AddPolicy.jsp");
			else
				response.sendRedirect("Login.jsp");
		}
		else if(navigate.equalsIgnoreCase("addnomineelink")){
			session=request.getSession(false);
			if(session.getAttribute("userId")!=null)
				response.sendRedirect("CustomerHome.jsp");
			else
				response.sendRedirect("Login.jsp");
		}
		else if(navigate.equalsIgnoreCase("addnomineecusthome")){
			session=request.getSession(false);
			if(session.getAttribute("userId")!=null)
				response.sendRedirect("AddNominee.jsp");
			else
				response.sendRedirect("Login.jsp");
		}
		else if(navigate.equalsIgnoreCase("buypolicycust")){
			session=request.getSession(false);
			if(session.getAttribute("userId")!=null)
				response.sendRedirect("BuyPolicy.jsp");
			else
				response.sendRedirect("Login.jsp");
		}
		else if(navigate.equalsIgnoreCase("buypolicycustlink")){
			session=request.getSession(false);
			if(session.getAttribute("userId")!=null)
				response.sendRedirect("CustomerHome.jsp");
			else
				response.sendRedirect("Login.jsp");
		}
		else if(navigate.equalsIgnoreCase("aboutlink")){
			session=request.getSession(false);
			if(session.getAttribute("userId")!=null){
				if((Integer) session.getAttribute("userType")==0)
					response.sendRedirect("AdminHome.jsp");
				else if((Integer) session.getAttribute("userType")==1)
					response.sendRedirect("CustomerHome.jsp");
				else if((Integer) session.getAttribute("userType")==3)
					response.sendRedirect("ManagerHome.jsp");
			}
			else
				response.sendRedirect("Login.jsp");
		}
		else if(navigate.equalsIgnoreCase("adminpolicymanageink")){
			session=request.getSession(false);
			if(session.getAttribute("userId")!=null)
				response.sendRedirect("AdminHome.jsp");
			else
				response.sendRedirect("Login.jsp");
		}
		else if(navigate.equalsIgnoreCase("policymanageadmin")){
			session=request.getSession(false);
			if(session.getAttribute("userId")!=null)
				response.sendRedirect("AdminPolicyManage.jsp");
			else
				response.sendRedirect("Login.jsp");
		}
		else if(navigate.equalsIgnoreCase("viewagentAdmin")){
			session=request.getSession(false);
			if(session.getAttribute("userId")!=null)
				response.sendRedirect("ViewAgent.jsp");
			else
				response.sendRedirect("Login.jsp");
		}
		else if(navigate.equalsIgnoreCase("adminviewagentink")){
			session=request.getSession(false);
			if(session.getAttribute("userId")!=null){
				if((Integer) session.getAttribute("userType")==0)
					response.sendRedirect("AdminHome.jsp");
				else if((Integer) session.getAttribute("userType")==1)
					response.sendRedirect("CustomerHome.jsp");
			}
			else
				response.sendRedirect("Login.jsp");
		}
		else if(navigate.equalsIgnoreCase("contactink")){
			session=request.getSession(false);
			if(session.getAttribute("userId")!=null){
				if((Integer) session.getAttribute("userType")==0)
					response.sendRedirect("AdminHome.jsp");
				else if((Integer) session.getAttribute("userType")==1)
					response.sendRedirect("CustomerHome.jsp");
				else if((Integer) session.getAttribute("userType")==3)
					response.sendRedirect("ManagerHome.jsp");
			}
			else
				response.sendRedirect("Login.jsp");
		}
		else if(navigate.equalsIgnoreCase("mapctaadminhome")){
			session=request.getSession(false);
			if(session.getAttribute("userId")!=null)
				response.sendRedirect("MapCustomerToAgent.jsp");
			else
				response.sendRedirect("Login.jsp");
		}
		else if(navigate.equalsIgnoreCase("mctaink")){
			session=request.getSession(false);
			if(session.getAttribute("userId")!=null){
				if((Integer) session.getAttribute("userType")==0)
					response.sendRedirect("AdminHome.jsp");
				else if((Integer) session.getAttribute("userType")==1)
					response.sendRedirect("CustomerHome.jsp");
				else if((Integer) session.getAttribute("userType")==3)
					response.sendRedirect("ManagerHome.jsp");
			}
			else
				response.sendRedirect("Login.jsp");
		}
		else if(navigate.equalsIgnoreCase("mapctamanagerhome")){
			session=request.getSession(false);
			if(session.getAttribute("userId")!=null)
				response.sendRedirect("MapCustomerToAgent.jsp");
			else
				response.sendRedirect("Login.jsp");
		}
		else if(navigate.equalsIgnoreCase("manageclaimcust")){
			session=request.getSession(false);
			if(session.getAttribute("userId")!=null)
				response.sendRedirect("CustomerClaim.jsp");
			else
				response.sendRedirect("Login.jsp");
		}
		else if(navigate.equalsIgnoreCase("viewpolicycust")){
			session=request.getSession(false);
			if(session.getAttribute("userId")!=null)
				response.sendRedirect("ViewPolicy.jsp");
			else
				response.sendRedirect("Login.jsp");
		}
		else if(navigate.equalsIgnoreCase("viewclaimcust")){
			session=request.getSession(false);
			if(session.getAttribute("userId")!=null)
				response.sendRedirect("ViewClaim.jsp");
			else
				response.sendRedirect("Login.jsp");
		}
		else if(navigate.equalsIgnoreCase("viewpolicycustlink")){
			session=request.getSession(false);
			if(session.getAttribute("userId")!=null)
				response.sendRedirect("CustomerHome.jsp");
			else
				response.sendRedirect("Login.jsp");
		}
		else if(navigate.equalsIgnoreCase("viewagentCustomer")){
			session=request.getSession(false);
			if(session.getAttribute("userId")!=null)
				response.sendRedirect("ViewAgent.jsp");
			else
				response.sendRedirect("Login.jsp");
		}
	}

	public static boolean checkSession(HttpSession sess, HttpServletResponse response) throws ServletException, IOException{
		if(sess.getAttribute("userId")==null){
			response.sendRedirect("Login.jsp");
			return false;
		}
		else{
			sess.invalidate();
			response.sendRedirect("Login.jsp");
			return true;
		}
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		String page = null;
		page = request.getParameter("page");
		pw = response.getWriter();
		session=request.getSession(false);
		if(page.equalsIgnoreCase("registercustomer")){
			String[] arrString = new String[2];
			int id = 1;
			String custId = null;
			try {
				custId = service.callLatestCustomerId();
				if(custId==null){
					arrString[0] = "INSC_";
				}
				else{
					arrString = service.callLatestCustomerId().split("_");
					arrString[0] = "INSC_";
					id = Integer.valueOf(arrString[1]);
					id = id + 1;
				}
			} catch (Exception e2) {
				e2.printStackTrace();
			}
			Customer cust = new Customer(arrString[0]+id,request.getParameter("firstname"),
					request.getParameter("lastname"),request.getParameter("dob"), 
					request.getParameter("gender"), Integer.parseInt(request.getParameter("numsofchildren")),
					request.getParameter("address"), request.getParameter("occupation"), Integer.parseInt(request.getParameter("salary")), 
					request.getParameter("marital"), request.getParameter("emailid"), 
					request.getParameter("contactnumber"), request.getParameter("ssn"));
			try {
				int count = service.callInsertCustomer(cust);
				if(count<1){
					/*pw.println("<h3 style='color:red;text-align: center;'>Customer registration failed. Try again...!</h3>");
					rs = request.getRequestDispatcher("RegisterCustomer.jsp");
					rs.include(request, response);*/
					request.setAttribute("errorMessage", "Customer registration failed. Try again...!"); 
					rs = request.getRequestDispatcher("RegisterCustomer.jsp");
					rs.forward(request, response);
				}
				else{
					//Create record in login table.
					service.callInsertLoginDetails(cust.getCustomerId(), request.getParameter("password"), 1);
					/*pw.println("<h3 style='color:blue;text-align: center;'>Customer registration successful...!</h3>");
					rs = request.getRequestDispatcher("Login.jsp");
					rs.include(request, response);*/
					request.setAttribute("successMessage", "Customer registration is successful...!"); 
					rs = request.getRequestDispatcher("RegisterCustomer.jsp");
					rs.forward(request, response);
				}
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		else if(page.equalsIgnoreCase("registeragent")){
			String[] arrString = new String[2];
			int id = 1;
			String agentId = null;
			try {
				agentId = service.callLatestAgentId();
				if(agentId==null){
					arrString[0] = "INSAG_";
				}
				else{
					arrString = service.callLatestAgentId().split("_");
					arrString[0] = "INSAG_";
					id = Integer.valueOf(arrString[1]);
					id = id + 1;
				}
			} catch (Exception e2) {
				e2.printStackTrace();
			}
			Agent agent = new Agent(arrString[0]+id,request.getParameter("firstname"),
					request.getParameter("lastname"),request.getParameter("dob"),
					request.getParameter("address"), request.getParameter("emailid"), request.getParameter("contactnumber"),
					Integer.parseInt(request.getParameter("numberofexp")), request.getParameter("zone"), 
					request.getParameter("ssn"));
			try {
				int count = service.callInsertAgent(agent);
				if(count<1){
					/*pw.println("<h3 style='color:red;text-align: center;'>Customer registration failed. Try again...!</h3>");
					rs = request.getRequestDispatcher("RegisterCustomer.jsp");
					rs.include(request, response);*/
					request.setAttribute("errorMessage", "Agent registration failed. Try again...!"); 
					rs = request.getRequestDispatcher("RegisterAgent.jsp");
					rs.forward(request, response);
				}
				else{
					//Create record in login table.
					service.callInsertLoginDetails(agent.getAgentId(), request.getParameter("password"), 2);
					/*pw.println("<h3 style='color:blue;text-align: center;'>Agent registration successful...!</h3>");
					rs = request.getRequestDispatcher("Login.jsp");
					rs.include(request, response);*/
					request.setAttribute("successMessage", "Agent registration is successful...!"); 
					rs = request.getRequestDispatcher("RegisterAgent.jsp");
					rs.forward(request, response);
				}
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		else if(page.equalsIgnoreCase("registermanager")){
			String[] arrString = new String[2];
			int id = 1;
			String managerId = null;
			try {
				managerId = service.callLatestManagerId();
				if(managerId==null){
					arrString[0] = "INSM_";
				}
				else{
					arrString = service.callLatestManagerId().split("_");
					arrString[0] = "INSM_";
					id = Integer.valueOf(arrString[1]);
					id = id + 1;
				}
			} catch (Exception e2) {
				e2.printStackTrace();
			}
			Manager manager = new Manager(arrString[0]+id,request.getParameter("name"),
					request.getParameter("dob"), request.getParameter("state"), request.getParameter("zone"), 
					request.getParameter("designation"), request.getParameter("emailid"), 
					request.getParameter("contactnumber"), arrString[0]+id+"@surity.com");
			try {
				int count = service.callInsertManager(manager);
				if(count<1){
					/*pw.println("<h3 style='color:red;text-align: center;'>Customer registration failed. Try again...!</h3>");
					rs = request.getRequestDispatcher("RegisterCustomer.jsp");
					rs.include(request, response);*/
					request.setAttribute("errorMessage", "Manager registration failed. Try again...!"); 
					rs = request.getRequestDispatcher("RegisterManager.jsp");
					rs.forward(request, response);
				}
				else{
					//Create record in login table.
					service.callInsertLoginDetails(manager.getManagerId(), request.getParameter("password"), 3);
					/*pw.println("<h3 style='color:blue;text-align: center;'>Agent registration successful...!</h3>");
					rs = request.getRequestDispatcher("Login.jsp");
					rs.include(request, response);*/
					request.setAttribute("successMessage", "Manager registration is successful...!"); 
					rs = request.getRequestDispatcher("RegisterManager.jsp");
					rs.forward(request, response);
				}
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		else if(page.equalsIgnoreCase("addpolicy") && session.getAttribute("userId")!=null){
			String[] arrString = new String[2];
			int id = 1;
			String policyId = null;
			try {
				policyId = service.callLatestPolicyId();
				if(policyId==null){
					arrString[0] = "POL_";
				}
				else{
					arrString = service.callLatestPolicyId().split("_");
					arrString[0] = "POL_";
					id = Integer.valueOf(arrString[1]);
					id = id + 1;
				}
			} catch (Exception e2) {
				e2.printStackTrace();
			}
			Policy policy = new Policy(arrString[0]+id, request.getParameter("policyname"), 
					Integer.parseInt(request.getParameter("numberofnominees")), request.getParameter("tenure"), 
					Float.parseFloat(request.getParameter("sumassured")));
			try {
				int count = service.callInsertPolicy(policy);
				if(count<1){
					/*pw.println("<h3 style='color:red;text-align: center;'>Customer registration failed. Try again...!</h3>");
					rs = request.getRequestDispatcher("RegisterCustomer.jsp");
					rs.include(request, response);*/
					request.setAttribute("errorMessage", "Policy registration failed. Try again...!"); 
					rs = request.getRequestDispatcher("AddPolicy.jsp");
					rs.forward(request, response);
				}
				else{
					/*pw.println("<h3 style='color:blue;text-align: center;'>Agent registration successful...!</h3>");
					rs = request.getRequestDispatcher("Login.jsp");
					rs.include(request, response);*/
					request.setAttribute("successMessage", "Policy registration is successful...!"); 
					rs = request.getRequestDispatcher("AddPolicy.jsp");
					rs.forward(request, response);
				}
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		else if(page.equalsIgnoreCase("addnominee") && session.getAttribute("userId")!=null){
			String customerId = "";
			customerId = (String) session.getAttribute("userId");
			int nomineeId = 0;
			try {
				nomineeId = service.callLatestNomineeId();
				if(nomineeId<1)
					nomineeId = 1;
				else
					nomineeId++;
			} catch (Exception e2) {
				e2.printStackTrace();
			}
			Nominee nominee = new Nominee(nomineeId, request.getParameter("nomineename"), customerId,
					request.getParameter("nomineerelation"),request.getParameter("dob"), 
					request.getParameter("ssn"), request.getParameter("address"), 
					request.getParameter("contactnumber"), request.getParameter("emailid"));
			try {
				int count = service.callInsertNominee(nominee);
				if(count<1){
					/*pw.println("<h3 style='color:red;text-align: center;'>Customer registration failed. Try again...!</h3>");
					rs = request.getRequestDispatcher("RegisterCustomer.jsp");
					rs.include(request, response);*/
					request.setAttribute("errorMessage", "Add nominee failed. Try again...!"); 
					rs = request.getRequestDispatcher("AddNominee.jsp");
					rs.forward(request, response);
				}
				else{
					/*pw.println("<h3 style='color:blue;text-align: center;'>Agent registration successful...!</h3>");
					rs = request.getRequestDispatcher("Login.jsp");
					rs.include(request, response);*/
					request.setAttribute("successMessage", "Add nominee is successful...!"); 
					rs = request.getRequestDispatcher("AddNominee.jsp");
					rs.forward(request, response);
				}
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		else if(page.equalsIgnoreCase("buypolicycust") && session.getAttribute("userId")!=null){
			String policyId = request.getParameter("selectradio");
			String customerId = (String) session.getAttribute("userId");
			String policyStatus = "pending";
			String agentId = null;
			String tenure = null;
			String expDate = null;
			DateFormat dateFormat = new SimpleDateFormat("MM/dd/yyyy");
			//Certificate Id
			int certificateId = 0, nomineeId = 0, premiumId = 0;
			try {
				certificateId = service.callLatestCertificateId();
				if(certificateId<1)
					certificateId = 1;
				else
					certificateId++;
			} catch (Exception e2) {
				e2.printStackTrace();
			}
			//get nominee id for logged in customer id
			try {
				nomineeId = service.callGetNomineeId(customerId);
			} catch (Exception e2) {
				e2.printStackTrace();
			}
			if(nomineeId>0){
				//assign agent from agent table
				try {
					agentId = service.callGetAgentId();
				} catch (Exception e2) {
					e2.printStackTrace();
				}
				//exp date from policy table and calculate
				try {
					tenure = service.callGetTenure(policyId);
					Date currentDate = new Date();
					Date currentDatePlusOne;
					Calendar c = Calendar.getInstance();
					c.setTime(currentDate);
					if(tenure.equalsIgnoreCase("1 year")){
						c.add(Calendar.YEAR, 1);
				        c.add(Calendar.MONTH, 1);
				        c.add(Calendar.DATE, 1);
				        currentDatePlusOne = c.getTime();
				        expDate = dateFormat.format(currentDatePlusOne);
					}
					else if(tenure.equalsIgnoreCase("2 years")){
						c.add(Calendar.YEAR, 1);
				        c.add(Calendar.MONTH, 1);
				        c.add(Calendar.DATE, 1);
				        currentDatePlusOne = c.getTime();
				        expDate = dateFormat.format(currentDatePlusOne);
					}
					else if(tenure.equalsIgnoreCase("3 years")){
						c.add(Calendar.YEAR, 3);
				        c.add(Calendar.MONTH, 1);
				        c.add(Calendar.DATE, 1);
				        currentDatePlusOne = c.getTime();
				        expDate = dateFormat.format(currentDatePlusOne);
					}
					else if(tenure.equalsIgnoreCase("5 years")){
						c.add(Calendar.YEAR, 5);
				        c.add(Calendar.MONTH, 1);
				        c.add(Calendar.DATE, 1);
				        currentDatePlusOne = c.getTime();
				        expDate = dateFormat.format(currentDatePlusOne);
					}
					else if(tenure.equalsIgnoreCase("10 years")){
						c.add(Calendar.YEAR, 10);
				        c.add(Calendar.MONTH, 1);
				        c.add(Calendar.DATE, 1);
				        currentDatePlusOne = c.getTime();
				        expDate = dateFormat.format(currentDatePlusOne);
					}
					else{
						expDate = tenure;
					}
				} catch (Exception e2) {
					e2.printStackTrace();
				}
				PolicyDetails policyDetails = new PolicyDetails(certificateId, policyId, customerId, policyStatus, 
						nomineeId, premiumId, expDate, agentId);
				try {
					int count = service.callInsertPolicyDetails(policyDetails);
					if(count<1){
						request.setAttribute("errorMessage", "Buy policy failed. Try again...!"); 
						rs = request.getRequestDispatcher("BuyPolicy.jsp");
						rs.forward(request, response);
					}
					else{
						request.setAttribute("successMessage", "Buy policy is successful...!"); 
						rs = request.getRequestDispatcher("BuyPolicy.jsp");
						rs.forward(request, response);
					}
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			else{
				request.setAttribute("errorMessage", "Please add nominee before buying policy...!"); 
				rs = request.getRequestDispatcher("BuyPolicy.jsp");
				rs.forward(request, response);
			}
		}
		else if(page.equalsIgnoreCase("adminpolicymanage") && session.getAttribute("userId")!=null){
			int certificateId = Integer.parseInt(request.getParameter("selectradio"));
			if(request.getParameter("acceptButton").equalsIgnoreCase("accept")){
				try {
					int count = service.callUpdatePolicyStatus(certificateId, "Accepted");
					if(count<1){
						request.setAttribute("errorMessage", "Operation failed. Try again...!"); 
						rs = request.getRequestDispatcher("AdminPolicyManage.jsp");
						rs.forward(request, response);
					}
					else{
						request.setAttribute("successMessage", "Operation is successful...!"); 
						rs = request.getRequestDispatcher("AdminPolicyManage.jsp");
						rs.forward(request, response);
					}
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			else{
				try {
					int count = service.callUpdatePolicyStatus(certificateId, "Rejected");
					if(count<1){
						request.setAttribute("errorMessage", "Buy policy failed. Try again...!"); 
						rs = request.getRequestDispatcher("AdminPolicyManage.jsp");
						rs.forward(request, response);
					}
					else{
						request.setAttribute("successMessage", "Operation is successful...!"); 
						rs = request.getRequestDispatcher("AdminPolicyManage.jsp");
						rs.forward(request, response);
					}
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
		else if(page.equalsIgnoreCase("adminmcta") && session.getAttribute("userId")!=null){
			int certificateId = Integer.parseInt(request.getParameter("selectradio"));
			String agentId = request.getParameter(String.valueOf(certificateId));
			try {
				int count = service.callUpdateAgent(certificateId, agentId);
				if(count<1){
					request.setAttribute("errorMessage", "Operation failed. Try again...!"); 
					rs = request.getRequestDispatcher("MapCustomerToAgent.jsp");
					rs.forward(request, response);
				}
				else{
					request.setAttribute("successMessage", "Operation is successful...!"); 
					rs = request.getRequestDispatcher("MapCustomerToAgent.jsp");
					rs.forward(request, response);
				}
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}	
		}
		else if(page.equalsIgnoreCase("custclaimcust") && session.getAttribute("userId")!=null){
			
			Integer certiId = Integer.parseInt(request.getParameter("certiId1"));
			System.out.println(certiId);
			/*int claimId = 0;
			try {
				claimId = service.callGetLatestClaimId();
				if(claimId<1)
					claimId = 1;
				else
					claimId++;
				//Get policy id
				String policyId = service.callGetPolicyId(certiId);
				String mgrId = service.callGetManagerId();
				int nomId = service.callGetNomineeId(request.getParameter("nominee"));
				float claimAmnt = Float.parseFloat(request.getParameter("camount"));
				//Date d = new Date();
				Date date = Calendar.getInstance().getTime();  
				DateFormat dateFormat = new SimpleDateFormat("MM/dd/yyyy");  
				String strDate = dateFormat.format(date);  
				Claim c = new Claim(claimId, policyId, (String) session.getAttribute("userId"), 
						mgrId, "pending", nomId, claimAmnt, strDate, request.getParameter("incdate"), 
						request.getParameter("reasonlist"), request.getParameter("new"));
				
				int count = service.callInsertClaim(c);
				if(count<1){
					request.setAttribute("errorMessage", "Operation failed. Try again...!"); 
					rs = request.getRequestDispatcher("CustomerClaim.jsp");
					rs.forward(request, response);
				}
				else{
					request.setAttribute("successMessage", "Operation is successful...!"); 
					rs = request.getRequestDispatcher("CustomerClaim.jsp");
					rs.forward(request, response);
				}
			} catch (Exception e2) {
				e2.printStackTrace();
			}
			*/
		}
		else
			response.sendRedirect("Login.jsp");
	}
}
