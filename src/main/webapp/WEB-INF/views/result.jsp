<%@ page import="com.sda.pantry.dto.IngredientDTO" %>
<%@ page import="com.sda.pantry.dto.RecipeDTO" %>
<%@ page import="java.util.List" %>
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
<body class="is-preload">
<div><h2><a href="/">Powrót do wyszukiwania</a></h2></div>
<c:choose>
<c:when test="${matchingRecipes==null}"><h2>Przykro nam, nie znaleziono pasujących przepisów :(</h2> </c:when>
<c:otherwise>
<header id="header">
    Przepisy
</header>
<table>
    <thead>
    <tr>
        <th>Nazwa</th>
        <th>Opis</th>
        <th>Kategoria</th>
        <th> Składniki</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${matchingRecipes}" var="recipe" varStatus="loop">
<tr>
    <td>${recipe.name}</td>
    <td>${recipe.description}</td>
    <td> <c:out value="${CategoryFinder.translateCategory(recipe.type)}" /></td>
    <td>
        tu będą składniki przepisu
    </td>
</tr>
    </c:forEach>
    </tbody>
</table>
-----------------------
<table>
    <thead>
    <tr>
        <th>Nazwa</th>
        <th>Opis</th>
        <th>Kategoria</th>
        <th>Składniki</th>
    </tr>
    </thead>
    <tbody>
        <%--<c:forEach items="${almostMatchingRecipes}" var="recipe2" varStatus="loop">--%>
    <% List<RecipeDTO> almostMatchingRecipes = (List<RecipeDTO>) request.getAttribute("almostMatchingRecipes");
        for (int i = 0; i < almostMatchingRecipes.size(); i++) {
    %>
        <tr>
    <td><%= almostMatchingRecipes.get(i).getName()%>
    </td>
    <td><%=almostMatchingRecipes.get(i).getDescription()%>
    </td>
    <td><%=CategoryFinder.translateCategory(almostMatchingRecipes.get(i).getType())%>
    </td>
    <td>
        <ul><%List<List<IngredientDTO>> missingIngredients = (List<List<IngredientDTO>>) request.getAttribute("missingIngredients");
            for (int j = 0; j < missingIngredients.get(i).size(); j++) {%>
            <li><%=missingIngredients.get(i).get(j).getName()%>  </li>

    <% } %>
        </ul>
    </td>
    <%}%>
    </tr>


    </c:otherwise>
    </c:choose>
    </tbody>
</table>


<footer id="footer">
    <%--<ul class="icons">--%>
    <%--<li><a href="#" class="icon fa-twitter"><span class="label">Twitter</span></a></li>--%>
    <%--<li><a href="#" class="icon fa-instagram"><span class="label">Instagram</span></a></li>--%>
    <%--<li><a href="#" class="icon fa-github"><span class="label">GitHub</span></a></li>--%>
    <%--<li><a href="#" class="icon fa-envelope-o"><span class="label">Email</span></a></li>--%>
    <%--</ul>--%>
    <ul class="copyright">
        <li>&copy; Ola i Rafał</li>
        <li>Credits: <a href="https://github.com/kamyska">Ola</a><a href="https://github.com/barraf0">Rafał</a></li>

    </ul>
</footer>

<!-- Scripts -->
<script src="assets/js/main.js"></script>

</body>
</html>
