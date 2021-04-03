import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String textAnswer;
  final Function x;

  const Answer(this.textAnswer, this.x);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.grey, borderRadius: BorderRadius.circular(150) ),
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      width: double.infinity,
      child: RaisedButton(
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 1),
        child: Text(
          textAnswer,
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        onPressed: x,
        color: Colors.greenAccent,
      ),
    );
  }
}
