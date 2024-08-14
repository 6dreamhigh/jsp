<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>구구단</h1>
<table>
	<c:forEach var = "i" begin="1" end="9">
		<tr>
			<c:forEach var="j" begin="1" end="9">
				<td width=100>${i}*${j} = ${i*j}</td>
			</c:forEach>
		</tr>
	</c:forEach>
</table>
</body>
</html>