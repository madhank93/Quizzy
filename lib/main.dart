import 'package:flutter/material.dart';

void main() => runApp(QuizApp());

class QuizApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return QuizAppState();
  }
}

class QuizAppState extends State<QuizApp> {

  var questionIndex = 0;

  void answerQuestion() {
    questionIndex = questionIndex + 1;
  }


  List<String> ques = ["1. In India, who heads the Department of Space?",
  "2. Who wrote Das Kapital?",
  "3. Which pop album is the best selling of all time?",
  "4. Who directed the epic historical drama Schindler\'s List in 1993?",
  "5. Which boxer inflicted Muhammad Ali\'s first defeat in professional boxing?"];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quizzy'),
        ),
        body: Column(
          children: [
            Text(ques[questionIndex]),
            RaisedButton(
              child: Text("Answer 1"),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text("Answer 2"),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text("Answer 3"),
              onPressed: answerQuestion,
            )
          ],
        ),
      ),
    );
  }
}
