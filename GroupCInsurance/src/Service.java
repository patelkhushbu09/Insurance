
public class Service {

	public boolean callLoginUser(User user) throws Exception{
		return SQLDao.getLoginUser(user);
	}
	
	public User callGetUser(String userId, String password) throws Exception{
		return SQLDao.getUser(userId, password);
	}
	
	public String callLatestCustomerId() throws Exception{
		return SQLDao.getLatestCustomerId();
	}
	
	public String callLatestAgentId() throws Exception{
		return SQLDao.getLatestAgentId();
	}
	
	public String callLatestManagerId() throws Exception{
		return SQLDao.getLatestManagerId();
	}
	
	public int callInsertLoginDetails(String loginEmail, String password, int userType) throws Exception{
		return SQLDao.insertLoginDetails(loginEmail, password, userType);
	}
	
	public int callInsertCustomer(Customer cust) throws Exception{
		return SQLDao.insertCustomer(cust);
	}
	
	public int callInsertAgent(Agent agent) throws Exception{
		return SQLDao.insertAgent(agent);
	}
	
	public int callInsertManager(Manager manager) throws Exception{
		return SQLDao.insertManager(manager);
	}
	
	public String callLatestPolicyId() throws Exception{
		return SQLDao.getLatestPolicyId();
	}
	
	public int callInsertPolicy(Policy policy) throws Exception{
		return SQLDao.insertPolicy(policy);
	}
	
	public int callLatestNomineeId() throws Exception{
		return SQLDao.getLatestNomineeId();
	}
	
	public int callInsertNominee(Nominee nominee) throws Exception{
		return SQLDao.insertNominee(nominee);
	}
	
	public int callLatestCertificateId() throws Exception{
		return SQLDao.getLatestCertificateId();
	}
	
	public int callGetNomineeId(String customerId) throws Exception{
		return SQLDao.getNomineeId(customerId);
	}
	
	public String callGetAgentId() throws Exception{
		return SQLDao.getAgentId();
	}
	
	public String callGetTenure(String policyId) throws Exception{
		return SQLDao.getTenure(policyId);
	}
	
	public int callInsertPolicyDetails(PolicyDetails policyDetails) throws Exception{
		return SQLDao.insertPolicyDetails(policyDetails);
	}
	
	public int callUpdatePolicyStatus(int certificateId, String status) throws Exception{
		return SQLDao.updatePolicyStatus(certificateId, status);
	}
	
	public int callUpdateAgent(int certificateId, String agentId) throws Exception{
		return SQLDao.updateAgent(certificateId, agentId);
	}
	
	public int callGetLatestClaimId() throws Exception{
		return SQLDao.getLatestClaimId();
	}
	
	public String callGetPolicyId(int certiId) throws Exception{
		return SQLDao.getPolicyId(certiId);
	}
	
	public String callGetManagerId() throws Exception{
		return SQLDao.getManagerId();
	}
	
	public int callGetNomineeName(String name) throws Exception{
		return SQLDao.getNomineeName(name);
	}
	
	public int callInsertClaim(Claim c) throws Exception{
		return SQLDao.insertClaim(c);
	}
}
