<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>

<title></title>
<jsp:include page="header.jsp"/>
<head>


</head>


<h3>Wyszukiwarka przepisów</h3>
<form:form method="POST"
           action="/new" modelAttribute="inputWord" >
    <div>
    <fieldset>
    <legend> Podaj posiadane składniki lub kategorię przepisu</legend>
    <tr>
        <%--<form id="signup-form" method="post" action="#" >--%>
            <%--<input type="text" name="name" id="name" placeholder="name" autocomplete="on" />--%>
            <%--<input type="submit" value="Szukaj" />--%>
        <%--</form>--%>
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


