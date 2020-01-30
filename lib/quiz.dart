import 'package:flutter/material.dart';

import 'answer.dart';
import 'question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> ques;
  final int questionIndex;
  final Function answerQuestion;

  Quiz({this.answerQuestion, this.ques, this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(ques[questionIndex]['questionText']),
        ...(ques[questionIndex]['answers'] as List<Map<String,Object>>).map((answer) {
          return Answer( () => answerQuestion(answer['score']), answer['text']);
        }).toList()
      ],
    );
  }
}
