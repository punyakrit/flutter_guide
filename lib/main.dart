// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_guide/question.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
  return _MyAppState();
  }
}


class _MyAppState extends State<MyApp>{
  var _questionIndex = 0;

  void _answerQuestion() {

  setState(() {
        _questionIndex = _questionIndex + 1;
  });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var question = [
      "what is your favourite color?",
      "What is your favoutite animal"
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Question(question[_questionIndex]),
            ElevatedButton(onPressed: _answerQuestion,
             child: Text("Answer 1"),
             style: ButtonStyle(
             backgroundColor: MaterialStateProperty.all(Colors.red),
             ),
             ),
            ElevatedButton(
                onPressed: (() => print("Answer 2 choosen")),
                child: Text("Answer 2")),
            ElevatedButton(
                onPressed: (() => print("Answer 3 choosen")),
                child: Text("Answer 3"))
          ],
        ),
      ),
    );
  }
}

