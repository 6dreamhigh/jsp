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
		// 요청 파라미터 값을 가져옴
		String name = request.getParameter("name");
		String address = request.getParameter("address");
		String email = request.getParameter("email");
		
		// StringBuffer 객체 생성
		StringBuffer buffer = new StringBuffer();
		
		// StringBuffer에 값을 추가
		if (name != null) {
			buffer.append("Name: ").append(name).append("<br>");
		}
		if (address != null) {
			buffer.append("Address: ").append(address).append("<br>");
		}
		if (email != null) {
			buffer.append("Email: ").append(email).append("<br>");
		}
		
		// StringBuffer에 저장된 내용을 출력
		out.println(buffer.toString());
	%>
</body>
</html>
