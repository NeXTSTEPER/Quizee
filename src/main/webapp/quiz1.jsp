<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
<html>
<head>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f0f0f0;
        }
        form {
            width: 500px;
            margin: 50px auto;
            padding: 20px;
            background-color: white;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        label {
            display: block;
            margin-bottom: 10px;
        }
        input[type="text"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            box-sizing: border-box;
        }
        input[type="submit"] {
            background-color: #007BFF;
            color: white;
            padding: 10px 20px;
            border: none;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: #0056b3;
        }
        h1 {
            text-align: center;
            margin-bottom: 40px;
        }
    </style>
</head>
    <body>
       <form action="Quiz1Servlet" method="POST">
            <p>Question 1: ${question1}</p>
            <label for="answer1">Your Answer:</label>
            <input type="text" id="answer1" name="answer1">
            
            <p>Question 2: ${question2}</p>
            <label for="answer2">Your Answer:</label>
            <input type="text" id="answer2" name="answer2">
            
            <p>Question 3: ${question3}</p>
            <label for="answer3">Your Answer:</label>
            <input type="text" id="answer3" name="answer3">

            <p>Question 4: ${question4}</p>
            <label for="answer4">Your Answer:</label>
            <input type="text" id="answer4" name="answer4">

            <p>Question 5: ${question5}</p>
            <label for="answer5">Your Answer:</label>
            <input type="text" id="answer5" name="answer5">

            <p>Question 6: ${question6}</p>
            <label for="answer6">Your Answer:</label>
            <input type="text" id="answer6" name="answer6">

            <p>Question 7: ${question7}</p>
            <label for="answer7">Your Answer:</label>
            <input type="text" id="answer7" name="answer7">

            <p>Question 8: ${question8}</p>
            <label for="answer8">Your Answer:</label>
            <input type="text" id="answer8" name="answer8">

            <p>Question 9: ${question9}</p>
            <label for="answer9">Your Answer:</label>
            <input type="text" id="answer9" name="answer9">

            <p>Question 10: ${question10}</p>
            <label for="answer10">Your Answer:</label>
            <input type="text" id="answer10" name="answer10">

             <p>Question 11: ${question11}</p>
            <label for="answer11">Your Answer:</label>
            <input type="text" id="answer11" name="answer11">

             <p>Question 12: ${question12}</p>
            <label for="answer12">Your Answer:</label>
            <input type="text" id="answer12" name="answer12">

             <p>Question 13: ${question13}</p>
            <label for="answer13">Your Answer:</label>
            <input type="text" id="answer13" name="answer13">
            
              <p>Question 14: ${question14}</p>
            <label for="answer14">Your Answer:</label>
            <input type="text" id="answer14" name="answer14">

            <p>Question 15: ${question15}</p>
            <label for="answer15">Your Answer:</label>
            <input type="text" id="answer15" name="answer15">

            <p>Question 16: ${question16}</p>
            <label for="answer16">Your Answer:</label>
            <input type="text" id="answer16" name="answer16">

            <p>Question 17: ${question17}</p>
            <label for="answer17">Your Answer:</label>
            <input type="text" id="answer17" name="answer17">

            <p>Question 18: ${question18}</p>
            <label for="answer18">Your Answer:</label>
            <input type="text" id="answer18" name="answer18">

            <p>Question 19: ${question19}</p>
            <label for="answer19">Your Answer:</label>
            <input type="text" id="answer19" name="answer19">

            <p>Question 20: ${question20}</p>
            <label for="answer20">Your Answer:</label>
            <input type="text" id="answer20" name="answer20">

            <p>Question 21: ${question21}</p>
            <label for="answer21">Your Answer:</label>
            <input type="text" id="answer21" name="answer21">

            <p>Question 22: ${question22}</p>
            <label for="answer22">Your Answer:</label>
            <input type="text" id="answer22" name="answer22">

            <p>Question 23: ${question23}</p>
            <label for="answer23">Your Answer:</label>
            <input type="text" id="answer23" name="answer23">
            
              <p>Question 24: ${question24}</p>
            <label for="answer24">Your Answer:</label>
            <input type="text" id="answer24" name="answer24">
            
              <p>Question 25: ${question25}</p>
            <label for="answer25">Your Answer:</label>
            <input type="text" id="answer25" name="answer25">
			<br>
			<br>
			<br>
            <input type="submit" value="Submit">
        </form>
    </body>
</html>