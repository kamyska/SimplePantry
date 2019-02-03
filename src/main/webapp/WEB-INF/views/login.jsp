<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<link rel="stylesheet" href="/assets/css/main.css">
<head>
    <title>Strona logowania</title>
</head>
<body>
<div><h2><a href="/">Powrót do strony głównej</a></h2></div>
<div><h2>Zaloguj się</h2>
    <form method="post" action="/login">
        <div>
            <fieldset>
                <legend>Dane logowania</legend>
                <div><label for="email">Email: </label><input type="email" required name="email" id="email"/></div>
                <div><label for="password">Password: </label><input type="password" required name="password" id="password"/></div>
                <div><input type="submit" value="Zaloguj"/></div>
            </fieldset>
        </div>
    </form>
</div>

</body>
<script src="assets/js/main.js"></script>
</html>