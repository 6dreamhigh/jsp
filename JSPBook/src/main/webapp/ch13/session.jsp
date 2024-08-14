<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action ="" method="post">
		<p>아 이 디 : <input type="text" name="id">
		<p>비밀번호: <input type="password" name="passwd">
		<p> <input type="submit" value="전송">
	</form>
	
	<%
		String id = request.getParameter("id");
		String passwd = request.getParameter("passwd");
		
		session.setAttribute("id",id);
		session.setAttribute("passwd",passwd);
		
		int time = session.getMaxInactiveInterval() / 60;
		out.println("세션 유효 시간 : "+ time+"분<br>");
		%>
		
		<h4> ----세션 유효 시간 변경 후 ---------</h4>
		<%
		session.setMaxInactiveInterval(60 * 60);
		time = session.getMaxInactiveInterval() /60;
		out.println("세션 유효 시간 : "+time +"분<br>");
		
		out.println("<a href='session02.jsp'>세션 정보 보기 </a>");
	
	%>
</body>
</html>