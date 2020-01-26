import 'package:flutter/material.dart';
import 'package:flutter_quiz/answer.dart';
import 'package:flutter_quiz/question.dart';

void main() => runApp(QuizApp());

class QuizApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _QuizAppState();
  }
}

class _QuizAppState extends State<QuizApp> {

  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  static const ques = [
    {"questionText": "1. In India, who heads the Department of Space?",
    "answers": ['The president', 'The prime minister', 'The defence minster'],
    "correct": 'The prime minister'},
    {"questionText":"2. Who wrote Das Kapital?",
    "answers": ['Karl Marx', 'Friedrich Engels', 'Leon Trotsky'],
    "correct": 'Karl Marx'},
    {"questionText": "3. Which pop album is the best selling of all time",
    "answers": ['Thriller by Michael Jackson', 'The Beatles by The Beatles', 'Purple Rain by Prince and The Revolution'],
    "correct": 'Thriller by Michael Jackson'},
    {"questionText": "4. Who directed the epic historical drama Schindler\'s List in 1993?",
    "answers": ['James Cameron', 'Martin Scorsese', 'Steven Spielberg'],
    "correct": 'Steven Spielberg'},
    {"questionText": "5. Which boxer inflicted Muhammad Ali\'s first defeat in professional boxing?",
    "answers": ['Rocky Marciano', 'Joe Frazier', 'Joe Louis'],
    "correct": 'Joe Frazier'}
    ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quizzy'),
        ),
        body: Column(
          children: [
            Question(ques[_questionIndex]['questionText']),
            ...(ques[_questionIndex]['answers'] as List<String>).map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}
