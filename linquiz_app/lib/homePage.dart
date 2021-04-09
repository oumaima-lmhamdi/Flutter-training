import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  final Function s ;

  const HomePage(this.s);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 150,
        backgroundColor: Colors.pinkAccent,
        centerTitle: true,
          title: Text(
            "LinQuiz",
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
      ),
      ) ,
    ),
    body: Center(
      child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[
          Container(
            margin: EdgeInsets.symmetric(vertical:30,horizontal:20,),
            child: Text("Hello, Start the quiz by clicking on the button above ! \nGL <3", style: TextStyle(color: Colors.blueGrey, fontSize: 25, fontWeight: FontWeight.bold), textAlign: TextAlign.center,)),
          SizedBox(height:30),
          Container(
            child:RaisedButton(
            padding: EdgeInsets.symmetric(vertical:10,horizontal:20,),
            color: Colors.deepPurpleAccent,
            child: Text("Start Quiz", style: TextStyle(fontSize:30,),),
            textColor: Colors.white,
            onPressed:s,
                      ),
          ),
                    ],
                  ),
                ),
                );
              }
}