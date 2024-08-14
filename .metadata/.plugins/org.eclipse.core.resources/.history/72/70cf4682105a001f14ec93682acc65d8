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
    <sql:setDataSource var="datasource" 
        url="jdbc:oracle:thin:@localhost:1521:xe"
        driver="oracle.jdbc.OracleDriver" 
        user="java" 
        password="oracle"/>
    
    <sql:query var="resultSet" dataSource="${datasource}">
        SELECT * FROM departments
    </sql:query>
    
    <table border="1">
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
