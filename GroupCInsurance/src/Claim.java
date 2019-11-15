
public class Claim {

	private int claimId;
	private String policyId;
	private String custId;
	private String mgrId;
	private String claimStatus;
	private int nomineeId;
	private float claimAmount;
	private String cliamDate;
	private String incidentDate;
	private String cliamReason;
	private String proofPicture;
	
	public Claim(int claimId, String policyId, String custId, String mgrId, String claimStatus, int nomineeId,
			float claimAmount, String cliamDate, String incidentDate, String cliamReason, String proofPicture) {
		super();
		this.claimId = claimId;
		this.policyId = policyId;
		this.custId = custId;
		this.mgrId = mgrId;
		this.claimStatus = claimStatus;
		this.nomineeId = nomineeId;
		this.claimAmount = claimAmount;
		this.cliamDate = cliamDate;
		this.incidentDate = incidentDate;
		this.cliamReason = cliamReason;
		this.proofPicture = proofPicture;
	}

	public int getClaimId() {
		return claimId;
	}

	public void setClaimId(int claimId) {
		this.claimId = claimId;
	}

	public String getPolicyId() {
		return policyId;
	}

	public void setPolicyId(String policyId) {
		this.policyId = policyId;
	}

	public String getCustId() {
		return custId;
	}

	public void setCustId(String custId) {
		this.custId = custId;
	}

	public String getMgrId() {
		return mgrId;
	}

	public void setMgrId(String mgrId) {
		this.mgrId = mgrId;
	}

	public String getClaimStatus() {
		return claimStatus;
	}

	public void setClaimStatus(String claimStatus) {
		this.claimStatus = claimStatus;
	}

	public int getNomineeId() {
		return nomineeId;
	}

	public void setNomineeId(int nomineeId) {
		this.nomineeId = nomineeId;
	}

	public float getClaimAmount() {
		return claimAmount;
	}

	public void setClaimAmount(float claimAmount) {
		this.claimAmount = claimAmount;
	}

	public String getCliamDate() {
		return cliamDate;
	}

	public void setCliamDate(String cliamDate) {
		this.cliamDate = cliamDate;
	}

	public String getIncidentDate() {
		return incidentDate;
	}

	public void setIncidentDate(String incidentDate) {
		this.incidentDate = incidentDate;
	}

	public String getCliamReason() {
		return cliamReason;
	}

	public void setCliamReason(String cliamReason) {
		this.cliamReason = cliamReason;
	}

	public String getProofPicture() {
		return proofPicture;
	}

	public void setProofPicture(String proofPicture) {
		this.proofPicture = proofPicture;
	}
	
}
