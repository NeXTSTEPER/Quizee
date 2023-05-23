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
        
        // Get a random movie title
        String movieTitle = quizManager.getRandomMovieTitle();
        
        // Shuffle the movie title
        String shuffledMovieTitle = quizManager.shuffle(movieTitle);

        // Store the original movie title in the session.
        request.getSession().setAttribute("originalTitle", movieTitle);

        // Set the shuffled movie title as a question attribute and forward the request to quiz2.jsp
        request.setAttribute("question", shuffledMovieTitle);
        request.getRequestDispatcher("quiz2.jsp").forward(request, response);
    }

    // Handle POST requests
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Get the user's answer from the request parameters
        String userAnswer = request.getParameter("answer");

        // Retrieve the original (unscrambled) movie title from the session.
        String originalTitle = (String) request.getSession().getAttribute("originalTitle");

        QuizManager quizManager = new QuizManager();
        String result;
        
        // Check if the user's answer is correct by comparing it with the list of movie titles
        if (quizManager.MOVIE_TITLES.contains(userAnswer)) {
            result = "Correct!";
        } else {
            result = "Wrong answer. The correct answer was: " + originalTitle;
        }

        // Set the result message as a request attribute and forward the request to result2.jsp
        request.setAttribute("result", result);
        request.getRequestDispatcher("result2.jsp").forward(request, response);
    }
}
