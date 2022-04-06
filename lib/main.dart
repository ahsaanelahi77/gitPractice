import 'package:flutter/material.dart';

import 'question.dart';
import 'answer.dart';
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final questionsListMap = const [
    {
      'Question': 'What is your name ?',
      'answers': ['Ahsaan', 'Zeshan', 'Tara', 'Umaima']
    },
    {
      'Question': 'What is your favourite animal ?',
      'answers': ['Dog', 'Cat', 'Pigeon', 'Parrot']
    },
    {
      'Question': 'What is your favourite food ?',
      'answers': ['Chai', 'Pizza', 'Biryani', 'Lays']
    },
  ];
  var _questionIndex = 0;
  void _answerQuestion() {
    // if (_questionIndex < questionsListMap.length) {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    // }

    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('That is my practice app!'),
        ),
        body: _questionIndex < questionsListMap.length
            ? Column(children: [
                if (_questionIndex < questionsListMap.length)
                  Question(
                    questionsListMap[_questionIndex]['Question'] as String,
                  ),

                //...(three dot) is spread operator
                ...(questionsListMap[_questionIndex]['answers'] as List<String>)
                    .map((answer) {
                  return Answer(_answerQuestion, answer);
                }).toList()
              ])
            : Center(
                child: Text('Well done janu"!'),
              ),
      ),
    );
  }
}
