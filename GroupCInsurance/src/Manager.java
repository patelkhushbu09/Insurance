public class Manager {
	private String managerId;
	private String name;
	private String dob;
	private String state;
	private String zone;
	private String designation;
	private String emailId;
	private String contactNumber;
	private String workEmailId;
	
	public Manager(String managerId, String name, String dob, String state, String zone, String designation,
			String emailId, String contactNumber, String workEmailId) {
		super();
		this.managerId = managerId;
		this.name = name;
		this.dob = dob;
		this.state = state;
		this.zone = zone;
		this.designation = designation;
		this.emailId = emailId;
		this.contactNumber = contactNumber;
		this.workEmailId = workEmailId;
	}

	public String getManagerId() {
		return managerId;
	}

	public void setManagerId(String managerId) {
		this.managerId = managerId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getZone() {
		return zone;
	}

	public void setZone(String zone) {
		this.zone = zone;
	}

	public String getDesignation() {
		return designation;
	}

	public void setDesignation(String designation) {
		this.designation = designation;
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

	public String getWorkEmailId() {
		return workEmailId;
	}

	public void setWorkEmailId(String workEmailId) {
		this.workEmailId = workEmailId;
	}

}
