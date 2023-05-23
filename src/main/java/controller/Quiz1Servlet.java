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
        for (int i = 1; i <= numQuizzes; i++) {
            String userAnswer = request.getParameter("answer" + i);
            String result = quizManager.checkAnswer(i, userAnswer);
            request.setAttribute("result" + i, result);
        }
        request.getRequestDispatcher("/result1.jsp").forward(request, response);
    }
}
