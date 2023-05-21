<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <body>
        <p>Result for Quiz 1: <%= request.getAttribute("result") %></p>
        <a href="Quiz2Servlet">Go to Quiz 2</a>
    </body>
</html>