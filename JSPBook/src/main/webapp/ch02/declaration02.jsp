<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Scripting Tag</title>
</head>
<body>
	<%! int sum(int a, int b){
		return a+b;
		}
	%>
	
	
	<% out.println("2+ 3 = "+ sum(2,3));
	%>
	
</body>
</html>