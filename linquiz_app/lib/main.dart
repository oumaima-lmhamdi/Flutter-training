import 'package:flutter/material.dart';
import 'questions.dart';

main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questions = [
    'Which option of the "ls" command used to display the inode number of a file?',
    'Which command to use to find the resource limit of a session?',
    'Which command is used to print a file?',
    'Which command is used to display the version of your system?',
    'Which command is used to display the name of your operating system?',
    'Which command is used to save a session of a user login to a file?',
    'Which command is used to change the I / O characteristics of the terminal?',
    'Which command is used to identify the file type?',
    'Which option of the "rm" command is used to delete a directory with all of its subdirectories?',
    'Which command creates an empty file if the file does not exist?'
  ];



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
        centerTitle: true,
        title: Text("LinQuiz", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,),),
      ),
      body: Container(
        child: Question(_questions[3]),
      ),
      ),
    );
  }
}