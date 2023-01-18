// ignore_for_file: empty_constructor_bodies, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
    width: double.infinity,
    margin: EdgeInsets.all(10),
    child :Text(questionText, 
    style: 
    TextStyle(fontSize: 28) ,
    textAlign: TextAlign.center,
  
    ),
    );
  }
}