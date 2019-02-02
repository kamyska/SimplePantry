<%--
  Created by IntelliJ IDEA.
  User: Ola
  Date: 21.01.2019
  Time: 09:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">

<!-- Compiled and minified JavaScript -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
<head>
    <title>Strona powitalna</title>
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
            <td>${user.id}</td>
            <td>${user.name}</td>
            <td>${user.email}</td>
            <td>${user.password}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>

<p> ${inprogress}</p>
</body>
</html>
