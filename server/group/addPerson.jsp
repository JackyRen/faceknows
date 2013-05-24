<%@ page contentType="text/html; charset=gb2312" language="java"  
import=" java.io.IOException" 
import=" java.util.ArrayList"
import=" com.facepp.error.FaceppParseException" 
import=" com.facepp.http.HttpRequests" 
import=" com.facepp.http.PostParameters"
import=" com.facepp.result.FaceppResult" 
%>

<html>
	<HEAD>
		<title>
			add person into group
		</title>
	</HEAD>
	<body>
		<% HttpRequests httpRequests = new HttpRequests("e10bc9924d794c0fbdda9be913ed42e6", "mjorfIe8yHRjQHEg_ko3NWCCj_sK5hyY"); 
		
		FaceppResult result;
		result = httpRequests.groupAddPerson(new PostParameters().setGroupName(request.getParameter("groupid")).setPersonName( request.getParameter("personid")));
		out.println(result);
		%>


	</body>
</html>

