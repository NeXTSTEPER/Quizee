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
        .results {
            width: 500px;
            margin: 50px auto;
            padding: 20px;
            background-color: white;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.5), 0 0 20px rgba(0, 0, 0, 0.5);
            border-radius: 10px;
            text-align: center;
        }
        h1 {
            font-size: 2.5em;
            padding: 10px 20px;
            color: #007BFF;
            text-shadow: 2px 2px 4px #000000;
        }
        p {
         color: white;
            padding: 20px;
        }
        a {
            display: block;
            background-color: #007BFF;
            color: white;
            padding: 10px 20px;
            border: none;
            text-decoration: none;
            text-align: center;
            margin-top: 20px;
            cursor: pointer;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        a:hover {
            background-color: #0056b3;
        }
    </style>
</head>
    <body>
        <p>Result for Quiz 2: <%= request.getAttribute("result") %></p>
        <a href="Quiz1Servlet">Go back to Quiz 1</a>
    </body>
</html>
