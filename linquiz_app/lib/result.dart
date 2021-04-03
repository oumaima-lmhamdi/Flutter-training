import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final Function f;
  Result(this.f);
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Done !",
          style: TextStyle(
            color: Colors.grey,
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 30,),
        RaisedButton(
          child: Text("Reset Test"),
          color: Colors.pinkAccent,
          onPressed: f,
        ),
      ],
    ));
  }
}
