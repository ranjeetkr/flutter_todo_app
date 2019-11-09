import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function SelectHandler;
  final String answerText;

  Answer(this.SelectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(5),
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(answerText),
        onPressed: SelectHandler  ,
      ),      
    );
  }
}