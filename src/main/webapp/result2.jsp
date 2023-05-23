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
            width: 675px; /* Adjust width to match the form in first page */
            margin: 50px auto;
            padding: 20px;
            background-color: white;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.5), 0 0 20px rgba(0, 0, 0, 0.5);
            border-radius: 10px;
        }
        h1 {
            font-size: 3em; /* Adjust font size to match the h1 in first page */
            padding: 10px 20px;
            color: #007BFF;
            text-shadow: 2px 2px 4px #000000;
            text-align: center; /* Center align h1 to match the first page */
        }
        p {
            color: black; /* Adjust color to match the text color in first page */
            padding: 20px;
        }
        a {
        display: block; /* remains unchanged */
        background-color: #007BFF;
        color: white;
        padding: 10px 20px;
        border: none;
        text-decoration: none;
        text-align: center;
        margin: 20px auto; /* change from margin-top: 20px to margin: 20px auto to center the buttons */
        cursor: pointer;
        border-radius: 5px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        width: 90%; /* change from 100% to 90% to prevent buttons from hanging out */
        max-width: 90%; /* change from 100% to 90% */
    }
        a:hover {
            background-color: #0056b3;
        }
    </style>
</head>
    <body>
     <h1>Results for Quiz 2</h1>
        <div class="results"> <!-- Wrap the contents inside a div with class "results" -->
            <!-- Make the text a h1 to match the first page -->
            <p><%= request.getAttribute("result") %></p>
            <a href="Quiz2Servlet">Try Again</a>
            <a href="Quiz1Servlet">Go back to Quiz 1</a>
        </div>
    </body>
</html>
