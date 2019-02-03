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
<div><h1 align="right"> <a href="/">Powrót do wyszukiwania</a></h1></div>
<br>
<c:choose>
<c:when test="${matchingRecipes==null}"><h2>Przykro nam, nie znaleziono pasujących przepisów :(</h2> </c:when>
<c:otherwise>
<header id="header">
 <h1 align="center" style="color:#1cb495">  Przepisy dla Ciebie </h1>
    <h3 >Przepisy zawierające podane przez Ciebie składniki:</h3>
</header>
<div>
<table align="center">
    <thead>
    <tr>
        <th><h3 align="center">Nazwa</h3></th>
        <th><h3 align="center">Opis</h3></th>
        <th><h3 align="center">Kategoria</h3></th>
        <th> <h3 align="center">Wymagane składniki</h3></th>
    </tr>
    </thead>
    <tbody>
    <%--<c:forEach items="${matchingRecipes}" var="recipe">--%>
<%--<tr>--%>
    <%--<td>${recipe.name}</td>--%>
    <%--<td>${recipe.description}</td>--%>
    <%--<td> <c:out value="${CategoryFinder.translateCategory(recipe.type)}" /></td>--%>
    <%--<td>--%>

    <%--</c:forEach>--%>
    <% List<RecipeDTO> matchingRecipes = (List<RecipeDTO>) request.getAttribute("matchingRecipes");
        for (int i = 0; i < matchingRecipes.size(); i++) {
    %>
    <tr>
        <td align="center"><%= matchingRecipes.get(i).getName()%>
        </td>
        <td align="center"><%=matchingRecipes.get(i).getDescription()%>
        </td>
        <td align="center"><%=CategoryFinder.translateCategory(matchingRecipes.get(i).getType())%>
        </td>
        <td align="center">
            <ul align="center"><%List<List<IngredientDTO>> matchingIngredients = (List<List<IngredientDTO>>) request.getAttribute("ingredientsForMatchingRecipes");
                for (int j = 0; j < matchingIngredients.get(i).size(); j++) {%>
                <li align="center"><%=matchingIngredients.get(i).get(j).getName()%>  </li>

                <% } %>
            </ul>
        </td>
        <%}%>
    </tr>

    </tbody>
</table>
    </div>
<br>
<br>
<h3>Może zainteresują Cię też przepisy:</h3>

<div ><table>
    <thead>
    <tr >
        <th><h3 align="center">Nazwa</h3></th>
        <th><h3 align="center">Opis</h3></th>
        <th><h3 align="center"> Kategoria</h3></th>
        <th><h3 align="center">Wymagane składniki</h3></th>
    </tr>
    </thead>
    <tbody>
        <%--<c:forEach items="${almostMatchingRecipes}" var="recipe2" varStatus="loop">--%>
    <% List<RecipeDTO> almostMatchingRecipes = (List<RecipeDTO>) request.getAttribute("almostMatchingRecipes");
        for (int i = 0; i < almostMatchingRecipes.size(); i++) {
            if (!matchingRecipes.contains(almostMatchingRecipes.get(i))){
    %>
        <tr>
    <td align="center"><%= almostMatchingRecipes.get(i).getName()%>
    </td>
    <td align="center"><%=almostMatchingRecipes.get(i).getDescription()%>
    </td>
    <td align="center"><%=CategoryFinder.translateCategory(almostMatchingRecipes.get(i).getType())%>
    </td>
    <td align="center">
        <ul align="center"><%List<List<IngredientDTO>> missingIngredients = (List<List<IngredientDTO>>) request.getAttribute("ingredientsForNotMatchingRecipes");
            for (int j = 0; j < missingIngredients.get(i).size(); j++) {%>
            <li align="center"><%=missingIngredients.get(i).get(j).getName()%>  </li>

    <% } %>
        </ul>
    </td>
    <%}
    }%>
    </tr>


    </c:otherwise>
    </c:choose>
    </tbody>
</table></div>


<footer id="footer">
    <%--<ul class="icons">--%>
    <%--<li><a href="#" class="icon fa-twitter"><span class="label">Twitter</span></a></li>--%>
    <%--<li><a href="#" class="icon fa-instagram"><span class="label">Instagram</span></a></li>--%>
    <%--<li><a href="#" class="icon fa-github"><span class="label">GitHub</span></a></li>--%>
    <%--<li><a href="#" class="icon fa-envelope-o"><span class="label">Email</span></a></li>--%>
    <%--</ul>--%>
    <ul class="copyright">
        <li>&copy; Ola i Rafał</li>
        <li>Credits: <a href="https://github.com/kamyska">Ola   </a><a href="https://github.com/barraf0">   Rafał</a></li>

    </ul>
</footer>

<!-- Scripts -->
<script src="assets/js/main.js"></script>

</body>
</html>
