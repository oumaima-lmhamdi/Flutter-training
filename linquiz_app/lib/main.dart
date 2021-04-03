import 'package:flutter/material.dart';
import 'answers.dart';
import 'questions.dart';
import 'quiz.dart';
import 'result.dart';

main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  void _resetQuiz(){
    setState(() {
      questionIndex = 0;
    });
  }
  List<Map<String, Object>> _questions = [
    {
      'questionText':
          'Which option of the "ls" command used to display the inode number of a file?',
      'answers': ['l', 'o', 'a', 'i']
    },
    {
      'questionText':
          'Which command to use to find the resource limit of a session?',
      'answers': ['ulimit', 'sterlimit', 'getrlimit', 'rlimit']
    },
    {
      'questionText': 'Which command is used to print a file?',
      'answers': ['ptr', 'lpr', 'print', 'None of the above']
    },
    {
      'questionText':
          'Which command is used to display the version of your system?',
      'answers': ['uname -r', 'uname -t', 'kernel', 'uname -n']
    },
    {
      'questionText':
          'Which command is used to display the name of your operating system?',
      'answers': ['unix', 'uname', 'os', 'kernel']
    },
    {
      'questionText':
          'Which command is used to save a session of a user login to a file?',
      'answers': ['script', 'macro', 'read', 'None of the above']
    },
    {
      'questionText':
          'Which command is used to change the I / O characteristics of the terminal?',
      'answers': ['ctty', 'ptty', 'stty', 'tty']
    },
    {
      'questionText': 'Which command is used to identify the file type?',
      'answers': ['Type', 'File', 'Finfo', 'Info']
    },
    {
      'questionText':
          'Which option of the "rm" command is used to delete a directory with all of its subdirectories?',
      'answers': ['o', 'p', 'r', 'b']
    },
    {
      'questionText':
          'Which command creates an empty file if the file does not exist?',
      'answers': ['cat', 'touch', 'red', 'ed']
    }
  ];

  int questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex += 1;
    });
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "LinQuiz",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Container(
          child: questionIndex < _questions.length? Quiz(_questions, questionIndex, answerQuestion) 
              : Result(_resetQuiz)
        ),
      ),
    );
  }
}
