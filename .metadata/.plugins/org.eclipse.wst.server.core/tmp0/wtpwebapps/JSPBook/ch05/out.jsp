<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		out.println("Hello"+"<br>");
		out.println("Jakarta Server Pages 입니다"+"<br>");
		out.println("오늘의 날짜와 시각"+"  : ");
		out.println(java.util.Calendar.getInstance().getTime());
	%>
</body>
</html>