// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget{
 @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

//State is a generic class

class MyAppState extends State<MyApp>{
  int letIndex = 0;

    // var questions = ['what\'s your favorite color?', 
    //                     'what\'s your favirot animal',];

  var questions = [
    {
      'questionText' : "What is your favorite color?",
      'answers' : ['Black', 'Red', 'Green', 'White']
    },
    {
      'questionText' : "what's your favirot animal",
      'answers' : ['Lion', 'Rabbit', 'Tiger', 'Parrot']
    },
    {
      'questionText': "Who is your favirot instructor",
      'answers': ['Max', 'addi','Dev','Som']
    }
  ];

  void answerQuestion(){
    print('Answer chosen');
    print(letIndex);
    setState(() {
      letIndex = letIndex >= (questions.length - 1) ? 0 : letIndex +1;
    });
    
  }


  @override
  Widget build(BuildContext context){
    // return MaterialApp(home: Text('Hello India'),);

    //Question list
    
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("First APP Title"),
        ),
        // body: Text("Flutter App Body"),
        body: Column(
          children: [
            Question(questions[letIndex]['questionText']),
            ...(questions[letIndex]['answers'] as List<String>).map((answer){
              return Answer(answerQuestion,answer);
            }).toList(),
           
            // Answer(answerQuestion),
            // Answer(answerQuestion),
            // Answer(answerQuestion)
            /*
            RaisedButton(
              child: Text('Answer 1'),
              onPressed:answerQuestion,
            ), 
            
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: answerQuestion,
            ),
            */
          ],
        ),
      ),
      
    );
  }
}


//Example of stateless widget
/*
class MyApp extends StatelessWidget{

  void answerQuestion(){
    print('Answer chosen');
  }


  @override
  Widget build(BuildContext context){
    // return MaterialApp(home: Text('Hello India'),);

    //Question list
    int letIndex = 0;
    var questions = ['what\'s your favorite color?', 
                      'what\'s your favirot animal',];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("First APP Title"),
        ),
        // body: Text("Flutter App Body"),
        body: Column(
          children: [
            Text(questions.elementAt(letIndex)),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed:()=> answerQuestion,
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: answerQuestion,
            )
          ],
        ),
      ),
      
    );
  }
}*/