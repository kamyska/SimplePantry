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
<div><h2><a href="/">Powrót do wyszukiwania</a></h2></div>
<c:choose>
<c:when test="${matchingRecipes==null}"><h2>Przykro nam, nie znaleziono pasujących przepisów :(</h2> </c:when>
<c:otherwise>
<header id="header">
    Przepisy
</header>
<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalLong">
    Launch demo modal
</button>

<!-- Modal -->
<div class="modal fade" id="exampleModalLong" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLongTitle">Modal title</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                ...
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary">Save changes</button>
            </div>
        </div>
    </div>
</div>
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
        </c:otherwise>
    </c:choose>
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
