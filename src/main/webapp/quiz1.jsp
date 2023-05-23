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
      <!-- Add your title heading here -->
      <h1 class="title">Quizee - Movie Trivia Edition</h1>
      <form action="Quiz1Servlet" method="POST">
         <p>Question 1: ${question1}</p>
         <label for="answer1">Your Answer:</label>
         <select id="answer2" name="answer2">
            <option>Choose one of the following:</option>
            <option value="$450 million">$450 million</option>
            <option value="$500 million">$500 million</option>
            <option value="$600 million">$600 million</option>
         </select>
         <p>Question 2: ${question2}</p>
         <label for="answer2">Your Answer:</label>
         <select id="answer2" name="answer2">
            <option>Choose one of the following:</option>
            <option value="Two Academy Awards">Two Academy Awards</option>
            <option value="Four Academy Awards">Four Academy Awards</option>
            <option value="One Academy Award">One Academy Award</option>
         </select>
         <p>Question 3: ${question3}</p>
         <label for="answer3">Your Answer:</label>
         <select id="answer3" name="answer3">
            <option>Choose one of the following:</option>
            <option value="Annoy her">Annoy Her</option>
            <option value="Become as friendly as possible with her">Become as friendly as possible with her</option>
            <option value="Keep his distance">Keep his distance</option>
         </select>
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
          <select id="answer12" name="answer12">
            <option>Choose one of the following:</option>
             <option value="Yes">Yes. Ian always portrayed the Emperor in Star Wars</option>
            <option value="No in the original release the Emperor was portrayed by Marjorie Eaton and voiced by Clive Revill">No. In the original release the Emperor was portrayed by Marjorie Eaton and voiced by Clive Revill</option>
         </select>
         <p>Question 13: ${question13}</p>
         <label for="answer13">Your Answer:</label>
        <select id="answer13" name="answer13">
            <option>Choose one of the following:</option>
            <option value="Alec Guinness (Obi Wan Kenobi)">Alec Guinness (Obi Wan Kenobi)</option>
            <option value="Mark Hamill">Mark Hamill (Luke Skywalker)</option>
            <option value="Peter Cushing">Peter Cushing (Grand Moff Tarkin)</option>
         </select>
         <p>Question 14: ${question14}</p>
         <label for="answer14">Your Answer:</label>
         <select id="answer14" name="answer14">
            <option>Choose one of the following:</option>
            <option value="Writer">Writer</option>
            <option value="Warehouse worker">Warehouse worker</option>
            <option value="Truck Driver">Truck Driver</option>
         </select>
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
         <select id="answer20" name="answer20">
            <option>Choose one of the following:</option>
            <option value="Lyme Disease">Lyme Disease</option>
            <option value="Epilepsy">Epilepsy</option>
            <option value="Crohn's Disease">Crohn's Disease</option>
         </select>
         <p>Question 21: ${question21}</p>
         <label for="answer21">Your Answer:</label>
         <input type="text" id="answer21" name="answer21">
         <p>Question 22: ${question22}</p>
         <label for="answer22">Your Answer:</label>
         <select id="answer22" name="answer22">
            <option>Choose one of the following:</option>
            <option value="$25 million">$25 million</option>
            <option value="$6 million">$6 million</option>
            <option value="$15 million">$15 million</option>
         </select>
         <p>Question 23: ${question23}</p>
         <label for="answer23">Your Answer:</label>
         <input type="text" id="answer23" name="answer23">
         <p>Question 24: ${question24}</p>
         <label for="answer24">Your Answer:</label>
         <select id="answer24" name="answer24">
            <option>Choose one of the following:</option>
            <option value="He forgot that he was still in Terminator makeup - with a missing eye, exposed jawbone, and burned flesh">He forgot that he was still in Terminator makeup</option>
            <option value="He forgot he was still naked from the intro scene">He forgot he was still naked from the intro scene</option>
            <option value="He still had his guns">He still had his weapons from the set</option>
         </select>
         <p>Question 25: ${question25}</p>
         <label for="answer25">Your Answer:</label>
         <select id="answer25" name="answer25">
            <option>Choose one of the following:</option>
            <option value="shoebill stork">Shoebill Stork vocalizations</option>
            <option value="Cassowary">Cassowary vocalizations</option>
            <option value="tortoise sex">Tortoise Sex</option>
         </select>
         <br>
         <br>
         <input type="submit" value="Submit">
      </form>
   </body>
</html>