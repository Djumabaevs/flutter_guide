import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {}

class MyAppState extends State {
  var questionIndex = 0;

  void answerQuestion() {
    questionIndex = questionIndex + 1;
    print('Answer chosen!');
  }

  @override
  Widget build(BuildContext context) {
    var questions = ['What is your name?', 'How are you?'];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first app'),
        ),
        body: Column(
          children: [
            Text(questions[questionIndex]),
            RaisedButton(
              child: Text(questions.elementAt(0)),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text('answer 2'),
              onPressed: () => print('answer 2 chosen'),
            ),
            RaisedButton(
              child: Text('answer 3'),
              onPressed: () {
                //...
                print('answer 3 chosen');
              },
            ),
          ],
        ),
      ),
    );
  }
}
