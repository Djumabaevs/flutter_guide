import 'package:flutter/material.dart';
import './question.dart';
import 'answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    //TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
    });

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
            Question(questions[questionIndex]),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
            RaisedButton(
              child: Text('answer 3'),
              onPressed: () {
                //...x
                print('answer 3 chosen');
              },
            ),
          ],
        ),
      ),
    );
  }
}
