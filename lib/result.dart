import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;
  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 8) {
      resultText = "You are awesome!!";
    } else if (resultScore <= 12) {
      resultText = "Pretty good!";
    } else if (resultScore <= 16) {
      resultText = "not good man!";
    } else {
      resultText = "Pretty bad!!";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            onPressed: resetHandler,
            child: Text("Reset!"),
            textColor: Colors.green,
          )
        ],
      ),
    );
  }
}
