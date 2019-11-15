
public class Agent {

	private String agentId;
	private String firstName;
	private String lastName;
	private String dob;
	private String address;
	private String emailId;
	private String contactNumber;
	private int numsOfExp;
	private String zone;
	private String socialSecurityNumber;
	
	public Agent(String agentId, String firstName, String lastName, String dob, String address, String emailId,
			String contactNumber, int numsOfExp, String zone, String socialSecurityNumber) {
		super();
		this.agentId = agentId;
		this.firstName = firstName;
		this.lastName = lastName;
		this.dob = dob;
		this.address = address;
		this.emailId = emailId;
		this.contactNumber = contactNumber;
		this.numsOfExp = numsOfExp;
		this.zone = zone;
		this.socialSecurityNumber = socialSecurityNumber;
	}

	public String getAgentId() {
		return agentId;
	}

	public void setAgentId(String agentId) {
		this.agentId = agentId;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getEmailId() {
		return emailId;
	}

	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}

	public String getContactNumber() {
		return contactNumber;
	}

	public void setContactNumber(String contactNumber) {
		this.contactNumber = contactNumber;
	}

	public int getNumsOfExp() {
		return numsOfExp;
	}

	public void setNumsOfExp(int numsOfExp) {
		this.numsOfExp = numsOfExp;
	}

	public String getZone() {
		return zone;
	}

	public void setZone(String zone) {
		this.zone = zone;
	}

	public String getSocialSecurityNumber() {
		return socialSecurityNumber;
	}

	public void setSocialSecurityNumber(String socialSecurityNumber) {
		this.socialSecurityNumber = socialSecurityNumber;
	}
}
