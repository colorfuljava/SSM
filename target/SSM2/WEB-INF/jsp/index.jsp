<%@ page language="java" pageEncoding="UTF-8"%>
<%--引入JSTL核心标签库 --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>

<html>
<body>
<h2>Hello World!</h2>
<table>
    <tr>
        <td>用户ID</td>
        <td>用户名</td>
        <td>用户密码</td>
        <td>描述</td>
    </tr>
    <%--遍历lstUsers集合中的User对象 --%>
    <c:forEach var="user" items="${userList}">
        <tr>
            <td>${user.userid}</td>
            <td>${user.username}</td>
            <td>${user.password}</td>
            <td>${user.description}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
