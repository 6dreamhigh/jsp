<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Enumeration" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	Enumeration paramNames = request.getParameterNames();
	while(paramNames.hasMoreElements()){
		String name = (String) paramNames.nextElement();
		String paramValue = request.getParameter(name);
		
		StringBuffer buffer = new StringBuffer();
		
		if(name != null){
			buffer.append(name +" : ").append(paramValue).append("<br>");
		}
		
		out.println(buffer.toString());
		
	}
	

%>
</body>
</html>