<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
      <style>
         body {
         font-family: Arial, sans-serif;
         margin: 0;
         padding: 0;
         background: linear-gradient(45deg, #1b1b1b, #3d3d3d);
         }
         h1.title {
         font-size: 3em;
         color: #007BFF;
         text-align: center;
         padding-top: 20px;
         text-shadow: 2px 2px 4px #000000;
         }
         form {
         width: 600px;
         margin: 50px auto;
         padding: 20px;
         background-color: white;
         box-shadow: 0 0 10px rgba(0, 0, 0, 0.5), 0 0 20px rgba(0, 0, 0, 0.5);
         border-radius: 10px;
         }
         label {
         display: block;
         margin-bottom: 10px;
         }
         input[type="text"], select {
         width: 100%;
         padding: 10px;
         margin-bottom: 20px;
         box-sizing: border-box;
         border-radius: 5px;
         border: 1px solid #ccc;
         }
         input[type="submit"] {
         background-color: #007BFF;
         color: white;
         padding: 10px 20px;
         border: none;
         cursor: pointer;
         border-radius: 5px;
         box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
         }
         input[type="submit"]:hover {
         background-color: #0056b3;
         }
      </style>
   </head>
    <body>
          <h1 class="title">Quizee - Movie Title Scrambler</h1>
      <form method="post" action="Quiz2Servlet">
            <p>Can you figure out what movie this is: <%= request.getAttribute("question") %></p>
            <label for="answer">What movie is this?</label>
            <input type="text" id="answer" name="answer">
            <input type="submit" value="Submit">
        </form>
    </body>
</html>