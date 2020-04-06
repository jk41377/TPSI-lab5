<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true" %>
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
        <c:forEach items="${students}" var="student">
            <tr>
                <td>${student.firstName}</td>
                <td>${student.lastName}</td>
                <td>${student.email}</td>
            </tr>
        </c:forEach>
        </table>
        
        <br />
        <br />
    
        <form action='/lab4/students' method='post'>
            Imię:
            <input type='text' name='firstName'>
            Nazwisko:
            <input type='text' name='lastName'>
            E-mail:
            <input type='text' name='email'>
            <input type='submit'>
        </form>
    </body>
</html>
