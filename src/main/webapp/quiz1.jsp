<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
<html>
    <body>
        <form action="Quiz1Servlet" method="POST">
   <p>Quiz 1: ${question}</p>
      <label for="answer">Your Answer:</label>
            <input type="text" id="answer" name="answer">
            <input type="submit" value="Submit">
        </form>
    </body>
</html>
