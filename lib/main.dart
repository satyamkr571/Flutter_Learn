import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

// void main() {
//   runApp(MyApp());
// }
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var questionIndex = 0;
  int totalScore = 0;
  var _questions = [
    {
      'questionText': 'What\'s your favorite color ?',
      'answer': [
        {'text': 'RED', 'score': 9},
        {'text': 'BLUE', 'score': 6},
        {'text': 'GREEN', 'score': 5},
        {'text': 'WHITE', 'score': 3},
      ],
    },
    {
      'questionText': 'What\'s your favorite animal ?',
      'answer': [
        {'text': 'LION', 'score': 9},
        {'text': 'TIGER', 'score': 8},
        {'text': 'ELEPHANT', 'score': 3},
        {'text': 'PANTHER', 'score': 8},
      ],
    },
    {
      'questionText': 'What\'s your favorite city ?',
      'answer': [
        {'text': 'MUMBAI', 'score': 8},
        {'text': 'PUNE', 'score': 5},
        {'text': 'DEHRADUN', 'score': 2},
        {'text': 'BANGALORE', 'score': 4},
      ],
    },
  ];
  void _onSubmitAnswer(int score) {
    setState(() {
      questionIndex = questionIndex + 1;
      totalScore += score;
    });
  }

  void _restartQuiz() {
    setState(() {
      questionIndex = 0;
      totalScore = 0;
    });
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.deepPurple,
            title: Text('HOME'),
          ),
          body: questionIndex < _questions.length
              ? Quiz(
                  onSubmitAns: _onSubmitAnswer,
                  questions: _questions,
                  questionIndex: questionIndex,
                )
              : Result(totalScore, _restartQuiz)),
    );
  }
}
