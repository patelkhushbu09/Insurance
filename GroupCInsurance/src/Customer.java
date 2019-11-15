
public class Customer {

	private String customerId;
	private String firstName;
	private String lastName;
	private String dob;
	private String gender;
	private int numberofChilders;
	private String address;
	private String occupation;
	private int annualSalary;
	private String maritalStatus;
	private String emailId;
	private String contactNumber;
	private String socialSecurityNumber;
	
	public Customer(String customerId, String firstName, String lastName, String dob, String gender,
			int numberofChilders, String address, String occupation, int annualSalary, String maritalStatus,
			String emailId, String contactNumber, String socialSecurityNumber) {
		super();
		this.customerId = customerId;
		this.firstName = firstName;
		this.lastName = lastName;
		this.dob = dob;
		this.gender = gender;
		this.numberofChilders = numberofChilders;
		this.address = address;
		this.occupation = occupation;
		this.annualSalary = annualSalary;
		this.maritalStatus = maritalStatus;
		this.emailId = emailId;
		this.contactNumber = contactNumber;
		this.socialSecurityNumber = socialSecurityNumber;
	}
	
	public String getCustomerId() {
		return customerId;
	}
	public void setCustomerId(String customerId) {
		this.customerId = customerId;
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
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public int getNumberofChilders() {
		return numberofChilders;
	}
	public void setNumberofChilders(int numberofChilders) {
		this.numberofChilders = numberofChilders;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getOccupation() {
		return occupation;
	}
	public void setOccupation(String occupation) {
		this.occupation = occupation;
	}
	public int getAnnualSalary() {
		return annualSalary;
	}
	public void setAnnualSalary(int annualSalary) {
		this.annualSalary = annualSalary;
	}
	public String getMaritalStatus() {
		return maritalStatus;
	}
	public void setMaritalStatus(String maritalStatus) {
		this.maritalStatus = maritalStatus;
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
	public String getSocialSecurityNumber() {
		return socialSecurityNumber;
	}
	public void setSocialSecurityNumber(String socialSecurityNumber) {
		this.socialSecurityNumber = socialSecurityNumber;
	}
}
