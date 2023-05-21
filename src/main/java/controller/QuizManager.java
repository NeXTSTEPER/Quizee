package controller;

import java.util.HashMap;
import java.util.Map;

public class QuizManager {
    private Map<Integer, String> questions;
    private Map<Integer, String> answers;

    public QuizManager() {
        questions = new HashMap<>();
        answers = new HashMap<>();
        createQuizzes();
    }

    // Create quiz questions and answers
    private void createQuizzes() {
        // Quiz 1
        questions.put(1, "What is the capital of France?");
        answers.put(1, "Paris");

        // Quiz 2
        questions.put(2, "What is the capital of Italy?");
        answers.put(2, "Rome");

        // Add more quizzes as required
    }

    // Get a specific question by index
    public String getQuestion(int index) {
        return questions.get(index);
    }

    // Get all quiz questions
    public Map<Integer, String> getQuestions() {
        return questions;
    }

    // Set all quiz questions
    public void setQuestions(Map<Integer, String> questions) {
        this.questions = questions;
    }

    // Get all quiz answers
    public Map<Integer, String> getAnswers() {
        return answers;
    }

    // Set all quiz answers
    public void setAnswers(Map<Integer, String> answers) {
        this.answers = answers;
    }

    // Check the user's answer for a given quiz index
    public String checkAnswer(int quizIndex, String userAnswer) {
        String correctAnswer = answers.get(quizIndex);
        if (correctAnswer != null && correctAnswer.equalsIgnoreCase(userAnswer)) {
            return "Correct!";
        } else {
            return "Incorrect. The correct answer is " + correctAnswer;
        }
    }
}
