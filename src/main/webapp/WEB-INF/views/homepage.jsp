<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<!--<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">-->
<link rel="stylesheet" href="/assets/css/main.css">
<head>
    <title>Spiżarnia</title>
    <c:choose>
        <c:when test="${email == null}"> Użytkownik niezalogowany </c:when>
        <c:otherwise>
            Witaj uzytkowniku, ${email}
            <a href="/logout"> Wyloguj się </a>
        </c:otherwise>
    </c:choose>
    <p> </p>
</head>
<body>
<div>
    <div><h2>Wyszukaj przepis</h2>
        <%--<form method="post" action="/" modelAttribute="ingredientDTO">--%>
            <form method="post" action="/">
            <div>
                <fieldset>
                    <legend>Składnik lub rodzaj posiłku</legend>
                    <div><label for="name">Wpisz: </label><input type="text" required name="name" id="name"/></div>
                    <div><input type="submit" value="Wyszukaj"/></div>
                </fieldset>
            </div>
        </form>
    </div>
    <div><h2>Albo...</h2>
        <div><h2><a href="/login">...zaloguj się</a></h2></div>
        <div><h2><a href="/userpanel">...założ konto</a></h2></div>
    </div>
</div>
<script src="assets/js/main.js"></script>
</body>
</html>
