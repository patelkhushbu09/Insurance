
public class Nominee {

	private int nomineeId;
	private String customerId;
	private String name;
	private String relation;
	private String dob;
	private String socialSecurityNumber;
	private String address;
	private String contactNumber;
	private String emailId;
	
	public Nominee(int nomineeId, String name, String customerId, String relation, String dob, String socialSecurityNumber, 
			String address, String contactNumber, String emailId) {
		super();
		this.nomineeId = nomineeId;
		this.name = name;
		this.customerId = customerId;
		this.relation = relation;
		this.dob = dob;
		this.socialSecurityNumber = socialSecurityNumber;
		this.address = address;
		this.contactNumber = contactNumber;
		this.emailId = emailId;
	}

	public int getNomineeId() {
		return nomineeId;
	}

	public void setNomineeId(int nomineeId) {
		this.nomineeId = nomineeId;
	}

	public String getCustomerId() {
		return customerId;
	}

	public void setCustomerId(String customerId) {
		this.customerId = customerId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getRelation() {
		return relation;
	}

	public void setRelation(String relation) {
		this.relation = relation;
	}

	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	public String getSocialSecurityNumber() {
		return socialSecurityNumber;
	}

	public void setSocialSecurityNumber(String socialSecurityNumber) {
		this.socialSecurityNumber = socialSecurityNumber;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getContactNumber() {
		return contactNumber;
	}

	public void setContactNumber(String contactNumber) {
		this.contactNumber = contactNumber;
	}

	public String getEmailId() {
		return emailId;
	}

	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}
	
}
