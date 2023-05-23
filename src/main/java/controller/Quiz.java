package controller;

public class Quiz {
    private String question; // Stores the quiz question
    private String answer; // Stores the answer to the quiz question

    public Quiz(String question, String answer) {
        this.question = question; // Initialize the question field with the provided question
        this.answer = answer; // Initialize the answer field with the provided answer
    }

    public String getQuestion() {
        return question; // Return the quiz question
    }

    public String getAnswer() {
        return answer; // Return the answer to the quiz question
    }
}
