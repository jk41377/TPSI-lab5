<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Java Web - laboratorium 4</title>
    </head>
    <style>
        table {
            text-align: center;
            border-collapse: collapse;
        }
        th, td {
            border: 1px solid black;
        }
    </style>
    <body>
         <table>
            <tr>
                <th>Imie</th>
                <th>Nazwisko</th>
                <th>Email</th>
            </tr>
        <c:forEach items="${personList}" var="person">
            <tr>
                <td>${person.firstName}</td>
                <td>${person.lastName}</td>
                <td>${person.email}</td>
            </tr>
        </c:forEach>
    </table>
    </body>
</html>
