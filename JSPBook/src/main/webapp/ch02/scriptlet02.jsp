<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>������ ��� ���� </title>
</head>
<body>

	<%
		for(int j=1;j<10;j++){
			for(int i =1;i<10;i++){
					out.println(j+"*"+i+" = "+ j*i +"<br>");
			}
			out.println("<br>");
		}
	%>
</body>
</html>