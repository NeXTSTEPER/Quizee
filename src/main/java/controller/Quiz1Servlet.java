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
        String question = quizManager.getQuestion(1); // Get the first question

        request.setAttribute("question", question);
        request.getRequestDispatcher("/quiz1.jsp").forward(request, response);
    }

    // Handle POST requests
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int quizIndex = 1; // This is the quiz index for Quiz1Servlet
        String userAnswer = request.getParameter("answer");

        QuizManager quizManager = new QuizManager();
        String result = quizManager.checkAnswer(quizIndex, userAnswer);

        request.setAttribute("result", result);
        request.getRequestDispatcher("/result1.jsp").forward(request, response);
    }
}
