<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% request.setCharacterEncoding("utf-8");
		String name = request.getParameter("name");		
		String password = request.getParameter("passwd");	
	%>

	<p> 이름 : <%=name %> <br>
	<p> 비밀번호 : <%=password %> <br>
	

</body>
</html>