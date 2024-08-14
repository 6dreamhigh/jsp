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
	<table border="1">
		<tr>
			<th>요청 파라미터 이름</th>
			<th>요청 파라미터 값</th>
		</tr>
		
		<%
			request.setCharacterEncoding("UTF-8");
			
		
			Enumeration paramNames = request.getParameterNames();
			while( paramNames.hasMoreElements()){
				String name = (String) paramNames.nextElement();
				out.print("<tr><td>"+name+"</td>");  // 여기에서 <td> 태그를 닫음
				String paramValue = request.getParameter(name);
				if (paramValue == null) paramValue = "";
				out.println("<td>"+paramValue+"</td></tr>");  // 여기도 <td> 태그를 닫음
			}
		%>
	</table>
</body>
</html>
