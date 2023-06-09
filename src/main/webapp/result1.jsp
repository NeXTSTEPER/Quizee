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
<h1>Your score: <%= request.getAttribute("percentageScore") %> %</h1>

    <p><strong>Result for Question 1:</strong> ${result1}</p>
    <p><strong>Result for Question 2:</strong> ${result2}</p>
    <p><strong>Result for Question 3:</strong> ${result3}</p>
    <p><strong>Result for Question 4:</strong> ${result4}</p>
    <p><strong>Result for Question 5:</strong> ${result5}</p>
    <p><strong>Result for Question 6:</strong> ${result6}</p>
    <p><strong>Result for Question 7:</strong> ${result7}</p>
    <p><strong>Result for Question 8:</strong> ${result8}</p>
    <p><strong>Result for Question 9:</strong> ${result9}</p>
    <p><strong>Result for Question 10:</strong> ${result10}</p>
    <p><strong>Result for Question 11:</strong> ${result11}</p>
    <p><strong>Result for Question 12:</strong> ${result12}</p>
    <p><strong>Result for Question 13:</strong> ${result13}</p>
    <p><strong>Result for Question 14:</strong> ${result14}</p>
    <p><strong>Result for Question 15:</strong> ${result15}</p>
    <p><strong>Result for Question 16:</strong> ${result16}</p>
    <p><strong>Result for Question 17:</strong> ${result17}</p>
    <p><strong>Result for Question 18:</strong> ${result18}</p>
    <p><strong>Result for Question 19:</strong> ${result19}</p>
    <p><strong>Result for Question 20:</strong> ${result20}</p>
    <p><strong>Result for Question 21:</strong> ${result21}</p>
    <p><strong>Result for Question 22:</strong> ${result22}</p>
    <p><strong>Result for Question 23:</strong> ${result23}</p>
    <p><strong>Result for Question 24:</strong> ${result24}</p>
    <p><strong>Result for Question 25:</strong> ${result25}</p>
    <a href="Quiz2Servlet">Quiz 2</a>
</body>
</html>
