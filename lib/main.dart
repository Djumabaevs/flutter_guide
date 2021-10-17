import 'package:flutter/material.dart';
import './question.dart';
import 'answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  final questions = const [
    {
      'questionText': 'What is your name?',
      'answers': ['Blue', 'Red', 'Yellow']
    },
    {
      'questionText': 'What is your fav dish?',
      'answers': ['Plov', 'Manty', 'Fish']
    }
  ];

  @override
  State<StatefulWidget> createState() {
    //TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print('Answer chosen!');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first app'),
        ),
        body: Column(
          children: [
            Question(questions[_questionIndex]['questionText'] as String),
            ...(questions[_questionIndex]['answers'] as List<String>)
                .map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList(),
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
