import 'package:flutter/material.dart';
import 'package:linquiz_app/homePage.dart';
import 'quiz.dart';
import 'result.dart';

main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var started = false;
  void _resetQuiz() {
    setState(() {
      started = false;
      questionIndex=0;
      _totalScore = 0;
      scores.clear();
    });
  }

  List<Map<String, Object>> _questions = [
    {
      'questionText':
          'Which option of the "ls" command used to display the inode number of a file?',
      'answers': [
        {'text': 'l', 'score': 0},
        {'text': 'o', 'score': 0},
        {'text': 'a', 'score': 0},
        {'text': 'i', 'score': 2},
      ]
    },
    {
      'questionText':
          'Which command to use to find the resource limit of a session?',
      'answers': [
        {'text': 'ulimit', 'score': 2},
        {'text': 'sterlimit', 'score': 0},
        {'text': 'getrlimit', 'score': 0},
        {'text': 'rlimit', 'score': 0},
      ]
    },
    {
      'questionText': 'Which command is used to print a file?',
      'answers': [
        {'text': 'ptr', 'score': 0},
        {'text': 'lpr', 'score': 2},
        {'text': 'print', 'score': 0},
        {'text': 'None of the above', 'score': 0},
      ]
    },
    {
      'questionText':
          'Which command is used to display the version of your system?',
      'answers': [
        {'text': 'uname -r', 'score': 2},
        {'text': 'uname -t', 'score': 0},
        {'text': 'kernel', 'score': 0},
        {'text': 'uname -n', 'score': 0},
      ]
    },
    {
      'questionText':
          'Which command is used to display the name of your operating system?',
      'answers': [
        {'text': 'unix', 'score': 0},
        {'text': 'uname', 'score': 2},
        {'text': 'os', 'score': 0},
        {'text': 'kernel', 'score': 0},
      ]
    },
    {
      'questionText':
          'Which command is used to save a session of a user login to a file?',
      'answers': [
        {'text': 'script', 'score': 2},
        {'text': 'macro', 'score': 0},
        {'text': 'read', 'score': 0},
        {'text': 'None of the above', 'score': 0},
      ]
    },
    {
      'questionText':
          'Which command is used to change the I / O characteristics of the terminal?',
      'answers': [
        {'text': 'ctty', 'score': 0},
        {'text': 'ptty', 'score': 0},
        {'text': 'stty', 'score': 2},
        {'text': 'tty', 'score': 0},
      ]
    },
    {
      'questionText': 'Which command is used to identify the file type?',
      'answers': [
        {'text': 'Type', 'score': 0},
        {'text': 'File', 'score': 2},
        {'text': 'Finfo', 'score': 0},
        {'text': 'Info', 'score': 0},
      ]
    },
    {
      'questionText':
          'Which option of the "rm" command is used to delete a directory with all of its subdirectories?',
      'answers': [
        {'text': '-o', 'score': 0},
        {'text': '-p', 'score': 0},
        {'text': '-r', 'score': 2},
        {'text': '-b', 'score': 0},
      ]
    },
    {
      'questionText':
          'Which command creates an empty file if the file does not exist?',
      'answers': [
        {'text': 'cat', 'score': 0},
        {'text': 'touch', 'score': 2},
        {'text': 'red', 'score': 0},
        {'text': 'ed', 'score': 0},
      ]
    }
  ];

  int _totalScore = 0;
  int questionIndex = 0;
  var scores = new List();

  void answerQuestion(score) {
    scores.add(score);
    _totalScore += score;
    setState(() {
      questionIndex += 1;
    });
  }

  void s() {
    setState(() {
      started = true;
    });
  }

  // String get comment{
  //   String commentText;

  //   return commentText;
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: !started == true
          ? HomePage(s)
          : Scaffold(
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
                  child: questionIndex < _questions.length
                      ? Quiz(_questions, questionIndex, answerQuestion)
                      : Result(_resetQuiz, _totalScore)),
                       
              floatingActionButton: (questionIndex < _questions.length && questionIndex>0)? 
              FloatingActionButton(
                onPressed: () {
                  setState(() {
                    questionIndex -= 1;
                    _totalScore -= scores[questionIndex];
                  });
                },
                child: Icon(
                  Icons.arrow_back_rounded,
                  color: Colors.deepPurpleAccent,
                ),
              ) : null, 
            ),
    );
  }
}
