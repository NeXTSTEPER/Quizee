/**
 * @author - Alex Cox
 * CIS175 - Spring 2023
 * 
 */


package controller;

import java.util.HashMap;
import java.util.Map;

public class QuizManager {
    private Map<Integer, Quiz> quizzes;

    public QuizManager() {
    	//To store the quiz questions
        quizzes = new HashMap<>();
        createQuizzes();
    }

    // Create quiz questions-answer pairs
    private void createQuizzes() {
    	quizzes.put(1, new Quiz("What is the box office collection of 'Terminator 2: Judgment Day'?", "$500 million"));
        quizzes.put(2, new Quiz("What awards did 'Terminator 2: Judgment Day' win?", "Four Academy Awards"));
        quizzes.put(3, new Quiz("During the making of Alien, What did Sir Ridley Scott tell Yaphet Kotto to do to Sigourney Weaver off-camera in the movie 'Alien'?", "Annoy her"));
        quizzes.put(4, new Quiz("In what 1981 movie did Tom Cruise make his film debut?", "Endless Love"));
        quizzes.put(5, new Quiz("In what 1983 movie does actor Tom Cruise dance in his underwear to the song 'Old Time Rock & Roll'?", "Risky Business"));
        quizzes.put(6, new Quiz("What song do Meg Ryan and Anthony Edwards (Goose) sing together in 'Top Gun'?", "Great Balls of Fire"));
        quizzes.put(7, new Quiz("Who recorded the song Danger Zone from Top Gun?", "Kenny Loggins"));
        quizzes.put(8, new Quiz("In what movie did actor Tom Hanks make his directorial debut?", "That Thing You Do"));
        quizzes.put(9, new Quiz("What 1980s TV show did actor Tom Hanks star as Buffy Wilson?", "Bosom Buddies"));
        quizzes.put(10, new Quiz("In what 1988 movie did Tom Hanks play a young teen who wakes up a grown man after making a wish on a fortune-telling machine?", "Big"));
        quizzes.put(11, new Quiz("After “Big,” Tom Hanks and Penny Marshall teamed up for which popular baseball movie?", "A League of Their Own"));
        quizzes.put(12, new Quiz("Did Ian McDiarmid appear as the Emperor in the original 1980 release of the 'Empire Strikes Back' ?", "No in the original release the Emperor was portrayed by Marjorie Eaton and voiced by Clive Revill"));
        quizzes.put(13, new Quiz("Which actor was nominated for best supporting actor at the Oscars for his role in Star Wars?", "Alec Guinness (Obi Wan Kenobi)"));
        quizzes.put(14, new Quiz("Before he worked on movies like The Terminator what did James Cameron do?", "Truck Driver"));
        quizzes.put(15, new Quiz("In what year was 'The Terminator' released?", "1984"));
        quizzes.put(16, new Quiz("The iconic Matrix code in The Matrix comes from a cookbook for which kind of food?", "Sushi"));
        quizzes.put(17, new Quiz("Who was originally considered for the role of the T-800 in the Terminator but was deemed too nice?", "OJ Simpson"));
        quizzes.put(18, new Quiz("What is the name of the character played by Linda Hamilton in 'The Terminator'?", "Sarah Connor"));
        quizzes.put(19, new Quiz("What is the significance of the phrase 'I'll be back' in 'The Terminator'?", "It is a catchphrase used by Arnold Schwarzenegger's character before he leaves a scene, usually implying a violent return"));
        quizzes.put(20, new Quiz("Writer Dan O'Bannon's personal experience with what ailment inspired the creation of the infamous chestburster scene in the movie 'Alien'?", "Crohn's disease"));        
        quizzes.put(21, new Quiz("Who composed the music for 'The Terminator'?", "Brad Fiedel"));
        quizzes.put(22, new Quiz("What was the budget of 'The Terminator'?", "$6 million"));
        quizzes.put(23, new Quiz("What percentage of the fight scenes did Keanu Reeves perform himself in 'John Wick: Chapter 2?", "95"));
        quizzes.put(24, new Quiz("What happened when Arnold Schwarzenegger went to a restaurant during a break in the filming of 'The Terminator'?", "He forgot that he was still in Terminator makeup - with a missing eye, exposed jawbone, and burned flesh"));
        quizzes.put(25, new Quiz("What is the unique source of the sounds the Velociraptors make when communicating in 'Jurassic Park'?", "tortoise sex"));
    }

    // Get a specific question by index
    public String getQuestion(int index) {
        Quiz quiz = quizzes.get(index);
        return quiz != null ? quiz.getQuestion() : null;
    }

    // Get a specific answer by index
    public String getAnswer(int index) {
        Quiz quiz = quizzes.get(index);
        return quiz != null ? quiz.getAnswer() : null;
    }

    // Get all quizzes
    public Map<Integer, Quiz> getQuizzes() {
        return quizzes;
    }

    // Check the user's answer for a given quiz index
    public String checkAnswer(int quizIndex, String userAnswer) {
        String correctAnswer = getAnswer(quizIndex);
        if (correctAnswer != null && correctAnswer.equalsIgnoreCase(userAnswer)) {
            return "Correct!";
        } else {
            return "Incorrect. The correct answer is " + correctAnswer;
        }
    }
}