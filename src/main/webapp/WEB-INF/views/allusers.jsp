<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>Użytkownicy</title>
</head>
<body>
<h1></h1>
<h2>Użytkownicy</h2>
<table>
    <thead>
    <tr>
        <th>Id</th>
        <th>Imię</th>
        <th>Email</th>
        <th>Hasło</th>

    </tr>
    </thead>
    <tbody>
    <c:forEach items="${users}" var="user">
        <tr>
            <td>${user.id}.</td>
            <td>${user.name}.</td>
            <td>${user.email}.</td>
            <td>${user.password}.</td>
        </tr>
    </c:forEach>
    </tbody>
</table>

</body>
</html>
