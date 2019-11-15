
public class Policy {

	private String policyId;
	private String policyName;
	private int numbersOfNominees;
	private String tenure;
	private float sumAssured;
	
	public Policy(String policyId, String policyName, int numbersOfNominees, String tenure, float sumAssured) {
		super();
		this.policyId = policyId;
		this.policyName = policyName;
		this.numbersOfNominees = numbersOfNominees;
		this.tenure = tenure;
		this.sumAssured = sumAssured;
	}

	public String getPolicyId() {
		return policyId;
	}

	public void setPolicyId(String policyId) {
		this.policyId = policyId;
	}

	public String getPolicyName() {
		return policyName;
	}

	public void setPolicyName(String policyName) {
		this.policyName = policyName;
	}

	public int getNumbersOfNominees() {
		return numbersOfNominees;
	}

	public void setNumbersOfNominees(int numbersOfNominees) {
		this.numbersOfNominees = numbersOfNominees;
	}

	public String getTenure() {
		return tenure;
	}

	public void setTenure(String tenure) {
		this.tenure = tenure;
	}

	public float getSumAssured() {
		return sumAssured;
	}

	public void setSumAssured(float sumAssured) {
		this.sumAssured = sumAssured;
	}
	
}
