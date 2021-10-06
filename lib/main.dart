import 'package:flutter/material.dart';
import './question.dart';

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

  void answerQuestion() {
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
            RaisedButton(
              child: Text(questions.elementAt(0)),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text('answer 2', style: TextStyle(fontSize: 28)),
              onPressed: () => print('answer 2 chosen'),
            ),
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
