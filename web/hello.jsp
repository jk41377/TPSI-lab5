<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Java Web - laboratorium 4</title>
    </head>
    <body>
        <!--Przy wpisywanie 'normalnych' danych EL i JSTL zachowują się tak samo
        ale w przypadku podania HTMLa, EL zinterpretuje podany kod i go wykona. 
        JSTL za to dosłownie wyświetli kod HTML, wraz ze znacznikami. -->
        
         <h1>(EL) Witaj, ${person.firstName} ${person.lastName}!</h1>
         <a href = "mailto: ${person.email}">Wyslij maila</a> 
         
         <h1>(JSTL) Witaj, <c:out value="${person.firstName} ${person.lastName}"/>!</h1>
         <a href = "mailto: ${person.email}">Wyslij maila</a> 
         
         <c:forEach items="${dniTygodnia}" var="dzien">
            <p>
                ${dzien}
            </p>
        </c:forEach>
    </body>
</html>