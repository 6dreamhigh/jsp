<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" buffer="16kb"%>
<!DOCTYPE html>
<%@ page errorPage = "error.jsp" %>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <h2>contentType 디렉티브 태그</h2>
    <h4>text/html :  html 출력</h4>
    <h4>charset=UTF-8 : 문자 인코딩</h4>

    Today is <%= new java.util.Date() %>
    
    <% 
    	String str = null;
    	out.println(str.toString());
    %>
</body>
</html>