<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Strona powitalna</title>
    <jsp:include page="header.jsp"/>
</head>
<body>
<h1>${welcome}</h1>
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

<p> ${inprogress}</p>
</body>
</html>
