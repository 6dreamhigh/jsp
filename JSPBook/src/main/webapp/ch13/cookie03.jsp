<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% Cookie[] cookies = request.getCookies();
		out.println("현재 설정된 쿠키의 개수 => " + cookies.length +"<br>");
		out.println("===============================<br>");
		for(int i = 0;i<cookies.length;i++){
			cookies[i].setMaxAge(0);
			response.addCookie(cookies[i]);
			out.println("===============================<br>");

		}
		response.sendRedirect("cookie02.jsp");
	
	
	%>
</body>
</html>