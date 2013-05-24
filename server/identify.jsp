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
			identify image in a specific group
		</title>
</HEAD>
<body>
	<% HttpRequests httpRequests = new HttpRequests("e10bc9924d794c0fbdda9be913ed42e6", "mjorfIe8yHRjQHEg_ko3NWCCj_sK5hyY"); %>
	<% FaceppResult ret = httpRequests.recognitionRecognize(new PostParameters().setGroupName(request.getParameter("groupid")).setUrl(request.getParameter("url"))); %>
	

	<% out.println(ret); %>
</body>
</html>

