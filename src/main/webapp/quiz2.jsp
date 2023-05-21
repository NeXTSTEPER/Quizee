<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <body>
      <form method="post" action="Quiz2Servlet">
            <p>Quiz 2: <%= request.getAttribute("question") %></p>
            <label for="answer">Your Answer:</label>
            <input type="text" id="answer" name="answer">
            <input type="submit" value="Submit">
        </form>
    </body>
</html>