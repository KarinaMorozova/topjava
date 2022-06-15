<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" %>

<html lang="ru">
<head>
    <title>Meals</title>
</head>
<body>

<h3><a href="index.html">Home</a></h3>
<hr>
<h2>Meals</h2>

<table border = 1 cellspacing="2" cellpadding="2">
    <caption>Meals To |  Приемы пищи</caption>
    <tr><th>DateTime | Дата время</th><th>Description | Описание</th><th>Calories | Калории </th><th>Excess | Превышение</th>

    <c:forEach items="${requestScope.mealtolist}" var="take">
        <tr>
            <td>
                <c:out value="${take.dateTime}"/>
            </td>
            <td>
                <c:out value="${take.description}"/>
            </td>
            <td>
                <c:out value="${take.calories}"/>
            </td>
            <td>
                <c:out value="${take.excess}"/>
            </td>
        </tr>

    </c:forEach>

</table>

</body>
</html>