/**
 * @author - Alex Cox
 * CIS175 - Spring 2023

// This servlet handles quiz-related HTTP requests in a Java web application. 
// It provides GET and POST request handling for a quiz which contains 25 questions.
// For GET requests, it retrieves and sends the quiz questions to the client. 
// For POST requests, it validates the answers submitted by the user and calculates the user's score.
 */

package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Quiz1Servlet")
public class Quiz1Servlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public Quiz1Servlet() {
        super();
    }

    // Handle GET requests
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        QuizManager quizManager = new QuizManager();
        int numQuizzes = 25; // total number of quiz questions
        for (int i = 1; i <= numQuizzes; i++) {
            request.setAttribute("question" + i, quizManager.getQuestion(i));
        }
        request.getRequestDispatcher("/quiz1.jsp").forward(request, response);
    }

 // Handle POST requests
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        QuizManager quizManager = new QuizManager();
        int numQuizzes = 25; // total number of quiz questions
        int correctAnswers = 0; // counter for correct answers

        for (int i = 1; i <= numQuizzes; i++) {
            String userAnswer = request.getParameter("answer" + i);
            String result = quizManager.checkAnswer(i, userAnswer);
            request.setAttribute("result" + i, result);

            // Increment the correctAnswers counter if the answer is correct
            if (result.equals("Correct!")) {
                correctAnswers++;
            }
        }

        // Calculate the percentage score
        double percentageScore = ((double) correctAnswers / numQuizzes) * 100;

        // Add the percentage score to the request attributes
        request.setAttribute("percentageScore", percentageScore);

        request.getRequestDispatcher("/result1.jsp").forward(request, response);
    }

}
