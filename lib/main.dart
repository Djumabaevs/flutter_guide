import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  void answerQuestion() {
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
            Text('This is a question!'),
            RaisedButton(
              child: Text('answer 1'),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text('answer 2'),
              onPressed: null,
            ),
            RaisedButton(
              child: Text('answer 3'),
              onPressed: null,
            ),
          ],
        ),
      ),
    );
  }
}
