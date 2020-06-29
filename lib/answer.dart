import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answer;
  Answer(this.selectHandler, this.answer);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(left: 50, right: 50),
      child: RaisedButton(
        color: Colors.deepPurple[200],
        hoverColor: Colors.grey,
        textColor: Colors.black,
        child: Column(
          children: <Widget>[
            Text(
              answer,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        onPressed: selectHandler,
      ),
    );
  }
}
