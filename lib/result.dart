import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;

  Result(this.totalScore);

  String get finalScore {
    return "Your score is $totalScore/5";
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        finalScore,
        style: TextStyle(
          fontSize: 36,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
