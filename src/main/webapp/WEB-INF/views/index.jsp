<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!--
Eventually by HTML5 UP
html5up.net | @ajlkn
Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
	<title>Mała Spiżarnia</title>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
	<link rel="stylesheet" href="assets/css/main.css" />

	<c:choose>
		<c:when test="${email == null}"> <div><h2 align="right" style="color: #1cb495;"><a href="/login">Zaloguj się</a> <br> </h2><h3 align="right"><a href="/userpanel">Założ konto</a></h3></div>
		</c:when>
		<c:otherwise>
			<h3 align="right">	Witaj użytkowniku, ${userName}</h3>
			<h4 style="color: #1cb495" align="right"><a href="/logout" align="right"> Wyloguj się </a></h4>
		</c:otherwise>
</c:choose>


</head>
<body class="is-preload">

<!-- Header -->
<header id="header">
	<h1>Znajdź swój przepis!</h1>
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


<!-- Footer -->
<footer id="footer">
	<ul class="copyright">
		<li>&copy; Ola i Rafał</li>
		<li>Credits: <a href="https://github.com/kamyska">Ola   </a><a href="https://github.com/barraf0">   Rafał</a></li>

	</ul>
</footer>

<!-- Scripts -->
<script src="assets/js/main.js"></script>

</body>
</html>

