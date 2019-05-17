import 'package:flutter/material.dart';

class ScorePage extends StatefulWidget {
  @override
  _ScorePageState createState() => _ScorePageState();
}

class _ScorePageState extends State<ScorePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text('Score')),
      color: Colors.blueAccent,
    );
  }
}
