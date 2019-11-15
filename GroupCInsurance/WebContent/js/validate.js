var req;
var isIE;
var parser;
var xmlDoc;

function checkPwd(){
	var pass = document.getElementById('password').value;
	var con_pass = document.getElementById('confirmpassword').value;
	if((pass == con_pass) && (pass != "")){
	                document.getElementById("changeBorder").style.borderStyle = "solid";    
	                document.getElementById("changeBorder").style.borderColor = "green";
	                return true;
	        }else{
	            document.getElementById("changeBorder").style.borderStyle = "solid";    
	            document.getElementById("changeBorder").style.borderColor = "red";
	            alert('Password and Confirm Password should be same...!');
	            return false;
	        }
}

function getSelectedValue(){
	var selectedValue = document.getElementById("listCertificate").value;
	//populateNominee(selectedValue);
	//var name = "xyz";
    window.location.replace("CustomerClaim.jsp?certiId="+selectedValue);
}

function populateNominee(selectedValue){
	var temp = selectedValue;
	var url = "PopulateNominee?certificateId="+temp;
	req = initRequest();
	//req.overrideMimeType("text/xml");
	
	req.open("GET", url, true);
	//xmlDoc = parser.parseFromString(req.responseText, "text/html");
	parser = new DOMParser();
	//xmlDoc = parser.parseFromString(req.response, "text/plain");
	//alert(xmlDoc.getElementsByTagName("name")[0].childNodes[0].nodeValue);
	req.onreadystatechange = callbackPopulateNominee();
	
	req.send(null);
}

function initRequest()
{
	// We will use an ActiveX Object from the Scripting.FileSystemObject library to read and write files from JavaScript, which knows how to handle files.
    if (window.XMLHttpRequest)
	{
        if (navigator.userAgent.indexOf('MSIE') != -1)
		{
            isIE = true;
        }
        return new XMLHttpRequest();
    }
	//The ActiveXObject Object enables and returns a reference to an automation object.
	else if (window.ActiveXObject)
	{
        isIE = true;
        return new ActiveXObject("Microsoft.XMLHTTP");
    }
}

function callbackPopulateNominee(){
	
	//clearNomineeField();
	//clearExpDateField();
	
	alert(req.readyState);
	if(req.readyState == 4){
		if(req.status == 200){
			
			//parseNomineeMessage(req.responseXML);
		}
	}
}

function clearNomineeField(){
	var selectNominee = document.getElementById("nominee");
	document.getElementById("nominee").value = "";
	//selectNominee = null;
}

function clearExpDateField(){
	var selectExp = document.getElementById("expdate");
	document.getElementById("expdate").value = "";
	//selectExp = null;
}

function parseNomineeMessage(responseXML){
	
	if(responseText == null){
		return false;
	}
	else{
		//xmlDoc = responseXML;
		//var products = xmlDoc.getElementsByTagName("nominee")[0];
		//alert(responseText);
        /*if (products.childNodes.length > 0)
		{
        	alert('true');
		}*/
		/*var n = xmlDoc.getElementsByTagName("n")[0];
		var n1 = n.childNodes[0];
		var nominee = n1.getElementsByTagname("nominee")[0];
		var expdate = n1.getElementsByTagName("date")[0];*/
		
		//append(nominee.childNodes[0].nodeValue, expdate.childNodes[0].nodeValue);
	}
}

function append(nomineename, expdate){
	docuent.getElementById("nominee").innerHTML=nomineename;
	docuent.getElementById("expdate").innerHTML=expdate
}