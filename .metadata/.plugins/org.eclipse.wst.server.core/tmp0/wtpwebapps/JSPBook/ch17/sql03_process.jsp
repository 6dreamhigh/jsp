<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>#9</title>
</head>
<body>
  <%
	   request.setCharacterEncoding("utf-8");
	   String before_name = request.getParameter("before_name");
	   String after_name = request.getParameter("after_name");
  %>
  
    <sql:setDataSource var="datasource" 
        url="jdbc:oracle:thin:@localhost:1521:xe"
        driver="oracle.jdbc.OracleDriver" 
        user="java" 
        password="oracle"/>
    
    <!-- 업데이트 쿼리 실행 -->
    <sql:update dataSource="${datasource}" var="updateResult">
	    UPDATE departments
	    SET depart = ?
	    WHERE depart = ?
	    <sql:param value ="<%=after_name %>"/>
        <sql:param value ="<%=before_name %>"/>
	</sql:update>

    <!-- 업데이트된 테이블 데이터 가져오기 -->
    <sql:query var="resultSet" dataSource="${datasource}">
        SELECT * FROM departments
    </sql:query>
    
    <table border="1" width ="150px">
        <tr>
            <c:forEach var="columnName" items="${resultSet.columnNames}">
                <th width="100"><c:out value="${columnName}"/></th>
            </c:forEach>
        </tr>
        
        <c:forEach var="row" items="${resultSet.rowsByIndex}">
            <tr>
                <c:forEach var="column" items="${row}">
                    <td>
                        <c:if test="${column != null}">
                            <c:out value="${column}"/>
                        </c:if>
                        
                        <c:if test="${column == null}">
                            N/A
                        </c:if>
                    </td>
                </c:forEach>
            </tr>
        </c:forEach>
    </table>

</body>
</html>
