<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import ="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert Process</title>
</head>
<body>
    <%@ include file = "connection.jsp" %> <!-- Connection 객체를 포함 -->
    
    <%
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8"); // 응답 스트림 인코딩 설정
        response.setContentType("text/html; charset=UTF-8"); // 응답 콘텐츠 타입 설정

        String id = request.getParameter("id");
        String passwd = request.getParameter("passwd");
        String name = request.getParameter("name");

        PreparedStatement pstmt = null;

        try {
            String sql = "INSERT INTO member(id, passwd, name) VALUES (?, ?, ?)";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, id);
            pstmt.setString(2, passwd);
            pstmt.setString(3, name);

            int result = pstmt.executeUpdate();

            if(result > 0) {
                out.println("member table 입력 성공");
            } else {
                out.println("입력 실패");
            }
        } catch (SQLException ex) {
            out.println("SQLException : " + ex.getMessage());
        } finally {
            if(pstmt != null) try { pstmt.close(); } catch(SQLException ex) { out.println("SQLException : " + ex.getMessage()); }
            if(conn != null) try { conn.close(); } catch(SQLException ex) { out.println("SQLException : " + ex.getMessage()); }
        }
    %>
</body>
</html>
