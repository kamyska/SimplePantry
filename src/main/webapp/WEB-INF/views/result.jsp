<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>

<link rel="stylesheet" href="/assets/css/main.css">

<!-- Compiled and minified JavaScript -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
<head>
    <title>Strona główna</title>
</head>
<body>
<div><h2><a href="/">Powrót do wyszukiwania</a></h2></div>
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
    <td>${recipe.type}</td>
</tr>
</c:forEach>
    </tbody>
</table>
</body>
<script src="assets/js/main.js"></script>
</html>
