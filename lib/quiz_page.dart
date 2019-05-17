import 'package:flutter/material.dart';
import 'quiz_card.dart';

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueAccent,
      child: Stack(
        children: <Widget>[QuizCard()],
      ),
    );
  }
}
