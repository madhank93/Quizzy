import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  String question;
  Question(question) {
    this.question=question;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text(question);
  }
}