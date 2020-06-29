import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;
  Result(this.resultScore, this.resetHandler);
  String get resultText {
    String resultText;
    if (resultScore <= 10) {
      resultText = 'Thank You !!\n\n\nYou are innocent.';
    } else if (resultScore <= 16) {
      resultText = 'Thank You !!\n\n\nYou are Strange?';
    } else {
      resultText = 'Thank You !!\n\n\nYou are dnager.';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Text(
            resultText,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text("Restart the Quiz."),
            onPressed: resetHandler,
            textColor: Colors.blue,
          ),
        ],
      ),
      margin: EdgeInsets.only(
        top: 200,
        left: 90,
        right: 10,
      ),
    );
  }
}
