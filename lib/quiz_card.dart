import 'package:flutter/material.dart';
import 'services/get_quiz.dart';

class QuizCard extends StatefulWidget {
  @override
  _QuizCardState createState() => _QuizCardState();
}

class _QuizCardState extends State<QuizCard> {
  bool _selectedButton = false;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            elevation: 10,
            child: Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: MediaQuery.of(context).size.height * 0.82,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        width: MediaQuery.of(context).size.width * 0.8,
                        height: MediaQuery.of(context).size.height * 0.56,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          elevation: 10,
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.8,
                        height: MediaQuery.of(context).size.height * 0.2,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Card(
                              color:
                                  _selectedButton ? Colors.white : Colors.green,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              elevation: 10,
                              child: InkWell(
                                borderRadius: BorderRadius.circular(15.0),
                                onTap: () {
                                  setState(() {
                                    _selectedButton = false;
                                  });
                                },
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.35,
                                  height:
                                      MediaQuery.of(context).size.height * 0.1,
                                  child: Center(
                                    child: Text(
                                      'False',
                                      style: TextStyle(
                                          fontFamily: '', fontSize: 40),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Card(
                              color:
                                  _selectedButton ? Colors.green : Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              elevation: 10,
                              child: InkWell(
                                borderRadius: BorderRadius.circular(15.0),
                                onTap: () {
                                  setState(() {
                                    _selectedButton = true;
                                  });
                                },
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.35,
                                  height:
                                      MediaQuery.of(context).size.height * 0.1,
                                  child: Center(
                                    child: Text(
                                      'True',
                                      style: TextStyle(
                                          fontFamily: '', fontSize: 40),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
