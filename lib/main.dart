// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

var question = [
  'what is your favourite color?',
  "What is your favoutite animal"
];

class MyApp extends StatelessWidget {
  void answerQuestion() {
    print("Answer chosen");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Text("The question"),
            ElevatedButton(onPressed: answerQuestion, child: Text("Answer 1") ),
            ElevatedButton(onPressed: (() => print("Answer 2 choosen")), child: Text("Answer 2")),
            ElevatedButton(onPressed: (() => print("Answer 3 choosen")), child: Text("Answer 3"))
          ],
        ),
      ),
    );
  }
}
