import 'package:flutter/material.dart';
import 'package:flutter_quiz/quiz.dart';
import 'package:flutter_quiz/result.dart';

void main() => runApp(QuizApp());

class QuizApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _QuizAppState();
  }
}

class _QuizAppState extends State<QuizApp> {
  static const _ques = [
    {
      "questionText": "1. In India, who heads the Department of Space?",
      "answers": [
        {'text': 'The president', 'score': 0},
        {'text': 'The prime minister', 'score': 1},
        {'text': 'The defence minster', 'score': 0}
      ],
    },
    {
      "questionText": "2. Who wrote Das Kapital?",
      "answers": [
        {'text': 'Karl Marx', 'score': 1},
        {'text': 'Friedrich Engels', 'score': 0},
        {'text': 'Leon Trotsky', 'score': 0}
      ],
    },
    {
      "questionText": "3. Which pop album is the best selling of all time",
      "answers": [
        {'text': 'Thriller by Michael Jackson', 'score': 1},
        {'text': 'The Beatles by The Beatles', 'score': 0},
        {'text': 'Purple Rain by Prince and The Revolution', 'score': 0}
      ],
    },
    {
      "questionText":
          "4. Who directed the epic historical drama Schindler\'s List in 1993?",
      "answers": [
        {'text': 'James Cameron', 'score': 0},
        {'text': 'Martin Scorsese', 'score': 0},
        {'text': 'Steven Spielberg', 'score': 1}
      ],
    },
    {
      "questionText":
          "5. Which boxer inflicted Muhammad Ali\'s first defeat in professional boxing?",
      "answers": [
        {'text': 'Rocky Marciano', 'score': 0},
        {'text': 'Joe Frazier', 'score': 1},
        {'text': 'Joe Louis', 'score': 0}
      ],
    }
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore = _totalScore + score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  void _reset() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text('Quizzy'),
          ),
          body: _questionIndex < _ques.length
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  questionIndex: _questionIndex,
                  ques: _ques,
                )
              : Result(_totalScore,_reset)),
    );
  }
}
