package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Quiz2Servlet
 */
@WebServlet("/Quiz2Servlet")
public class Quiz2Servlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public Quiz2Servlet() {
        super();
    }

    // Handle GET requests
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        QuizManager quizManager = new QuizManager();
        String question = quizManager.getQuestion(2); // Get the second question
        request.setAttribute("question", question);
        request.getRequestDispatcher("quiz2.jsp").forward(request, response);
    }

    // Handle POST requests
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int quizIndex = 2; // This is the quiz index for Quiz2Servlet
        String userAnswer = request.getParameter("answer");

        QuizManager quizManager = new QuizManager();
        String result = quizManager.checkAnswer(quizIndex, userAnswer);

        request.setAttribute("result", result);
        request.getRequestDispatcher("result2.jsp").forward(request, response);
    }
}
