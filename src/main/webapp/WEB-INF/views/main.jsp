<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <jsp:useBean id="CategoryFinder" class="com.sda.pantry.dto.CategoryFinder"/>

    <title>Przepisy dla Ciebie</title>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no"/>
    <link rel="stylesheet" href="assets/css/main.css"/>
</head>
<body>
<body class="is-preload">
<header id="header">
    Przepisy
</header>
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


<footer id="footer">
    <ul class="icons">
        <li><a href="#" class="icon fa-twitter"><span class="label">Twitter</span></a></li>
        <li><a href="#" class="icon fa-instagram"><span class="label">Instagram</span></a></li>
        <li><a href="#" class="icon fa-github"><span class="label">GitHub</span></a></li>
        <li><a href="#" class="icon fa-envelope-o"><span class="label">Email</span></a></li>
    </ul>
    <ul class="copyright">
        <li>&copy; Ola i Rafał</li>
        <li>Credits: <a href="http://html5up.net">HTML5 UP</a></li>
    </ul>
</footer>

<!-- Scripts -->
<script src="assets/js/main.js"></script>

</body>
</html>
