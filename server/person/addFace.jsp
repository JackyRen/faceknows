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
			add Face
		</title>
	</HEAD>
	<body>
		<% HttpRequests httpRequests = new HttpRequests("e10bc9924d794c0fbdda9be913ed42e6", "mjorfIe8yHRjQHEg_ko3NWCCj_sK5hyY"); 
		FaceppResult result;
		String name = request.getParameter("personid");
		result =  httpRequests.personAddFace(new PostParameters().setPersonName(name).setFaceId(request.getParameter("faceid")));
		//out.println(result);

		result = httpRequests.personGetInfo(new PostParameters().setPersonName(name)) ;
		//out.println(result);
		FaceppResult groups = result.get("group");
		for( int i = 0 ; i< groups.getCount();i++){
			result = httpRequests.train(new PostParameters().setGroupName(groups.get(i).get("group_name").toString()).setType("recognize"));
			//out.println(result);
		}
		%>


	</body>
</html>

