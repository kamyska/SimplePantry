<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<link rel="stylesheet" href="/assets/css/main.css">
<head>
    <title>Nowy użytkownik</title>
</head>
<body>
<div><h2><a href="/">Powrót do strony głównej</a></h2></div>
<div><h2>Podaj dane nowego użytkownika</h2>
    <form method="post" action="/userpanel" >
        <div>
            <fieldset>
                <legend>Uzupełnij pola</legend>
                <div><label for="email">Email: </label><input type="email" required name="email" id="email"/></div>
                <div><label for="password">Hasło: </label><input type="password" required name="password" id="password"/></div>
                <div><label for="name">Imię: </label><input type="text" required name="name" id="name"/></div>
                <div><input type="submit" value="Dodaj"/></div>
            </fieldset>
        </div>
    </form>
</div>

</body>
<script src="assets/js/main.js"></script>
</html>