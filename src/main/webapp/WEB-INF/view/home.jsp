<%--
  Created by IntelliJ IDEA.
  User: Artem
  Date: 22.04.2022
  Time: 0:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<html>
<head>
    <title>Home page</title>
</head>
<body>
    <h2>Welcome to the home page!</h2>
    <hr>

    <%--    Display username and role   --%>
    <p>
        User: <security:authentication property="principal.username" />
        <br><br>
        Role(s): <security:authentication property="principal.authorities" />
    </p>

    <%--    Add a link to point to /leaders for managers and show it only for them  --%>
    <security:authorize access="hasRole('MANAGER')">
        <p>
            <a href="${pageContext.request.contextPath}/leaders">LeaderShip Meeting</a>
            (Only for Managers)
        </p>
    </security:authorize>

    <%--    Add a link to point to /systems for admins and show it only for them    --%>
    <security:authorize access="hasRole('ADMIN')">
        <p>
            <a href="${pageContext.request.contextPath}/system">IT Systems meeting</a>
            (Only for Admins)
        </p>
    </security:authorize>
    <hr>

    <%--    Add a logout button    --%>
    <form:form action="${pageContext.request.contextPath}/logout" method="post">
        <input type="submit" value="Logout"/>
    </form:form>

</body>
</html>
