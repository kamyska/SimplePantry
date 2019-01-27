<%--
  Created by IntelliJ IDEA.
  User: Ola
  Date: 24.01.2019
  Time: 18:41
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
    <jsp:useBean id="CategoryFinder" class="com.sda.pantry.dto.CategoryFinder"/>

    <title>Strona główna</title>
</head>
<body>
<h3> Przepisy</h3>
<table>
    <thead>
    <tr>
        <th>Nazwa</th>
        <th>Opis</th>
        <th>Kategoria</th>
    </tr>
    </thead>
    <tbody>
<c:forEach items="${matchingRecipes}" var="recipe">
<tr>
    <td>${recipe.name}</td>
    <td>${recipe.description}</td>
    <td> <c:out value="${CategoryFinder.translateCategory(recipe.type)}" /></td>


</tr>
</c:forEach>

    </tbody>
</table>
</body>
</html>
