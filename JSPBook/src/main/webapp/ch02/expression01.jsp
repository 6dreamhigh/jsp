<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<p>Today 's date: <%= new java.util.Date() %></p>
	<%
		int a = 10;
		int b = 20;
		int c = 30;
	%>
	
	<%= a+ b+c %>
</body>
</html>