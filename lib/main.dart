import 'package:flutter/material.dart';
import 'package:flutter_tester/question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _initIndex = 0;

  void _answerQuestion() {
    setState(() {
    _initIndex = _initIndex + 1;
    print(_initIndex);
      
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      "What is your favorite color?",
      "What is your favorite animal?",
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My App"),
        ),
        body: Column(
          children: <Widget>[

            Question(questions[_initIndex]),
            RaisedButton(
              child: Text("Answer 1"),
              onPressed: () => print("Answer one !"),
            ),
            RaisedButton(
              child: Text("Answer 2"),
              onPressed: _answerQuestion,
            ),
            RaisedButton(
              child: Text("Answer 3"),
              onPressed: _answerQuestion,
            )
          ],
        ),
      ),
    );
  }
}
