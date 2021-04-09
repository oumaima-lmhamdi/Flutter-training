import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final Function f;
  final resultScore;
  Result(this.f, this.resultScore);
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Your score is : ",
          style: TextStyle(
            color: Colors.grey,
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 20,),
        Text(
          "$resultScore/20",
          style: TextStyle(
            color: Colors.deepPurpleAccent,
            fontSize: 40,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 30,),
        RaisedButton(
          padding: EdgeInsets.symmetric(vertical:15, horizontal:25,),
          child: Text("Reset Quiz", style: TextStyle(color:Colors.white, fontSize:25, fontWeight:FontWeight.bold),),
          color: Colors.pinkAccent,
          onPressed: f,
        ),
      ],
    ));
  }
}
