import 'package:flutter/material.dart';

// Define the data model for the questions
class Question {
  String questionText;
  List<String> options;
  int correctAnswerIndex;

  Question(
      {required this.questionText,
      required this.options,
      required this.correctAnswerIndex});
}

class AssessmentPage extends StatefulWidget {


  @override
  _AssessmentPageState createState() => _AssessmentPageState();
}

class _AssessmentPageState extends State<AssessmentPage> {
  // Define the list of questions
  List<Question> questions = [
    Question(
        questionText: 'What is the capital of France?',
        options: ['Paris', 'London', 'Madrid', 'Berlin'],
        correctAnswerIndex: 0),
    Question(
        questionText: 'What is the largest planet in our solar system?',
        options: ['Mars', 'Jupiter', 'Venus', 'Saturn'],
        correctAnswerIndex: 1),
    Question(
        questionText: 'What is H2O?',
        options: ['Water', 'Salt', 'Sugar', 'Oil'],
        correctAnswerIndex: 0),
  ];

  // Define variables to keep track of user's progress
  int currentQuestionIndex = 0;
  int numCorrectAnswers = 0;

  // Define a function to handle user's answer submission
  void submitAnswer(int selectedIndex) {
    if (selectedIndex == questions[currentQuestionIndex].correctAnswerIndex) {
      setState(() {
        numCorrectAnswers++;
        if (currentQuestionIndex < questions.length - 1) {
          currentQuestionIndex++;
        } else {
          // End of assessment, show results
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (context) => ResultPage(
                        numCorrectAnswers: numCorrectAnswers,
                        questions: questions,
                      )));
        }
      });
    } else {
      // User's answer is incorrect, show error message
      showDialog(
          context: context,
          builder: (_) => AlertDialog(
                title: const Text("Incorrect"),
                content: const Text("Please try again."),
                actions: [
                  ElevatedButton(
                    child: const Text("OK"),
                    onPressed: () => Navigator.pop(context),
                  )
                ],
              ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Online Assessment Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Display the question text
            Text(
              questions[currentQuestionIndex].questionText,
              style:
                  const TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16.0),
            // Display the answer options as buttons
            ...questions[currentQuestionIndex]
                .options
                .asMap()
                .entries
                .map((option) => ElevatedButton(
                      // color: Colors.blue,
                      // textColor: Colors.white,
                      onPressed: () => submitAnswer(option.key),
                      child: Text(option.value),
                    ))
                .toList(),
          ],
        ),
      ),
    );
  }
}

// Define the results page
class ResultPage extends StatelessWidget {
  final int numCorrectAnswers;

  ResultPage({required this.numCorrectAnswers, questions});
  List questions = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Assessment Results'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'You got $numCorrectAnswers out of ${questions.length} questions correct!',
              style:
                  const TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Retry'),
            )
          ],
        ),
      ),
    );
  }
}
