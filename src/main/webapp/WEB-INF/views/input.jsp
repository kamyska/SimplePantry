<%--
  Created by IntelliJ IDEA.
  User: Ola
  Date: 26.01.2019
  Time: 18:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">

<!-- Compiled and minified JavaScript -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<head>
</head>
<body>

<h3>Wyszukiwarka przepisów</h3>
<form:form method="POST"
           action="/new" modelAttribute="inputWord">
<div>
    <fieldset>
        <legend> Podaj posiadane składniki lub kategorię przepisu</legend>
          <tr>
            <td><form:label path="name">Np. mleko, makaron, obiad, deser</form:label></td>
            <td><form:input path="name"/></td>
        </tr>

            <td><input type="submit" value="Szukaj"/></td>
        </tr>
    </fieldset>
</div>
</form:form>
</body>
</html>


