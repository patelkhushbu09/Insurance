
public class PolicyDetails {
	
	private int certificateId;
	private String policyId;
	private String customerId;
	private String policyStatus;
	private int nomineeId;
	private int premiumId;
	private String expDate;
	private String agentId;
	
	public PolicyDetails(int certificateId, String policyId, String customerId, String policyStatus, int nomineeId,
			int premiumId, String expDate, String agentId) {
		super();
		this.certificateId = certificateId;
		this.policyId = policyId;
		this.customerId = customerId;
		this.policyStatus = policyStatus;
		this.nomineeId = nomineeId;
		this.premiumId = premiumId;
		this.expDate = expDate;
		this.agentId = agentId;
	}

	public int getCertificateId() {
		return certificateId;
	}

	public void setCertificateId(int certificateId) {
		this.certificateId = certificateId;
	}

	public String getPolicyId() {
		return policyId;
	}

	public void setPolicyId(String policyId) {
		this.policyId = policyId;
	}

	public String getCustomerId() {
		return customerId;
	}

	public void setCustomerId(String customerId) {
		this.customerId = customerId;
	}

	public String getPolicyStatus() {
		return policyStatus;
	}

	public void setPolicyStatus(String policyStatus) {
		this.policyStatus = policyStatus;
	}

	public int getNomineeId() {
		return nomineeId;
	}

	public void setNomineeId(int nomineeId) {
		this.nomineeId = nomineeId;
	}

	public int getPremiumId() {
		return premiumId;
	}

	public void setPremiumId(int premiumId) {
		this.premiumId = premiumId;
	}

	public String getExpDate() {
		return expDate;
	}

	public void setExpDate(String expDate) {
		this.expDate = expDate;
	}

	public String getAgentId() {
		return agentId;
	}

	public void setAgentId(String agentId) {
		this.agentId = agentId;
	}

}
