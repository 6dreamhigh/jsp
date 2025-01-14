<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>JSTL SQL Example</title>
</head>
<body>
  
   <%
	   request.setCharacterEncoding("utf-8");
	
	   String id = request.getParameter("id");
	   String passwd = request.getParameter("passwd");
	   String name = request.getParameter("name");
	%>

   	
    <sql:setDataSource var="datasource" 
        url="jdbc:oracle:thin:@localhost:1521:xe"
        driver="oracle.jdbc.OracleDriver" 
        user="java" 
        password="oracle"/>
    
   <sql:update dataSource="${datasource}" var="resultSet">
	    insert into member(id, passwd, name) values(?,?,?)
	    <sql:param value ="<%=id %>"/>
	    <sql:param value ="<%=passwd %>"/>
	    <sql:param value ="<%=name %>"/>
	</sql:update>

    
    <c:import var="url" url="sql01.jsp">
    	${url}
    </c:import>

</body>
</html>
