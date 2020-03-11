import 'package:flutter/material.dart';
import 'package:flutter_tester/quiz.dart';
import 'package:flutter_tester/result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _initIndex = 0;
  var _totalScore = 0;

  final _questions = const [
    {
      "questionText": "What is your favorite color?",
      "answers": [
        {"text": "Black", "score": 4},
        {"text": "Red", "score": 2},
        {"text": "Green", "score": 9},
        {"text": "White", "score": 4}
      ]
    },
    {
      "questionText": "What is your favorite animal?",
      "answers": [
        {"text": "Cat", "score": 4},
        {"text": "Dog", "score": 2},
        {"text": "Bird", "score": 9},
        {"text": "Tiger", "score": 4}
      ]
    },
    {
      "questionText": "Who is your favorite instructor?",
      "answers": [
        {"text": "Catrine", "score": 4},
        {"text": "Jane", "score": 2},
        {"text": "Joe", "score": 9},
        {"text": "Max", "score": 4}
      ]
    },
  ];

  void _answerQuestion(int score) {
    if (_initIndex < _questions.length) {
      setState(() {
        _initIndex = _initIndex + 1;
        _totalScore += score;
        print(_initIndex);
      });
    }
  }

  void _resetQuiz() {
    setState(() {
      _initIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My App"),
        ),
        body: _initIndex < _questions.length
            ? Quiz(
                answerHandler: _answerQuestion,
                questions: _questions,
                questionIndex: _initIndex)
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
