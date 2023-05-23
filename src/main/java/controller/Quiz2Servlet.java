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
        String movieTitle = quizManager.getRandomMovieTitle(); // Get a random movie title
        String shuffledMovieTitle = quizManager.shuffle(movieTitle);

        // Store the original movie title in the session.
        request.getSession().setAttribute("originalTitle", movieTitle);

        request.setAttribute("question", shuffledMovieTitle);
        request.getRequestDispatcher("quiz2.jsp").forward(request, response);
    }

    // Handle POST requests
 // Handle POST requests
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String userAnswer = request.getParameter("answer");

        // Retrieve the original (unscrambled) movie title from the session.
        String originalTitle = (String) request.getSession().getAttribute("originalTitle");

        QuizManager quizManager = new QuizManager();
        String result;
        if (quizManager.MOVIE_TITLES.contains(userAnswer)) {
            result = "Correct!";
        } else {
            result = "Wrong answer. The correct answer was: " + originalTitle;
        }

        request.setAttribute("result", result);
        request.getRequestDispatcher("result2.jsp").forward(request, response);
    }


}
