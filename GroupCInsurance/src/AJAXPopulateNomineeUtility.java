
public class AJAXPopulateNomineeUtility {

	StringBuffer sb = new StringBuffer();
	
	public StringBuffer readData(int certificateId) throws Exception{
		String name = "";
		String expDate = "";
		name = getValue(certificateId);
		expDate = getExpDate(certificateId);
			sb.append("<nominee>\n");
			sb.append("<name>"+name+"</name>\n");
			sb.append("<date>"+expDate+"</date>\n");
			sb.append("</nominee>\n");
		return sb;
	}
	
	public static String getValue(int certificateId) throws Exception{
		return SQLDao.getCertificateNomineeId(certificateId);
	}
	
	public static String getExpDate(int certificateId) throws Exception{
		return SQLDao.getCertificateExpDate(certificateId);
	}
}
