<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE HTML>
<!--
Eventually by HTML5 UP
html5up.net | @ajlkn
Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
<head>
	<title>Mała Spiżarnia</title>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
	<link rel="stylesheet" href="assets/css/main.css" />
	<c:choose>
		<c:when test="${email == null}"> Użytkownik niezalogowany </c:when>
		<c:otherwise>
			Witaj użytkowniku, ${email}
			<a href="/logout"> Wyloguj się </a>
		</c:otherwise>
	</c:choose>
</head>
<body class="is-preload">

<!-- Header -->
<header id="header">
	<h1>Znajdź swój przepis! </h1>
	<p>Podaj składniki, które masz w domu,</p>
	<p>a przedstawimy Ci przepisy, które możesz z nich wykonać</p>

</header>

<!-- Signup Form -->
<form:form method="POST"
		   action="/" modelAttribute="inputWord">

	<form:input path="name"/>
	<form:label path="name">Np. mleko, makaron, obiad, deser</form:label>
	<input type="submit" value="Szukaj">
</form:form>
<div><h2>Albo...</h2>
	<div><h2><a href="/login">...zaloguj się</a></h2></div>
	<div><h2><a href="/userpanel">...założ konto</a></h2></div>
</div>
<!-- Footer -->
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

