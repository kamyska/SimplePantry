<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <jsp:useBean id="CategoryFinder" class="com.sda.pantry.dto.CategoryFinder"/>

    <title>Strona główna</title>
    <jsp:include page="header.jsp"/>
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
