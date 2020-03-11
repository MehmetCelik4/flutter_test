import 'package:flutter/widgets.dart';
import 'package:flutter_tester/answer.dart';
import 'package:flutter_tester/question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function answerHandler;
  final int questionIndex;
  Quiz({
    @required this.answerHandler,
    @required this.questions,
    @required this.questionIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(questions[questionIndex]["questionText"]),
        ...(questions[questionIndex]["answers"] as List<Map<String, Object>>).map((answer) {
          return Answer(() => answerHandler(answer["score"]), answer["text"]);
        }).toList()
      ],
    );
  }
}
