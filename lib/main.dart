import 'package:flutter/material.dart';
import 'package:quizzy/quiz_page.dart';
import 'score_page.dart';
import 'settings.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentindex = 0;
  Widget callPage(int i) {
    switch (i) {
      case 0:
        return QuizPage();
        break;
      case 1:
        return ScorePage();
        break;
      case 2:
        return SettingsPage();
        break;
      default:
        return QuizPage();
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Colors.blueAccent,
          items: <Widget>[
            Icon(Icons.question_answer, size: 30),
            Icon(Icons.score, size: 30),
            Icon(Icons.settings, size: 30),
          ],
          onTap: (index) {
            setState(() {
              _currentindex = index;
            });
          },
        ),
        body: callPage(_currentindex),
      ),
    );
  }
}
