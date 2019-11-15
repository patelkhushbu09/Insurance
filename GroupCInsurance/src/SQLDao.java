import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class SQLDao {

	private static Connection conn;
	
	public static boolean getLoginUser(User user) throws Exception{
		boolean flag = false;
		conn = Utility.getConnection();
		String query = "Select * from login_details where user_id = ?";
		PreparedStatement pst = conn.prepareStatement(query);
		pst.setString(1, user.getUserId());
		ResultSet rs = pst.executeQuery();
		while(rs.next()){
			flag = true;
		}
		Utility.getClose();
		return flag;
	}
	
	public static User getUser(String userId, String password) throws Exception{
		User user = null;
		conn = Utility.getConnection();
		String query = "Select * from login_details where user_id = ? and login_pwd = ?";
		PreparedStatement pst = conn.prepareStatement(query);
		pst.setString(1, userId);
		pst.setString(2, password);
		ResultSet rs = pst.executeQuery();
		while(rs.next()){
			user = new User(rs.getString("user_id"), rs.getString("login_pwd"), rs.getInt("user_type"));
			break;
		}
		//System.out.println(user.getUserId()+" "+user.getPassword()+" "+user.getUserType() );
		Utility.getClose();
		return user;
		
	}
	
	public static String getLatestCustomerId() throws Exception{
		conn = Utility.getConnection();
		String customerId = null;
		String query = "select * from (select * from customer_registration order by customer_id desc) where rownum = 1";
		Statement stmt = conn.createStatement();
		ResultSet rs = stmt.executeQuery(query);
		while(rs.next()){
			customerId = rs.getString("customer_id");
			break;
		}
		Utility.getClose();
		return customerId;
	}
	
	public static String getLatestAgentId() throws Exception{
		conn = Utility.getConnection();
		String agentId = null;
		String query = "select * from (select * from agent order by ag_id desc) where rownum = 1";
		Statement stmt = conn.createStatement();
		ResultSet rs = stmt.executeQuery(query);
		while(rs.next()){
			agentId = rs.getString("ag_id");
			break;
		}
		Utility.getClose();
		return agentId;
	}
	
	public static String getLatestManagerId() throws Exception{
		conn = Utility.getConnection();
		String managerId = null;
		String query = "select * from (select * from manager order by mgr_id desc) where rownum = 1";
		Statement stmt = conn.createStatement();
		ResultSet rs = stmt.executeQuery(query);
		while(rs.next()){
			managerId = rs.getString("mgr_id");
			break;
		}
		Utility.getClose();
		return managerId;
	}
	
	public static int insertLoginDetails(String userId, String password, int userType) throws Exception{
		conn = Utility.getConnection();
		String query = "insert into login_details values (?,?,?)";
		PreparedStatement pst = conn.prepareStatement(query);
		pst.setString(1, userId);
		pst.setString(2, password);
		pst.setInt(3, userType);;
		int count = pst.executeUpdate();
		Utility.getClose();
		return count;
	}
	
	public static int insertCustomer(Customer cust) throws Exception{
		conn = Utility.getConnection();
		String query = "insert into customer_registration values (?,?,?,?,?,?,?,?,?,?,?,?,?)";
		PreparedStatement pst = conn.prepareStatement(query);
		pst.setString(1, cust.getCustomerId());
		pst.setString(2, cust.getFirstName());
		pst.setString(3, cust.getLastName());
		pst.setString(4, cust.getDob());
		pst.setString(5, cust.getGender());
		pst.setInt(6, cust.getNumberofChilders());
		pst.setString(7, cust.getAddress());
		pst.setString(8, cust.getOccupation());
		pst.setInt(9, cust.getAnnualSalary());
		pst.setString(10, cust.getMaritalStatus());
		pst.setString(11, cust.getEmailId());
		pst.setString(12, cust.getContactNumber());
		pst.setString(13, cust.getSocialSecurityNumber());
		int count = pst.executeUpdate();
		Utility.getClose();
		return count;
	}
	
	public static int insertAgent(Agent agent) throws Exception{
		conn = Utility.getConnection();
		String query = "insert into agent values (?,?,?,?,?,?,?,?,?,?)";
		PreparedStatement pst = conn.prepareStatement(query);
		pst.setString(1, agent.getAgentId());
		pst.setString(2, agent.getFirstName());
		pst.setString(3, agent.getLastName());
		pst.setString(4, agent.getDob());
		pst.setString(5, agent.getAddress());
		pst.setString(6, agent.getEmailId());
		pst.setString(7, agent.getContactNumber());
		pst.setInt(8, agent.getNumsOfExp());
		pst.setString(9, agent.getZone());
		pst.setString(10, agent.getSocialSecurityNumber());
		int count = pst.executeUpdate();
		Utility.getClose();
		return count;
	}
	
	public static int insertManager(Manager manager) throws Exception{
		conn = Utility.getConnection();
		String query = "insert into manager values (?,?,?,?,?,?,?,?,?)";
		PreparedStatement pst = conn.prepareStatement(query);
		pst.setString(1, manager.getManagerId());
		pst.setString(2, manager.getName());
		pst.setString(3, manager.getDob());
		pst.setString(4, manager.getState());
		pst.setString(5, manager.getZone());
		pst.setString(6, manager.getDesignation());
		pst.setString(7, manager.getEmailId());
		pst.setString(8, manager.getContactNumber());
		pst.setString(9, manager.getWorkEmailId());
		int count = pst.executeUpdate();
		Utility.getClose();
		return count;
	}
	
	public static String getLatestPolicyId() throws Exception{
		conn = Utility.getConnection();
		String policyId = null;
		String query = "select * from (select * from policy order by pol_id desc) where rownum = 1";
		Statement stmt = conn.createStatement();
		ResultSet rs = stmt.executeQuery(query);
		while(rs.next()){
			policyId = rs.getString("pol_id");
			break;
		}
		Utility.getClose();
		return policyId;
	}
	
	public static int insertPolicy(Policy policy) throws Exception{
		conn = Utility.getConnection();
		String query = "insert into policy values (?,?,?,?,?)";
		PreparedStatement pst = conn.prepareStatement(query);
		pst.setString(1, policy.getPolicyId());
		pst.setString(2, policy.getPolicyName());
		pst.setInt(3, policy.getNumbersOfNominees());
		pst.setString(4, policy.getTenure());
		pst.setFloat(5, policy.getSumAssured());
		int count = pst.executeUpdate();
		Utility.getClose();
		return count;
	}
	
	public static int getLatestNomineeId() throws Exception{
		conn = Utility.getConnection();
		int nomineeId = 0;
		String query = "select * from (select * from nominee order by nom_id desc) where rownum = 1";
		Statement stmt = conn.createStatement();
		ResultSet rs = stmt.executeQuery(query);
		while(rs.next()){
			nomineeId = rs.getInt("nom_id");
			break;
		}
		Utility.getClose();
		return nomineeId;
	}
	
	public static int insertNominee(Nominee nominee) throws Exception{
		conn = Utility.getConnection();
		String query = "insert into nominee (nom_id, nom_name, cust_id, relation, nom_dob, contact_number, "
				+ "nom_address, nom_ssn, nom_email) values (?,?,?,?,?,?,?,?,?)";
		PreparedStatement pst = conn.prepareStatement(query);
		pst.setInt(1, nominee.getNomineeId());
		pst.setString(2, nominee.getName());
		pst.setString(3, nominee.getCustomerId());
		pst.setString(4, nominee.getRelation());
		pst.setString(5, nominee.getDob());
		pst.setString(6, nominee.getContactNumber());
		pst.setString(7, nominee.getAddress());
		pst.setString(8, nominee.getSocialSecurityNumber());
		pst.setString(9, nominee.getEmailId());
		int count = pst.executeUpdate();
		Utility.getClose();
		return count;
	}
	
	public static int getLatestCertificateId() throws Exception{
		conn = Utility.getConnection();
		int certificateId = 0;
		String query = "select * from (select * from policy_details order by certi_id desc) where rownum = 1";
		Statement stmt = conn.createStatement();
		ResultSet rs = stmt.executeQuery(query);
		while(rs.next()){
			certificateId = rs.getInt("certi_id");
			break;
		}
		Utility.getClose();
		return certificateId;
	}
	
	public static int getNomineeId(String customerId) throws Exception{
		int nomineeId = 0;
		conn = Utility.getConnection();
		String query = "Select * from nominee where cust_id = ?";
		PreparedStatement pst = conn.prepareStatement(query);
		pst.setString(1, customerId);
		ResultSet rs = pst.executeQuery();
		while(rs.next()){
			nomineeId = rs.getInt("nom_id");
			break;
		}
		//System.out.println(user.getUserId()+" "+user.getPassword()+" "+user.getUserType() );
		Utility.getClose();
		return nomineeId;	
	}
	
	public static String getAgentId() throws Exception{
		conn = Utility.getConnection();
		String agentId = "";
		String query = "select * from (select * from agent order by ag_id) where rownum = 1";
		Statement stmt = conn.createStatement();
		ResultSet rs = stmt.executeQuery(query);
		while(rs.next()){
			agentId = rs.getString("ag_id");
			break;
		}
		Utility.getClose();
		return agentId;
	}
	
	public static String getTenure(String policyId) throws Exception{
		String tenure = null;
		conn = Utility.getConnection();
		String query = "Select * from policy where pol_id = ?";
		PreparedStatement pst = conn.prepareStatement(query);
		pst.setString(1, policyId);
		ResultSet rs = pst.executeQuery();
		while(rs.next()){
			tenure = rs.getString("tenure");
			break;
		}
		Utility.getClose();
		return tenure;	
	}
	
	public static int insertPolicyDetails(PolicyDetails policyDetails) throws Exception{
		conn = Utility.getConnection();
		String query = "insert into policy_details values (?,?,?,?,?,?,?,?)";
		PreparedStatement pst = conn.prepareStatement(query);
		pst.setInt(1, policyDetails.getCertificateId());
		pst.setString(2, policyDetails.getPolicyId());
		pst.setString(3, policyDetails.getCustomerId());
		pst.setString(4, policyDetails.getPolicyStatus());
		pst.setInt(5, policyDetails.getNomineeId());
		pst.setInt(6, policyDetails.getPremiumId());
		pst.setString(7, policyDetails.getExpDate());
		pst.setString(8, policyDetails.getAgentId());
		int count = pst.executeUpdate();
		Utility.getClose();
		return count;
	}
	
	public static int updatePolicyStatus(int certificateId, String status) throws Exception{
		conn = Utility.getConnection();
		String query = "update policy_details set pol_status = ? where certi_id = ?";
		PreparedStatement pst = conn.prepareStatement(query);
		pst.setString(1, status);
		pst.setInt(2, certificateId);
		int count = pst.executeUpdate();
		Utility.getClose();
		return count;
	}
	
	public static int updateAgent(int certificateId, String agentId) throws Exception{
		conn = Utility.getConnection();
		String query = "update policy_details set ag_id = ? where certi_id = ?";
		PreparedStatement pst = conn.prepareStatement(query);
		pst.setString(1, agentId);
		pst.setInt(2, certificateId);
		int count = pst.executeUpdate();
		Utility.getClose();
		return count;
	}
	
	public static String getCertificateNomineeId(int certificateId) throws Exception{
		String name = "";
		conn = Utility.getConnection();
		String query = "select nom_name from nominee where nom_id = (select nom_id from policy_details where certi_id=?)";
		PreparedStatement pst = conn.prepareStatement(query);
		pst.setInt(1, certificateId);
		ResultSet rs = pst.executeQuery();
		while(rs.next()){
			name = rs.getString("nom_name");
			break;
		}
		Utility.getClose();
		return name;	
	}
	
	public static String getCertificateExpDate(int certificateId) throws Exception{
		String expDate = null;
		conn = Utility.getConnection();
		String query = "Select exp_date from policy_details where certi_id=?";
		PreparedStatement pst = conn.prepareStatement(query);
		pst.setInt(1, certificateId);
		ResultSet rs = pst.executeQuery();
		while(rs.next()){
			expDate = rs.getString("exp_date");
			break;
		}
		Utility.getClose();
		return expDate;	
	}
	
	public static int getLatestClaimId() throws Exception{
		conn = Utility.getConnection();
		int claimId = 0;
		String query = "select * from (select * from claims order by claim_id desc) where rownum = 1";
		Statement stmt = conn.createStatement();
		ResultSet rs = stmt.executeQuery(query);
		while(rs.next()){
			claimId = rs.getInt("claim_id");
			break;
		}
		Utility.getClose();
		return claimId;
	}
	
	public static String getPolicyId(int certificateId) throws Exception{
		String polId = "";
		conn = Utility.getConnection();
		String query = "Select pol_id from policy_details where certi_id=?";
		PreparedStatement pst = conn.prepareStatement(query);
		pst.setInt(1, certificateId);
		ResultSet rs = pst.executeQuery();
		while(rs.next()){
			polId = rs.getString("pol_id");
			break;
		}
		Utility.getClose();
		return polId;	
	}
	
	public static String getManagerId() throws Exception{
		conn = Utility.getConnection();
		String mgrId = "";
		String query = "select * from (select * from manager order by mgr_id asc) where rownum = 1";
		Statement stmt = conn.createStatement();
		ResultSet rs = stmt.executeQuery(query);
		while(rs.next()){
			mgrId = rs.getString("mgr_id");
			break;
		}
		Utility.getClose();
		return mgrId;
	}
	
	public static int getNomineeName(String name) throws Exception{
		conn = Utility.getConnection();
		int nomId = 0;
		String query = "Select nom_id from nominee where nom_name=?";
		Statement stmt = conn.createStatement();
		ResultSet rs = stmt.executeQuery(query);
		while(rs.next()){
			nomId = rs.getInt("nom_id");
			break;
		}
		Utility.getClose();
		return nomId;
	}
	
	public static int insertClaim(Claim c) throws Exception{
		conn = Utility.getConnection();
		String query = "insert into policy_details values (?,?,?,?,?,?,?,?,?,?,?)";
		PreparedStatement pst = conn.prepareStatement(query);
		pst.setInt(1, c.getClaimId());
		pst.setString(2, c.getPolicyId());
		pst.setString(3, c.getCustId());
		pst.setString(4, c.getMgrId());
		pst.setString(5, c.getClaimStatus());
		pst.setInt(6, c.getNomineeId());
		pst.setFloat(7, c.getClaimAmount());
		pst.setString(8, c.getCliamDate());
		pst.setString(9, c.getIncidentDate());
		pst.setString(10, c.getCliamReason());
		pst.setString(11, c.getProofPicture());
		int count = pst.executeUpdate();
		Utility.getClose();
		return count;
	}
}
