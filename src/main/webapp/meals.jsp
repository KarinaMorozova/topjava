<%@ page import="ru.javawebinar.topjava.util.TimeUtil" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page contentType="text/html;charset=UTF-8" %>

<html lang="ru">
<head>
    <title>Meals</title>
    <style>
        .normal {color:green;}
        .exceeded {color:red;}
    </style>

</head>
<body>

<h3><a href="index.html">Home</a></h3>
<h2>Meals</h2>

<table border = 1 cellspacing="2" cellpadding="2">
    <caption>Meals To |  Приемы пищи</caption>
    <thead>
        <tr>
            <th>DateTime | Дата время</th>
            <th>Description | Описание</th>
            <th>Calories | Калории </th>
            <th>Excess | Превышение</th>
        </tr>
    </thead>

    <c:forEach items="${requestScope.meallist}" var="take">
        <jsp:useBean id="take" scope="page" type="ru.javawebinar.topjava.model.MealTo"/>
        <tr class="${take.excess ? 'exceeded' : 'normal'} ">
            <td>
                <%-- с форматированием через fmt --%>
                <%-- <fmt:parseDate value="${take.dateTime}" pattern="y-M-dd'T'H:m" var="parsedDate"/>
                <fmt:formatDate value="${parsedDate}" pattern="yyyy.MM.dd HH:mm"/> %>
                <%-- с обращением к функции класса TimeUtil --%>
                <%=TimeUtil.toString(take.getDateTime())%>
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